using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace RealProjectB2.Student
{
    public partial class studentContact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                divMsg.Visible = false;
                LoadGridData();
                contactButton.Text = "Save";
            }
            txtContactNumber.Attributes.Add("OnKeyUp","chkNumber('"+ txtContactNumber.ClientID+"')");
        }

        protected void contactButton_Click(object sender, EventArgs e)
        {
            int result = 0;
            if (contactButton.Text == "Save")
            {
                result = Savecontact();
                if (result > 0)
                {
                    LoadGridData();
                    MessageBox.Show("Save");
                }
                else
                {
                    MessageBox.Show("Save Fail");
                }
            }
            else
            {
                result = updatecontact();
                if (result > 0)
                {
                    LoadGridData();
                    MessageBox.Show("Update");
                }
                else
                {
                    MessageBox.Show("Update Fail");
                }
            }
        }
        private void ClearFieldValue()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtSocial.Text = "";
            txtContactNumber.Text = "";



        }
        
        private int Savecontact()
        {

            int result = 0;
            string Constr = @"Data Source = DESKTOP-TCQ1BJ8; Initial Catalog = DOTNETP1;  Integrated Security=true";
            SqlConnection cnn;
            cnn = new SqlConnection(Constr);
            //SqlCommand cmd;
            string sqlquery = @"insert into Info_Contact (
                                  Name,
                                  ContactEmail,
                                  Social,
                                  cntContact,
                                  EntryBy,
                                  ContactEntryDate
                                   )
                                  Values(
                                  @Name,
                                  @ContactEmail,
                                   @Social,
                                   @cntContact,
                                   @EntryBy,
                                   GetDate()
                                   )";
            using (SqlCommand cmd = new SqlCommand(sqlquery, cnn))
            {
                cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("@ContactEmail", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@Social", txtSocial.Text.Trim());
                cmd.Parameters.AddWithValue("@cntContact", txtContactNumber.Text.Trim());
                cmd.Parameters.AddWithValue("@EntryBy", Session["UserId"]);
                cnn.Open();
                result = cmd.ExecuteNonQuery();
                cnn.Close();
            }


            return result;

        }
        private int updatecontact()
        {

            int result = 0;
            string Constr = @"Data Source = DESKTOP-TCQ1BJ8; Initial Catalog = DOTNETP1;  Integrated Security=true";
            SqlConnection cnn;
            cnn = new SqlConnection(Constr);
            //SqlCommand cmd;
            string sqlquery = @"Update Info_Contact set
                                   Name=@Name,
                                 ContactEmail=@ContactEmail,
                                  Social=@Social,
                                  cntContact =@cntContact,
                                  EntryBy =@EntryBy,
                                  ContactEntryDate=getdate()
                                  where Cid=" + hdnEditCid.Value + "";
            using (SqlCommand cmd = new SqlCommand(sqlquery, cnn))
            {
                cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("@ContactEmail", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@Social", txtSocial.Text.Trim());
                cmd.Parameters.AddWithValue("@cntContact", txtContactNumber.Text.Trim());
                
                cmd.Parameters.AddWithValue("@EntryBy", Session["UserId"]);
                cmd.Parameters.AddWithValue("@Cid", hdnEditCid.Value);
                cnn.Open();
                result = cmd.ExecuteNonQuery();
                cnn.Close();
            }


            return result;

        }
        private bool CheckFieldValue()
        {
            bool IsReq = false;
            if (txtName.Text == "")
            {
                lblMsg.Text = "Name can't be empty";
                txtName.Focus();
                IsReq = true;
            }
            else if (txtEmail.Text == "")
            {
                lblMsg.Text = "Email can't be empty";
                txtEmail.Focus();
                IsReq = true;
            }
            else if (txtContactNumber.Text == "")
            {
                lblMsg.Text = "Email can't be empty";
                txtContactNumber.Focus();
                IsReq = true;
            }
            else if (txtSocial.Text == "")
            {
                lblMsg.Text = "Social can't be empty";
                txtSocial.Focus();
                IsReq = true;
            }
           
            

            if (IsReq == true)
            {
                divMsg.Visible = true;
            }
            else
            {
                divMsg.Visible = false;
            }
            return IsReq;
        }
        private void LoadGridData()
        {

            DataTable dt = new DataTable();
            string Constr = @"Data Source = DESKTOP-TCQ1BJ8; Initial Catalog = DOTNETP1;  Integrated Security=true";
            SqlConnection cnn;
            cnn = new SqlConnection(Constr);
            string query = @"select 
 Cid,Name,
 cntContact, ContactEmail,Social,(FirstName+ ' '+isnull(MiddleName,'')+' '+LastName) as Entryby,ContactEntryDate
 from Info_Contact 
 inner join User_Registraion on Info_Contact.EntryBy= User_Registraion.UserId";
            using (SqlCommand cmd = new SqlCommand(query, cnn))
            {
                SqlDataAdapter sda = new SqlDataAdapter();
                DataSet ds = new DataSet();
                cnn.Open();
                sda.SelectCommand = cmd;
                sda.Fill(ds);
                dt = ds.Tables[0];
            }
            if (dt.Rows.Count > 0)
            {
                gvcontact.DataSource = dt;
                gvcontact.DataBind();
            }
            else
            {
                gvcontact.DataSource = null;
                gvcontact.DataBind();
            }
        }
        protected void gvcontact_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "editC")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                HiddenField hdnCid = (HiddenField)gvcontact.Rows[rowIndex].Cells[0].FindControl("hdnCid");

                LoadControl(int.Parse(hdnCid.Value));
            }
        }
        private void LoadControl(int cid)
        {
            DataTable dt = new DataTable();
            string Constr = @"Data Source = DESKTOP-TCQ1BJ8; Initial Catalog = DOTNETP1;  Integrated Security=true";
            SqlConnection cnn;
            cnn = new SqlConnection(Constr);
            // SqlCommand cmd;
            string query = @"Select Name,cntContact,ContactEmail,Social,Cid 
                From Info_Contact  where Cid=" + cid + "";
            using (SqlCommand cmd = new SqlCommand(query, cnn))
            {
                DataSet ds = new DataSet();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                sda.Fill(ds);
                dt = ds.Tables[0];
            }
            if (dt.Rows.Count > 0)
            {

                txtName.Text = dt.Rows[0]["Name"].ToString();
                txtContactNumber.Text = dt.Rows[0]["cntContact"].ToString();
                txtEmail.Text = dt.Rows[0]["ContactEmail"].ToString();
                txtSocial.Text = dt.Rows[0]["Social"].ToString();
                hdnEditCid.Value = dt.Rows[0]["Cid"].ToString();
                contactButton.Text = "Update";
            }
        }
        
    }

    
}
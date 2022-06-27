using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RealProjectB2.Auth
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                divMsg.Visible = false;

            }
        }

        #region Method
        protected void btnreg_Click(object sender, EventArgs e)
        {
            if (CheckFieldValue() == false)
            {
                int result = Savereg();
                if (result > 0)
                {
                    ClearFieldValue();
                    divMsg.Visible = true;
                    lblMsg.Text = "save successful";
                }
                else
                {
                    divMsg.Visible = true;
                    lblMsg.Text = "save fail";
                }
            }

        }
        private void ClearFieldValue()
        {
            txtuserName.Text = "";
            txtfirstName.Text = "";
            txtmiddleName.Text = "";
            txtlastName.Text = "";
            gender.SelectedValue = "0";
            religion.SelectedValue = "0"; 
            DOB.Text = "";
            txtnationality.Text = "";
            Address.Text = "";
            Email.Text = "";
            ContactNumber.Text = "";
            fluserimg.PostedFile.InputStream.Dispose();
            
        }
        private int Savereg()
        {

            int result = 0;
            string Constr = @"Data Source = DESKTOP-S1DUBLF; Initial Catalog = DOTNETP1;  Integrated Security=true";
            SqlConnection cnn;
            cnn = new SqlConnection(Constr);
            //SqlCommand cmd;
            string sqlquery = @"insert into 
                             User_Registraion(
                             UserName,
                             FirstName,
                             MiddleName,
                             LastName,
                             Gender,
                             DateOfBirth,
                             Email,
                             ContactNo,
                             Address,
                             Nationality,
                             ReligionId,
                             EntryDate,
                             UserImage
                             )
                             values(
                             @UserName,@FirstName,@MiddleName,
                             @LastName,
                             @Gender,
                             @DateOfBirth,
                             @Email,
                             @ContactNo,
                             @Address,
                             @Nationality,
                             @ReligionId,
                             GETDATE(),
                             @UserImage
                             )";
            using (SqlCommand cmd = new SqlCommand(sqlquery, cnn))
            {
                cmd.Parameters.AddWithValue("@UserName", txtuserName.Text.Trim());
                cmd.Parameters.AddWithValue("@FirstName", txtfirstName.Text.Trim());
                cmd.Parameters.AddWithValue("@MiddleName", txtmiddleName.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", txtlastName.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", gender.SelectedValue);
                cmd.Parameters.AddWithValue("@DateOfBirth", DOB.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", Email.Text.Trim());
                cmd.Parameters.AddWithValue("@ContactNo", ContactNumber.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", Address.Text.Trim());
                cmd.Parameters.AddWithValue("@Nationality", txtnationality.Text.Trim());
                cmd.Parameters.AddWithValue("@ReligionId", religion.SelectedValue);
                //cmd.Parameters.AddWithValue("@EntryDate", txtuserName);
                cmd.Parameters.AddWithValue("@UserImage", "userimg.png");
                cnn.Open();
                result = cmd.ExecuteNonQuery();
                cnn.Close();
            }


            return result;

        }
        private bool CheckFieldValue()
        {
            bool IsReq = false;
            if (txtfirstName.Text == "")
            {
                lblMsg.Text = "Username can't be empty";
                txtfirstName.Focus();
                IsReq = true;
            }
            else if (txtlastName.Text == "")
            {
                lblMsg.Text = "Password can't be empty";
                txtlastName.Focus();
                IsReq = true;
            }
            else if (gender.SelectedValue == "0")
            {
                lblMsg.Text = "select gender";

                IsReq = true;
            }
            else if (Email.Text == "")
            {
                lblMsg.Text = "Email can't be empty";
                Email.Focus();
                IsReq = true;
            }
            else if (DOB.Text == "")
            {
                lblMsg.Text = "Date of birth can't be empty";
                DOB.Focus();
                IsReq = true;
            }
            else if (religion.SelectedValue == "0")
            {
                lblMsg.Text = "select religion";

                IsReq = true;
            }
            else if (ContactNumber.Text == "")
            {
                lblMsg.Text = "select gender";
                ContactNumber.Focus();
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
        #endregion
    }
}
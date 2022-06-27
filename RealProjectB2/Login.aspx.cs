using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RealProjectB2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                divMsg.Visible = false;
                RememberMe();
            }
            //else
            //{
            //    divMsg.Visible = true;
            //    lblMsg.Text = "Username or password can't be empty";
            //}

        }
        private void RememberMe()
        {
            if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
            {
                txtUsername.Text = Request.Cookies["UserName"].Value;
                txtPassword.Attributes["Value"] = Request.Cookies["Password"].Value;
            }
            else
            {
                txtUsername.Text = "";
                txtPassword.Attributes["Value"] = "";
            }
        }


        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
        private DataTable LoginCheck(string UserName, string UserPassword)
        {
            DataTable dt = new DataTable();
            string Constr = @"Data Source = DESKTOP-TCQ1BJ8; Initial Catalog = DOTNETP1;  Integrated Security=true";
            SqlConnection cnn;
            cnn = new SqlConnection(Constr);
            SqlCommand cmd;
            string sqlStr = @"SELECT UserAuth.UserId,
             (ur.FirstName+ ' ' +ISNULL(ur.MiddleName,'') +' '+ ur.LastName) as FullName,
             [UserImage]
             FROM UserAuth inner join
             User_Registraion ur on UserAuth.UserId = ur.UserId
             WHERE IsActive = 1 and UserAuth.UserName ='"+UserName+"' and UserPassword = '"+UserPassword+"'";
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            try
            {
                cnn.Open();
                cmd = new SqlCommand(sqlStr, cnn);
                sda.SelectCommand = cmd;
                sda.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {

                throw;
            }
            return dt;

        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            //if (txtUsername.Text !="" && txtPassword.Text!="")
            //{
            //    if(txtUsername.Text == "admin" && txtPassword.Text == "123")
            //    {
            //        Response.Redirect("~/Dashboard.aspx");
            //    }

            //}
            if (CheckFieldValue() == false)
            {
                DataTable dtLogininfo = new DataTable();
                dtLogininfo = LoginCheck(txtUsername.Text.Trim(), txtPassword.Text);
                if (dtLogininfo.Rows.Count>0)
                {
                    Session["UserId"] = dtLogininfo.Rows[0]["UserId"].ToString();
                    Session["UserName"] = dtLogininfo.Rows[0]["FullName"].ToString();
                    Session["UserImg"] = dtLogininfo.Rows[0]["UserImage"].ToString();
                    CreateCookie();
                    Response.Redirect("~/Dashboard.aspx");
                }
                else
                {
                    lblMsg.Text = "Incorrect Username or password";
                    divMsg.Visible = true;

                }
            }
        }
        private bool CheckFieldValue()
        {
            bool IsReq = false;
            if (txtUsername.Text == "")
            {
                lblMsg.Text = "Username can't be empty";
                txtUsername.Focus();
                IsReq = true;
            }
            else if (txtPassword.Text == "")
            {
                lblMsg.Text = "Password can't be empty";
                txtPassword.Focus();
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
        private void CreateCookie()
        {
            if (cbremember.Checked)
            {

                HttpCookie auth = new HttpCookie("auth");
                auth["UserName"] = "";
                auth["Password"] = "";
                Response.Cookies.Add(auth);

                Response.Cookies["UserName"].Expires = DateTime.Now.AddMinutes(30);
                Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(30);
                Response.Cookies["UserName"].Value = txtUsername.Text.Trim();
                Response.Cookies["Password"].Value = txtPassword.Text.Trim();
            }
            else
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddMinutes(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(-1);
            }

        }
    }
}
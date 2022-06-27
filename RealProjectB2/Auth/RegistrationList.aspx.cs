using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RealProjectB2.Auth
{
    public partial class RegistrationList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGridData();
            }

        }
        private void LoadGridData()
        {
            string religion = ddlreligion.SelectedValue;
            string gender = ddlgender.SelectedValue;
            DataTable dt = new DataTable();
            string Constr = @"Data Source = DESKTOP-TCQ1BJ8; Initial Catalog = DOTNETP1;  Integrated Security=true";
            SqlConnection cnn;
            cnn = new SqlConnection(Constr);
            string query = @"select 
            UserId,UserName,(FirstName+ ' '+isnull(MiddleName,'')+''+LastName) as Fullname,
            (case when Gender=1 then 'Male' when Gender=2 then 'Female' else 'Others' end) as Gender,
            DateOfBirth, ContactNo,ReligionName
            from User_Registraion 
            inner join Conf_Religion on User_Registraion.ReligionId = Conf_Religion.ReligionId
            where (User_Registraion.ReligionId = " + religion+" OR "+religion+ @"=0)
            AND (Gender= "+gender+" or "+gender+"=0)";
            using(SqlCommand cmd = new SqlCommand(query,cnn))
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
                gvRegList.DataSource = dt;
                gvRegList.DataBind();
            }
            else
            {
                gvRegList.DataSource =null;
                gvRegList.DataBind();
            }
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            LoadGridData();
        }
    }
}
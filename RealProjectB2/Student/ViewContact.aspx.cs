using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RealProjectB2.Student
{
    public partial class ViewContact : System.Web.UI.Page
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
            
            DataTable dt = new DataTable();
            string Constr = @"Data Source = DESKTOP-TCQ1BJ8; Initial Catalog = DOTNETP1;  Integrated Security=true";
            SqlConnection cnn;
            cnn = new SqlConnection(Constr);
            string query = @"select 
 id,Name,
 ContactNo, ContactEmail,Social,(FirstName+ ' '+isnull(MiddleName,'')+' '+LastName) as Entryby,ContactEntryDate
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
    }
}
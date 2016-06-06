using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace LibraryManagementSytem
{
    public partial class StudentProfileUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("LoginPanelUI.aspx");
            }
            HtmlGenericControl home = (HtmlGenericControl)this.Page.Master.FindControl("profileIconSelectedId") as HtmlGenericControl;
            home.Attributes.Add("class", "active");
            string id=Session["Id"].ToString();
            string connectionString = ConfigurationManager.ConnectionStrings["connectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);

            string sql = "select * from studentInformation where studentId="+id;
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            //int row = cmd.ExecuteScalar();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    studentIdTextBox.Text = id;
                    studentNameTextBox.Text=reader["name"].ToString();
                    emailTextBox.Text = reader["email"].ToString();
                    phoneTextBox.Text = reader["phone"].ToString();
                    addressTextBox.Text = reader["address"].ToString();
                    cgpaTextBox.Text = reader["cgpa"].ToString();
                    departmentTextBox.Text = reader["department"].ToString();
                    dobTextBox.Text = reader["dateOfBirth"].ToString();

                }
            }
        }
    }
}
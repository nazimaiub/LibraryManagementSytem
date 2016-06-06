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
    public partial class StudentListUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("LoginPanelUI.aspx");
            }
            HtmlGenericControl home = (HtmlGenericControl)this.Page.Master.FindControl("studentIconSelectedId") as HtmlGenericControl;
            home.Attributes.Add("class", "active");

            string cs = ConfigurationManager.ConnectionStrings["connectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string sql = "select * from studentInformation order by studentId";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            studentListGridView.DataSource = reader;
            studentListGridView.DataBind();
            if (studentListGridView.Rows.Count > 0)
            {
                studentListGridView.HeaderRow.Cells[0].Text = "ID";
                studentListGridView.HeaderRow.Cells[1].Text = "Student Name";
                studentListGridView.HeaderRow.Cells[2].Text = "Email";
                studentListGridView.HeaderRow.Cells[3].Text = "Phone";
                studentListGridView.HeaderRow.Cells[4].Text = "Address";
                studentListGridView.HeaderRow.Cells[5].Text = "Cgpa";
                studentListGridView.HeaderRow.Cells[6].Text = "Department";
                studentListGridView.HeaderRow.Cells[7].Text = "Date Of Birth";
            }
            con.Close();
        }
    }
}
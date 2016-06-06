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
    public partial class StudentBookListViewUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("LoginPanelUI.aspx");
            }

            HtmlGenericControl home = (HtmlGenericControl)this.Page.Master.FindControl("bookIconSelectedId") as HtmlGenericControl;
            home.Attributes.Add("class", "active");

            string cs = ConfigurationManager.ConnectionStrings["connectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string sql = "select * from books";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            bookListGridView.DataSource = reader;
            bookListGridView.DataBind();
            if (bookListGridView.Rows.Count > 0)
            {
                bookListGridView.HeaderRow.Cells[0].Text = "ID";
                bookListGridView.HeaderRow.Cells[1].Text = "Book Name";
                bookListGridView.HeaderRow.Cells[2].Text = "Author Name";
                bookListGridView.HeaderRow.Cells[3].Text = "Edition";
                bookListGridView.HeaderRow.Cells[4].Text = "Total Copy";
                bookListGridView.HeaderRow.Cells[5].Text = "Available Copy";
            }
            con.Close();
        }
    }
}
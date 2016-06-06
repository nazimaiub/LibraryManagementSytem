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
    public partial class SearchBookAdminUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if(Session["id"]==null)
            {
                Response.Redirect("LoginPanelUI.aspx");
            }
            HtmlGenericControl home = (HtmlGenericControl)this.Page.Master.FindControl("searchIconSelectedId") as HtmlGenericControl;
            home.Attributes.Add("class", "active");
            
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["connectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            if (searchTypeDropDownList.SelectedValue=="title")
            {
                string sql = "select * from books where bookName like @btitle";
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.Parameters.AddWithValue("@btitle", searchTextBox.Text + "%");
                searchResultGridView.DataSource = cmd.ExecuteReader();
                searchResultGridView.DataBind();
                //GridView1.Visible = true;
                con.Close();

            }
            if(searchTypeDropDownList.SelectedValue=="student")
            {
                string sql = "select s.name,i.studentId,i.bookId,b.bookName,i.issueDate from studentInformation s,issueBooks i,books b where s.studentId=i.studentId and i.bookId=b.id and i.status='borrow' and s.studentId like @student";
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.Parameters.AddWithValue("@student", searchTextBox.Text + "%");
                searchResultGridView.DataSource = cmd.ExecuteReader();
                searchResultGridView.DataBind();
                //GridView1.Visible = true;
                con.Close();

            }
            if(searchTypeDropDownList.SelectedValue=="author")
            {
                string sql = "select * from books where author like @btitle";
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.Parameters.AddWithValue("@btitle", searchTextBox.Text + "%");
                searchResultGridView.DataSource = cmd.ExecuteReader();
                searchResultGridView.DataBind();
                //GridView1.Visible = true;
                con.Close();
            }
            con.Close();
            searchTextBox.Text = "";
            searchTypeDropDownList.SelectedIndex = -1;
        }
       
    }
}
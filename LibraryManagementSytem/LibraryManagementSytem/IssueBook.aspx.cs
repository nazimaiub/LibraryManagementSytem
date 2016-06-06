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
    public partial class IssueBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("LoginPanelUI.aspx");
            }
            HtmlGenericControl home = (HtmlGenericControl)this.Page.Master.FindControl("issueBookIconSelectedId") as HtmlGenericControl;
            home.Attributes.Add("class", "active");
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["connectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            if (searchTypeDropDownList.SelectedValue == "title")
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
            if (searchTypeDropDownList.SelectedValue == "student")
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
            if (searchTypeDropDownList.SelectedValue == "author")
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

        protected void IssueButton_Click(object sender, EventArgs e)
        {
            DateTime issueDate = DateTime.Now;
            DateTime returnDate = issueDate.AddDays(7);

            string cs = ConfigurationManager.ConnectionStrings["Connectionstring1"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string sql1 = "select count(studentId) from issueBooks where studentId=@studentId and bookId=@bookId and status ='borrow' ";
            SqlCommand cmd1 = new SqlCommand(sql1, con);
            cmd1.Parameters.AddWithValue("@studentId", studentIdTextBox.Text);
            cmd1.Parameters.AddWithValue("@bookId", bookIdTextBox.Text);
            con.Open();
            int count = (int)cmd1.ExecuteScalar();
            if (count == 0)
            {
                string sql = "insert into issueBooks values(@studentId,@bookId,'" + issueDate + "','" + returnDate + "','borrow');update books set availableCopy=availableCopy-1 where id=@bookId";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@studentId", studentIdTextBox.Text);
                cmd.Parameters.AddWithValue("@bookId", bookIdTextBox.Text);
                //con.Open();
                cmd.ExecuteNonQuery();
                msgLabel.ForeColor = System.Drawing.Color.Green;

                msgLabel.Text = "Data Saved";

            }
            else
            {
                msgLabel.ForeColor = System.Drawing.Color.Red;
                msgLabel.Text = studentIdTextBox.Text + " have already borrowed this book";
            }
            con.Close();
        }
        public bool IsStudentExist(string studentId)
        {
            bool result = true;
            string cs = ConfigurationManager.ConnectionStrings["connectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);

            string sql = "select * from studentInformation where studentId=@studentId";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.Parameters.AddWithValue("@studentId",studentId);
            
            con.Close();

            return result;
        }
    }

}

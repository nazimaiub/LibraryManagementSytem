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
    public partial class AddBookUIAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("LoginPanelUI.aspx");
            }
            HtmlGenericControl home = (HtmlGenericControl)this.Page.Master.FindControl("addBookIconSelectedId") as HtmlGenericControl;
            home.Attributes.Add("class", "active");
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string sql1 = "select * from books where bookname=@bname and author=@author and edition=@edition";
            SqlCommand cmd = new SqlCommand(sql1, con);
            cmd.Parameters.AddWithValue("@bname", bookNameTextBox.Text);
            cmd.Parameters.AddWithValue("@author", authorTextBox.Text);
            cmd.Parameters.AddWithValue("@edition", editionTextBox.Text);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {

                SqlConnection con1 = new SqlConnection(cs);
                string sql = "update books set totalcopy+=@totalCopy,availablecopy+=@totalcopy";
                SqlCommand cmd1 = new SqlCommand(sql, con1);
                cmd1.Parameters.AddWithValue("@totalcopy", noOfCopyTextBox.Text);
                con1.Open();
                cmd1.ExecuteNonQuery();
                con1.Close();

            }

            else
            {
                SqlConnection con1 = new SqlConnection(cs);

                string sql = "insert into books values(@bname,@author,@edition,@totalcopy,@totalcopy)";

                SqlCommand cmd2 = new SqlCommand(sql, con1);
                cmd2.Parameters.AddWithValue("@bname", bookNameTextBox.Text);
                cmd2.Parameters.AddWithValue("@author", authorTextBox.Text);
                cmd2.Parameters.AddWithValue("@edition", editionTextBox.Text);
                cmd2.Parameters.AddWithValue("@totalcopy", noOfCopyTextBox.Text);
                con1.Open();
                cmd2.ExecuteNonQuery();
                con1.Close();
                
            }
            con.Close();
            msgLabel.Text = "Book Inserted Successfully";
            msgLabel.ForeColor = System.Drawing.Color.Green;
            clearTextBoxes();
;
        }
        private void clearTextBoxes()
        {
            bookNameTextBox.Text = "";
            authorTextBox.Text = "";
            editionTextBox.Text = "";
            noOfCopyTextBox.Text = "";
        }
    }
}
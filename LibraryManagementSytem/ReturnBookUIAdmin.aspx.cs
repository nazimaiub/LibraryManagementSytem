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
    public partial class ReturnBookUIAdmin : System.Web.UI.Page
    {
        DateTime returnDate;
        int fine;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("LoginPanelUI.aspx");
            }
            HtmlGenericControl home = (HtmlGenericControl)this.Page.Master.FindControl("returnBookIconSelectedId") as HtmlGenericControl;
            home.Attributes.Add("class", "active");

        }

        protected void returnButton_Click(object sender, EventArgs e)
        {
            
            
            DateTime today = DateTime.Now;

            string cs = ConfigurationManager.ConnectionStrings["Connectionstring1"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string sql2 = "select returnDate from issueBooks where studentId =@studentId and bookId=@bookId";
            SqlCommand cmd2 = new SqlCommand(sql2, con);

            cmd2.Parameters.AddWithValue("@studentId", studentIdTextBox.Text);
            cmd2.Parameters.AddWithValue("@bookId", bookIdTextBox.Text);
            con.Open();
            SqlDataReader reader = cmd2.ExecuteReader();
            //SqlDataAdapter da = new SqlDataAdapter();
            //DataSet ds = new DataSet();
            //da.Fill(ds,"issue");
            //DataTable dt = ds.Tables["issue"];

            if (reader.Read())
            {
                 returnDate = Convert.ToDateTime(reader["returnDate"]);
            }
            con.Close();

            string sql = "select count(issueId) from issueBooks where studentId=@studentId and bookId=@bookId and status='borrow'";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.Parameters.AddWithValue("@studentId", studentIdTextBox.Text);
            cmd.Parameters.AddWithValue("@bookId", bookIdTextBox.Text);
            int row = (int)cmd.ExecuteScalar();
            if (row == 1)
            {
                if (today > returnDate)
                {

                    int extendDays = (int)(today - returnDate).TotalDays;
                    fine = (extendDays * 5);
                }


                string sql1 = "update books set availableCopy=availableCopy+1 where id=@bookId;update issueBooks set status='returned' where studentId=@studentId and bookId=@bookId;insert into fine values(@studentId,@bookId,'" + today + "'," + fine + ")";
                SqlCommand cmd1 = new SqlCommand(sql1, con);
                cmd1.Parameters.AddWithValue("@studentId", studentIdTextBox.Text);
                cmd1.Parameters.AddWithValue("@bookId", bookIdTextBox.Text);
                cmd1.ExecuteNonQuery();
                msgLabel.Text = "Book Returned Successfully";
                msgLabel.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                msgLabel.Text = "This student Dont Issued this Book";
                msgLabel.ForeColor = System.Drawing.Color.Red;
            }

            con.Close();
        }
    }
}
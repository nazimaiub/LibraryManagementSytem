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
    public partial class StudentBookBorrowListUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlGenericControl home = (HtmlGenericControl)this.Page.Master.FindControl("borrowingHistoryIconSelectedId") as HtmlGenericControl;
            home.Attributes.Add("class", "active");
            if (Session["id"] == null)
            {
                Response.Redirect("LoginPanelUI.aspx");
            }
           
            else
            {
                string cs = ConfigurationManager.ConnectionStrings["connectionString1"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                string sql = "select b.bookName,i.issueDate,i.returnDate,f.returnedOn,f.fine from books b,issueBooks i,fine f where i.studentId=@studentId and b.id=i.bookId and i.studentId=f.studentId and i.bookId=f.bookId";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@studentId", Session["id"]);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    bookBorrowListGridView.DataSource = reader;
                    bookBorrowListGridView.DataBind();
                    bookBorrowListGridView.HeaderRow.Cells[0].Text = "Book Name";
                    bookBorrowListGridView.HeaderRow.Cells[1].Text = "Issue Date";
                    bookBorrowListGridView.HeaderRow.Cells[2].Text = "Last Return Date";
                    bookBorrowListGridView.HeaderRow.Cells[3].Text = "Returned On";
                    bookBorrowListGridView.HeaderRow.Cells[4].Text = "Fine";
                    //bookBorrowListGridView.HeaderRow.Cells[5].Text = "Available Copy";
                }
                else
                {
                    msgLabel.Text = "You Have no Borrowing History";

                }
                con.Close();
            }
        }
    }
}
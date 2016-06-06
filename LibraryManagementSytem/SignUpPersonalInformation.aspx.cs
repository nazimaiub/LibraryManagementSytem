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
    public partial class SignUpAcademicInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["id"] == null)
            {
                Response.Redirect("LoginPanelUI.aspx");
            }
            if (!IsPostBack)
            {
                ViewState["SessionId"] = Session["id"].ToString();
                ViewState["SessionName"] = Session["Name"].ToString();
            }
            HtmlGenericControl home = (HtmlGenericControl)this.Page.Master.FindControl("studentRegistrationSelectedId") as HtmlGenericControl;
            home.Attributes.Add("class", "active");
            //if (Page.PreviousPage == null)
            //{
            //    Response.Redirect("LoginPanelUI.aspx");
            //}
            


        }
        private void clearData()
        {
            emailTextBox.Text = "";
            addressTextBox.Text = "";
            dobTextBox.Text = "";
            phoneTextBox.Text = "";
        }
        protected void signUpButton_Click(object sender, EventArgs e)
        {
            Session["Email"] = emailTextBox.Text;
            Session["Phone"] = phoneTextBox.Text;
            Session["Address"] = addressTextBox.Text;
            Session["Dob"] =Convert.ToDateTime(dobTextBox.Text);
            if (SaveStudentInfo() == true)
            {
                msgLabel.Text = "Registration Successfull";
                msgLabel.ForeColor = System.Drawing.Color.Green;
                Session.Clear();
                Session["id"] = ViewState["SessionId"];
                Session["Name"] = ViewState["SessionName"];
                clearData();
               
            }
            else
            {
                msgLabel.Text = "Registration Unsuccessfull";
                msgLabel.ForeColor = System.Drawing.Color.Red;
            }
           // emailTextBox.Text = Session["id"].ToString();
        }
        public bool SaveStudentInfo()
        {
            bool result = false;

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string sql = "insert into studentInformation values(@studentId,@studentName,@email,@phone,@address,@cgpa,@department,@dob);insert into loginData values(@studentId,@studentName,@password,'student')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@studentId", Session["StudentId"]);
            cmd.Parameters.AddWithValue("@email", Session["Email"]);
            cmd.Parameters.AddWithValue("@phone", Session["Phone"]);
            cmd.Parameters.AddWithValue("@address", Session["Address"]);
            cmd.Parameters.AddWithValue("@dob", Session["Dob"]);
            cmd.Parameters.AddWithValue("@password", Session["Password"]);
            cmd.Parameters.AddWithValue("@cgpa", Session["Cgpa"]);
            cmd.Parameters.AddWithValue("@department", Session["Department"]);
            cmd.Parameters.AddWithValue("@studentName", Session["StudentName"]);
            con.Open();
            int row = cmd.ExecuteNonQuery();
            if (row > 0)
            {
                result = true;
            }
            con.Close();
            return result;
        }

    }
}
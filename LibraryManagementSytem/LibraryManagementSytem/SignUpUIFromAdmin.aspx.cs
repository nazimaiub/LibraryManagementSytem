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
    public partial class SignUpUIFromAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("LoginPanelUI.aspx");
            }
            StudentidErrorLabel.Text = "";
            HtmlGenericControl home = (HtmlGenericControl)this.Page.Master.FindControl("studentRegistrationSelectedId") as HtmlGenericControl;
            home.Attributes.Add("class", "active");

        }
        public bool IsIdExist(string studentId)
        {
            bool result = false;
            string cs = ConfigurationManager.ConnectionStrings["Connectionstring1"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string sql1 = "select count(studentId) from studentInformation where studentId=@studentId";
            SqlCommand cmd1 = new SqlCommand(sql1, con);
            cmd1.Parameters.AddWithValue("@studentId", studentId);
            con.Open();
            int count = (int)cmd1.ExecuteScalar();
            if (count > 0)
            {
                result = true;
            }
            return result;
        }

        protected void studentIdTextBox_TextChanged(object sender, EventArgs e)
        {
            if (IsIdExist(studentIdTextBox.Text) == true)
            {

                studentIdDiv.Attributes.Add("class", "form-group has-error has-feedback");
                //studentIdTextBox.CssClass = "form-control";
                studentIdSpan.Attributes.Add("class", "glyphicon glyphicon-remove form-control-feedback");
                studentIdVerifyMsg.InnerHtml = "This ID Already Exist";
                studentIdVerifyMsg.Attributes.Add("class", "help-block");
                

            }
            else
            {
                if (studentIdTextBox.Text.Length > 4)
                {
                    studentIdDiv.Attributes.Add("class", "form-group has-success has-feedback");
                    // studentIdTextBox.CssClass = "form-control";
                    studentIdSpan.Attributes.Add("class", "glyphicon glyphicon-ok form-control-feedback");
                    studentIdVerifyMsg.InnerHtml = "";
                    studentIdVerifyMsg.Attributes.Add("class", "help-block");
                    nextButton.Enabled = true;
                }
                else
                {
                    StudentidErrorLabel.Text = "Please Insert 5 digit Id Number";
                }
                nextButton.Enabled = true;
            }
        }

        protected void nextButton_Click(object sender, EventArgs e)
        {
            Session["StudentId"] = studentIdTextBox.Text;
            Session["StudentName"] = studentNameTextBox.Text;
            Session["Department"] = departmentDropDownList.SelectedValue;
            Session["Cgpa"] = cgpaTextBox.Text;
            Session["Password"] = PasswordTextBox.Text;
            Response.Redirect("SignUpPersonalInformation.aspx");
        }

       
        
    }
}
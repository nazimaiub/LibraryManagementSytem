using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSytem
{
    public partial class LoginPanelUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            string id = idTextBox.Text;
            string password = passwordTextBox.Text;
            string connectionString = ConfigurationManager.ConnectionStrings["connectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);

            string sql = "select * from loginData where id=@id and password=@password";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();

            cmd.Parameters.AddWithValue("@id", idTextBox.Text);
            cmd.Parameters.AddWithValue("@Password", passwordTextBox.Text);
            SqlDataReader reader = cmd.ExecuteReader();
            //int row = cmd.ExecuteScalar();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Session["id"] = reader["id"];
                    Session["Name"] = reader["name"];
                    Session["Type"] = reader["type"];
                    //Response.Redirect("Webform2.aspx");
                }

                if (Session["Type"].ToString() == "admin")
                {
                    Response.Redirect("BooklistViewUIAdmin.aspx");
                    //Response.Redirect("LoginUI.aspx");
                }
                else if (Session["Type"].ToString() == "student")
                {
                    Response.Redirect("StudentProfileUI.aspx");
                    //Response.Redirect("LoginUI.aspx");
                }

            }
            else
            {

                msgLabel.Text = "Id Or Password dont match";

            }
            con.Close();


        }
    }
}
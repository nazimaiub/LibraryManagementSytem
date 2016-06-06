using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSytem
{
    public partial class AdminMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
            if(Session["Name"]!=null)
            {
                welcomeUser.InnerText = "..." + "Hi " + Session["Name"].ToString() + "...";
            }
        }
        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("LoginPanelUI.aspx");
        }
    }
}
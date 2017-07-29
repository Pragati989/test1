using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TOLLRATE
{
    public partial class HomePage : System.Web.UI.Page
    {
        /// <summary>
        /// To check that whether the user is logged  in or not.
        /// If user is logged in, then show the logout button,otherwise show for the login button.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                Panel2.Visible = true;
                Panel1.Visible = false;
            }
            if (Session["userid"] == null)
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
        }


        /// <summary>
        /// On click event of signup linkbutton,redirect to the signup page.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }


        /// <summary>
        /// On click event of login linkbutton,redirect to the login page.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void LinkButton8_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }


        /// <summary>
        /// On click event of logout linkbutton,clear the session and redirect the user to login page..
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }


    }
}

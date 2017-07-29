using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TOLLRATE
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// first,on click event of Button1,it is checked that whether the user has already logged in or not.
        /// If yes,then he get the message for the same.
        /// if no,then the credentials will be checked.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {

            Label3.Text = " ";

            if (Session["userid"] == null)
            {
                string connectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString();
                string storedProc = "spq_CheckUserAuth";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                    connection.Open();
                    SqlCommand command = new SqlCommand(storedProc, connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add(new SqlParameter("@UserId", TextBox1.Text));
                    command.Parameters.Add(new SqlParameter("@Password", TextBox2.Text));
                    command.CommandTimeout = 5;

                    using (var dr = command.ExecuteReader())
                    {
                        while (dr.HasRows)
                        {
                            if (Session["toll_name"] != null)
                            {
                                Session["userid"] = TextBox1.Text;
                                Response.Redirect("payment.aspx");

                            }
                            else
                            {
                                Session["userid"] = TextBox1.Text;
                                Response.Redirect("SearchToll.aspx");
                            }
                        }
                        Label3.Text = "Invalid Id or Password!!!!";
                    }
                }
            }
            else
            {
                Label3.Text = "YOU ARE ALREADY LOGGED IN!!!!";
            }
        }
        


    }

}
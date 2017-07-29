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
    public partial class SearchToll : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        /// <summary>
        /// For this button click,searching of tolls will occur.
        /// For the entered values of state and NH,all the corresponding tolls will be shown in the dropdownlist.
        /// If there exists no toll for the entries,then the error message will be shown.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            Label4.Text = "";
            string connectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString();
            string storedProc = "tollsearch";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                connection.Open();
                SqlCommand command = new SqlCommand(storedProc, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@state", TextBox1.Text));
                command.Parameters.Add(new SqlParameter("@nh", TextBox2.Text));
                command.CommandTimeout = 5;

                using (var dr = command.ExecuteReader())
                {
                         if (dr.Read())
                    {
                        Panel2.Visible = true;

                        TextBox1.Enabled = false;
                        TextBox2.Enabled = false;

                        DropDownList1.Items.Clear();
                        DropDownList1.Items.Add(new ListItem(dr[2].ToString()));

                        while (dr.Read())
                        {
                            DropDownList1.Items.Add(new ListItem(dr[2].ToString()));
                        }
                    }

                    else
                    {
                        Label4.Text = "No Such Toll Exists!! ";
                    }
                }
            }
        }


        /// <summary>
        /// the list showing the tolls will get clear.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            DropDownList1.Items.Clear();
        }



        /// <summary>
        /// the list showing the tolls will get clear.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            DropDownList1.Items.Clear();
        }



        /// <summary>
        /// On the click event of price button,session for the tollname will be stored,
        /// followed by the redirection to price page. 
        /// This session is used for the retrieval of prices.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            
            Session["toll_name"] = DropDownList1.SelectedValue;

            Response.Redirect("Price.aspx");
        }


        /// <summary>
        ///On the click event of payment button,it will be checked that whether the user is logged in or not.
        ///If user is logged in ,then he will be redirected to payment page.
        ///If not,then he will be asked to login first.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void LinkButton8_Click1(object sender, EventArgs e)
        {
            Session["toll_name"] = DropDownList1.SelectedValue;
            if (Session["userid"]!=null)
            {
                
                Response.Redirect("payment.aspx");
               
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            
        }
    }
}
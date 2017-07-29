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
    public partial class payment : System.Web.UI.Page
    {
        /// <summary>
        /// Here,for the payment user needs to be logged into the system.
        /// If yes,then he will be redirected to the payment page.
        /// If no,then he will be asked to login first.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox2.Text = Session["toll_name"].ToString();
            TextBox2.Enabled = false;
            
            
            String sii = Session["userid"].ToString();

            string connectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString();
            string storedProc = "vehicle_type";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                connection.Open();
                SqlCommand command = new SqlCommand(storedProc, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@vehicle_type", sii));
                
                command.CommandTimeout = 5;



                using (var dr = command.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        TextBox3.Text = dr[4].ToString();
                        TextBox3.Enabled = false;

                    }
                }
             }
               

                
                string storedProc1 = "oneprice";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                connection.Open();
                SqlCommand command = new SqlCommand(storedProc1, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@toll_name", TextBox2.Text));
                command.Parameters.Add(new SqlParameter("@vehicle_type", TextBox3.Text));
                command.CommandTimeout = 5;



                using (var drr = command.ExecuteReader())
                {
                    while (drr.Read())
                    {
                        TextBox1.Text = drr[2].ToString();
                        TextBox1.Enabled = false;

                    }
                }

            }


        }



        /// <summary>
        /// On the click event of this image button,a session is created for the price to be paid.
        /// Followed by the redirection to paypalwebsite for the payment.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["pay"] = TextBox1.Text;
            Response.Redirect("PayPalProcessing.aspx");
        }
     

    }
}
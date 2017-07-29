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
    public partial class Signup : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
             Label9.Text = " ";
            Label10.Text = "";
        }


        /// <summary>
        /// For signup,it is checked that whether the userid-PRIMARY KEY(the user has entered) is unique or not .
        /// If yes,Error message will be shown.
        /// if no,then there will be entry in  the table named signup and the user will register succesfully .
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        { 
            string name = TextBox3.Text.ToString();
            string connectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString();
            string storedProc = "checkuser";
            string storedProc1 = "insert";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                connection.Open();
                SqlCommand command = new SqlCommand(storedProc, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@name", name));

                command.CommandTimeout = 5;

                using (var dr1 = command.ExecuteReader())
                {

                    if (dr1.HasRows)
                    {
                        Label10.Text = "user name  already exist";
                        TextBox3.Text = "";
                        dr1.Close();


                    }

                    else
                    {
                        dr1.Close();
                        Label10.Text = "";
                        SqlCommand command1 = new SqlCommand(storedProc1, connection);
                        command1.CommandType = CommandType.StoredProcedure;
                        command1.Parameters.Add(new SqlParameter("@firstname", TextBox1.Text));
                        command1.Parameters.Add(new SqlParameter("@lastname", TextBox2.Text));
                        command1.Parameters.Add(new SqlParameter("@userid", TextBox3.Text));
                        command1.Parameters.Add(new SqlParameter("@emailid", TextBox8.Text));
                        command1.Parameters.Add(new SqlParameter("@vehicletype", DropDownList1.SelectedValue));
                        command1.Parameters.Add(new SqlParameter("@vehicleno", TextBox7.Text));
                        command1.Parameters.Add(new SqlParameter("@password", TextBox4.Text));

                        command1.CommandTimeout = 5;
                        command1.ExecuteNonQuery();
                        Label9.Text = "Account is created";
                    }
                }


            }

        }
    }
}
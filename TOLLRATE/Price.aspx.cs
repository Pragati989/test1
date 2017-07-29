using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace TOLLRATE
{
    public partial class Price : System.Web.UI.Page
    {
        /// <summary>
        ///The name of the toll (for which the user has searched for)will be retrieved through session.
        ///And corresponding prices will be displayed using the gridview.  
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            String si = Session["toll_name"].ToString();


            string connectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString();
            string storedProc = "tollprice";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                connection.Open();
                SqlCommand command = new SqlCommand(storedProc, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@toll_n", si));
                command.CommandTimeout = 5;



                SqlDataAdapter da = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();



            }
        }

    }
}
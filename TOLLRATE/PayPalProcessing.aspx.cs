using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TOLLRATE
{
    public partial class PayPalProcessing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           String si= Session["pay"].ToString();
        }
    }
}
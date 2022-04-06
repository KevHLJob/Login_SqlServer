using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_SqlServer
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserLog"] != null)
            {
                string UserLog = Session["UserLog"].ToString();
                lbBienvenida.Text = "Bienvenido/a " + UserLog;
            }
            else
            {
                Response.Redirect("Log.aspx");
            }
        }
        protected void BtnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("UserLog");
            Response.Redirect("Log.aspx");
        }
    }
}
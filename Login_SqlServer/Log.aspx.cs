using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
namespace Login_SqlServer
{
    public partial class Log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string patron = "TestLogin";
        protected void BtnIngresar_Click (object sender, EventArgs e)
        {
            //Papi, mago21
            //Database TestLogin, tbEmployee
            string connetion = ConfigurationManager.ConnectionStrings["conection"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(connetion);
            SqlCommand cmd = new SqlCommand("SP_ValidateUsuario", sqlcon)
            {
                CommandType = CommandType.StoredProcedure
            };
            //open conection
            cmd.Connection.Open();
            //parameters of stored procedure
            cmd.Parameters.Add("@usuario", SqlDbType.VarChar, 50).Value = txtusuario.Text;
            cmd.Parameters.Add("@contrasena", SqlDbType.VarChar, 50).Value = txtcontra.Text;
            cmd.Parameters.Add("@patron", SqlDbType.VarChar, 50).Value = patron;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //user session
                Session["Userlog"] = txtusuario.Text;
                Response.Redirect("Index.aspx");
               
            }
            else
            {
                lbError.Text = "Error al ingresar Usuario o contraseña";
            }
           
            cmd.Connection.Close();
        }
    }
}
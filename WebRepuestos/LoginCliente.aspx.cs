using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio.Repuestos.Clases;

namespace WebRepuestos
{
    public partial class LoginCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
              Negocio.Repuestos.Clases.Cliente c = new Negocio.Repuestos.Clases.Cliente();




            if (c.ValidarUsuario(Login1.UserName, Login1.Password))
            {

                System.Web.HttpContext.Current.Session["rut"] = Login1.UserName;
                Response.Redirect("Clientee/Cotizacion.aspx");


            }


        }
    }
}
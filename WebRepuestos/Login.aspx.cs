using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio.Repuestos.Clases;

namespace WebRepuestos
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            //Usuario u = new Usuario();
            //u.ValidarUsuario(txtMail.Text, u.Hash(txtPass.Text));

            //if (u.Id_perfil ==4)
            //{
            //    Response.Redirect("Mecanico/AgregarCliente.aspx");
            //}
            //else if (u.Id_perfil ==1)
            //{
            //    Response.Redirect("Administrador/AgregarUsuario.aspx");
            //}
            //else
            //{
            //    Response.Redirect("GerenteGeneral/ListarServicios.aspx");
            //}





            //if (u.ValidarUsuario(txtMail.Text, u.Hash(txtPass.Text)))
            //{
            //    // Response.Redirect("Administrador/AgregarUsuario.aspx");

            //    if (u.Administrador())
            //    {
            //        Response.Redirect("Administrador/AgregarUsuario.aspx");
            //    }
            //    else if (u.Mecanico())
            //    {
            //        Response.Redirect("Mecanico/AgregarCliente.aspx");
            //    }
            //    else if (u.Gerente())
            //    {
            //        Response.Redirect("Gerente/AgregarRepuesto");
            //    }
            //    else
            //    {
            //        Response.Redirect("GerenteGeneral/ListarServicios.aspx");
            //    }

                //Response.Redirect("Mecanico/AgregarAuto.aspx");
                //Response.Redirect("Administrador/AgregarUsuario.aspx");



            }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

            Usuario u = new Usuario();
            u.ValidarUsuario(Login1.UserName, u.Hash(Login1.Password));

            if (u.Id_perfil == 4)
            {
                Response.Redirect("Mecanico/Inicio.aspx");
            }
            else if (u.Id_perfil == 1)
            {
                Response.Redirect("Administrador/AgregarCliente.aspx");
            }
            else if (u.Id_perfil == 2)
            {
                Response.Redirect("GerenteGeneral/Inicio.aspx");
            }
            else if (u.Id_perfil==3)
            {
                Response.Redirect("Gerente/Inicio.aspx");
            }
            else if(u.Id_perfil ==5)
            {
                Response.Redirect("GestorInventario/Inicio.aspx");
            }
            else
            {
                
            }
           
           



        }
        //else /*if((u.ValidarUsuario(txtMail.Text, u.Hash(txtPass.Text)) && u.Mecanico()))*/
        //{
        //    ////Response.Redirect("Inicio.aspx");
        //    lbMensaje.Text = "Error";
        //   // Response.Redirect("Mecanico/AgregarCliente.aspx");
        //}
        //else
        //{
        //    lbMensaje.Text = "Error";
        //}


    }
    }

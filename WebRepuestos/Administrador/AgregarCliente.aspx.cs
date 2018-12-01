using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio.Repuestos.Clases;
using System.Diagnostics;


namespace WebRepuestos.Mecanico
{
    public partial class AgregarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                Negocio.Repuestos.RestService rs = new Negocio.Repuestos.RestService();


               


                Negocio.Repuestos.Clases.Cliente c = new Negocio.Repuestos.Clases.Cliente();
               
                    c.Rut = txtRut.Text;
                    c.Dv = char.Parse(txtDv.Text);
                    c.Correo = txtCorreo.Text;
                    c.Nombre = txtNombre.Text;
                    c.Apellido = txtApellido.Text;
                    c.Telefono = int.Parse(txtTelefono.Text);
                    c.Direccion = txtDireccion.Text;

                if (!c.Existe())
                {
                    if (c.Crear())
                    {
                        //lbMensaje.Text = "Usuario creado";
                        lbMensaje.Text = 
                        rs.nuevoCliente(txtNombre.Text, txtCorreo.Text, c.Pass(txtRut.Text));
                        


                    }
                    else
                    {
                        lbMensaje.Text = "Error";
                    }
                }
                else
                {
                    lbMensaje.Text = "rut existe";
                }


              

            

            }
        }

        protected void txtRut_TextChanged(object sender, EventArgs e)
        {
            Negocio.Repuestos.Clases.Cliente c = new Negocio.Repuestos.Clases.Cliente();

            txtDv.Text = c.Digito(txtRut.Text);
        }
    }
}
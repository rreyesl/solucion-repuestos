using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio.Repuestos.Clases;
using Negocio.Repuestos.Colecciones;

namespace WebRepuestos.GerenteGeneral
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                
                Sucursal s = new Sucursal();

                s.Nombre = txtNombre.Text;
                s.Direccion = txtDireccion.Text;

                if (s.Crear())
                {
                    lbMensaje.Text = "Sucursal Agregada";
                }
                else
                {
                    lbMensaje.Text = "Error";
                }
            }
        }
    }
}
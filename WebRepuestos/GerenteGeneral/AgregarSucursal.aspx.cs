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
            mensaje1.Visible = false;
            mensaje2.Visible = false;
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
                    mensaje2.Visible = false;

                    lbMensaje1.Text = "Sucursal Agregada";
                    mensaje1.Visible = true;
                }
                else
                {
                    mensaje1.Visible = false;
                    lbMensaje2.Text = "Error";
                    mensaje2.Visible = true;
                }
            }
        }
    }
}
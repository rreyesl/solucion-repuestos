using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio.Repuestos.Clases;
using Negocio.Repuestos.Colecciones;

namespace WebRepuestos.GestorInventario
{
    public partial class AgregarMarca : System.Web.UI.Page
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
                //Modelo m = new Modelo();
                Marca m = new Marca();

                m.Nombre = txtMarca.Text;

                if (m.Crear())


                {
                    mensaje2.Visible = false;

                    lbMensaje1.Text = "Marca Agregada";
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
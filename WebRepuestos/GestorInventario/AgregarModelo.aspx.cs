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
    public partial class AgregarModelo : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                MarcaCollection mc = new MarcaCollection();
                ddlMarca.DataSource = mc.ReadAll();
                ddlMarca.DataValueField = "Id";
                ddlMarca.DataTextField = "Nombre";
                ddlMarca.DataBind();



            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Modelo m = new Modelo();
                Repuesto_Modelo rm = new Repuesto_Modelo();

                m.Nombre = txtNombre.Text;
                m.Descripcion = txtDescripcion.Text;
                m.Anio = int.Parse(txtAnio.Text);
                m.Id_marca = int.Parse(ddlMarca.SelectedValue);
             



                if (m.Crear())
                {
                   
                    lbMensaje.Text = "Modelo creado";
                }
                else
                {
                    lbMensaje.Text = "Error";
                }
            }
        }
    }
}
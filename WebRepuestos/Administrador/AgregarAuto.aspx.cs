using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio.Repuestos.Clases;
using Negocio.Repuestos.Colecciones;

namespace WebRepuestos.Mecanico
{
    public partial class AgregarAuto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ModeloCollection mc = new ModeloCollection();
                ClienteCollection cl = new ClienteCollection();

                ddlModelo.DataSource = mc.ReadAll();
                ddlModelo.DataValueField = "Id";
                ddlModelo.DataTextField = "Nombre";
                ddlModelo.DataBind();

                ddlCliente.DataSource = cl.ReadAll();
                ddlCliente.DataValueField = "Id";
                ddlCliente.DataTextField = "Correo";
                ddlCliente.DataBind();





            }

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Auto a = new Auto();

                a.Patente = txtPatente.Text;
                a.Km = int.Parse(txtKm.Text);
                a.Nro_motor = txtMotor.Text;
                a.Id_modelo = int.Parse(ddlModelo.SelectedValue);
                a.Nro_chasis = txtChasis.Text;
                a.Id_cliente = int.Parse(ddlCliente.SelectedValue);


                if (!a.Existe())
                {
                    if (a.Crear())
                    {
                        lbMensaje.Text = "Auto creado";
                    }
                    else
                    {
                        lbMensaje.Text = "Error";
                    }
                }
                else
                {
                    lbMensaje.Text = "Patente ya existe";
                }

            }
        }
    }
}
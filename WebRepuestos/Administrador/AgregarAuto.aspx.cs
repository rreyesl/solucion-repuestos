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


                mensaje1.Visible = false;
                mensaje2.Visible = false;



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

                        mensaje2.Visible = false;

                        lbMensaje1.Text = "Auto creado";
                        mensaje1.Visible = true;
                       // Response.Redirect("AgregarServicio.aspx");
                    }
                    else
                    {
                        mensaje1.Visible = false;

                        lbMensaje2.Text = "Error";
                        mensaje2.Visible = true;
                    }
                }
                else
                {
                    mensaje1.Visible = false;
                    lbMensaje2.Text = "Patente ya existe";
                    mensaje2.Visible = true;
                }

            }
        }

        protected void txtPatente_TextChanged(object sender, EventArgs e)
        {
            Auto a = new Auto();

            a.Patente = txtPatente.Text;

            if (a.Existe())
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "Patente existe";
                mensaje2.Visible = true;

            }
            else
            {
                mensaje2.Visible = false;
                mensaje1.Visible = false;
            }
        }
    }
}
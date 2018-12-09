using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio.Repuestos.Clases;
using Negocio.Repuestos.Colecciones;

namespace WebRepuestos.Administrador
{
    public partial class BuscarAuto : System.Web.UI.Page
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

    

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

            Auto a = new Auto();

            a.Patente = txtPatente.Text;

            if (a.Existe())
            {

                a.BuscarPatente(a.Patente);

                txtKm.Text = a.Km.ToString();
                txtMotor.Text = a.Nro_motor;
                txtChasis.Text = a.Nro_chasis;
                ddlCliente.SelectedValue = a.Id_cliente.ToString();
                ddlModelo.SelectedValue = a.Id_modelo.ToString();


                mensaje2.Visible = false;
                lbMensaje1.Text = "patente encontrado";
                mensaje1.Visible = true;

            }
            else
            {
                
                lbMensaje2.Text = "patente no existe";
                mensaje2.Visible = true;
                mensaje1.Visible = false;
            }

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Auto a = new Auto();
            Servicio s = new Servicio();
            Detalle_Servicio dt = new Detalle_Servicio();
            Reporte r = new Reporte();
            Img_Reporte ir = new Img_Reporte();
            a.Patente = txtPatente.Text;

            ir.EliminarAutoReporteIMG(a.Patente);
            r.EliminarAutoReporte(a.Patente);
            dt.EliminarAutoDetalle_Serivio(a.Patente);
            s.EliminarAutoServicio(a.Patente);




            if (a.Eliminar(txtPatente.Text))
            {
                lbMensaje1.Text = "Auto eliminado";
                mensaje1.Visible = true;
                mensaje2.Visible = false;
                
            }
            else
            {
                lbMensaje2.Text = "error";
                mensaje1.Visible = false;
                mensaje2.Visible = true;
               
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            Auto a = new Auto();

            //a.Patente = txtPatente.Text;
            //a.Km = int.Parse(txtKm.Text);
            //a.Nro_chasis = txtChasis.Text;
            //a.Nro_motor = txtMotor.Text;
            //a.Id_cliente = int.Parse(ddlCliente.SelectedValue);
            //a.Id_modelo = int.Parse(ddlModelo.SelectedValue);



            if (a.Modificar(txtPatente.Text, int.Parse(txtKm.Text), int.Parse(ddlCliente.SelectedValue), int.Parse(ddlModelo.SelectedValue), txtMotor.Text, txtChasis.Text))
            {


                lbMensaje1.Text = "auto modificado";
                mensaje1.Visible = true;
                mensaje2.Visible = false;





            }
            else
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "error";
                mensaje2.Visible = true;

            }
        }

        protected void txtPatente_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
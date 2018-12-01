using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio.Repuestos.Clases;
using Negocio.Repuestos.Colecciones;

namespace WebRepuestos.Cliente
{
    public partial class Cotizacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbC.Visible = false;
            lbCotizacion.Visible = false;
            btnAceptar.Visible = false;
            btnRechazar.Visible = false;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Servicio s = new Servicio();
            Auto a = new Auto();
            Detalle_Servicio ds = new Detalle_Servicio();

            a.Patente = txtPatente.Text;
            s.BuscarPatente2(a.Patente);
            System.Web.HttpContext.Current.Session["idauto"] = s.Id_auto;




        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {

        }

        protected void btnRechazar_Click(object sender, EventArgs e)
        {

        }

        protected void gvServicios_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbC.Visible = true;
            lbCotizacion.Visible = true;
           // lbCotizacion.Visible = false;
            btnAceptar.Visible = true;
            btnRechazar.Visible = true;

            GridViewRow gr = gvServicios.SelectedRow;
            lbCotizacion.Text = gr.Cells[2].Text;
      

            System.Web.HttpContext.Current.Session["idservicio"] = gr.Cells[1].Text;



        }
    }
}
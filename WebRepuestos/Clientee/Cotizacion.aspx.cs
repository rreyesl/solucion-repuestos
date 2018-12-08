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

            mensaje1.Visible = false;
            mensaje2.Visible = false;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Servicio s = new Servicio();
            Auto a = new Auto();
            Detalle_Servicio ds = new Detalle_Servicio();

            a.Patente = txtPatente.Text;
            //s.BuscarPatente2(a.Patente);
            System.Web.HttpContext.Current.Session["idauto"] = s.Id_auto;

            if (s.BuscarPatente3(a.Patente))
            {
                mensaje2.Visible = false;
                s.BuscarPatente2(a.Patente);
                lbMensaje1.Text = "Patente encontrada";
                mensaje1.Visible = true;
               

            }
            else
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "No se encontro la patente";
                mensaje2.Visible = true;
            }




        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {

         string id=   System.Web.HttpContext.Current.Session["idservicio2"] as String;
            lbMensaje.Text = System.Web.HttpContext.Current.Session["idservicio2"] as String;
            Negocio.Repuestos.Clases.Servicio s = new Servicio();

            GridViewRow gr = gvServicios.SelectedRow;
            //   lbCotizacion.Text = gr.Cells[2].Text;

            int asd = int.Parse(gr.Cells[0].Text);

            if (s.AceptarSolicitud(asd))
            {
                mensaje2.Visible = false;
                lbMensaje1.Text = "servicio aprobado";
                mensaje1.Visible = true;
            }



        }

        protected void btnRechazar_Click(object sender, EventArgs e)
        {

            string id = System.Web.HttpContext.Current.Session["idservicio2"] as String;
            lbMensaje.Text = System.Web.HttpContext.Current.Session["idservicio2"] as String;
            Negocio.Repuestos.Clases.Servicio s = new Servicio();

            GridViewRow gr = gvServicios.SelectedRow;
            //   lbCotizacion.Text = gr.Cells[2].Text;

            int asd = int.Parse(gr.Cells[0].Text);

            if (s.AceptarSolicitud(asd))
            {
                mensaje2.Visible = false;
                lbMensaje1.Text = "servicio rechazado";
                mensaje1.Visible = true;
            }


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
            System.Web.HttpContext.Current.Session["idservici2"] = gr.Cells[0].Text;



        }
    }
}
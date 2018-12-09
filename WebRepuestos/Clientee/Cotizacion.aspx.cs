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

            Negocio.Repuestos.Clases.Cliente c = new Negocio.Repuestos.Clases.Cliente();

            a.Patente = txtPatente.Text;
            s.BuscarPatente2(a.Patente);
            System.Web.HttpContext.Current.Session["idauto"] = s.Id_auto;

            string rut;
            rut = System.Web.HttpContext.Current.Session["rut"] as String;

            a = a.BuscarPatente(txtPatente.Text); 

            int id_clientee = c.BuscarIdbyRut(rut);
            lbId.Text = id_clientee.ToString();

            if (a == null)
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "No se encontro la patente";
                mensaje2.Visible = true;
                return;
            }

            if (id_clientee == a.Id_cliente)
            {
                if (s.BuscarPatente3(a.Patente))
                {
                    mensaje2.Visible = false;
                    s.BuscarPatente2(a.Patente);
                    lbMensaje1.Text = "Patente encontrada";
                    mensaje1.Visible = true;
                    gvServicios.Visible = true;

                    //


                }
                else
                {
                    mensaje1.Visible = false;
                    lbMensaje2.Text = "No se encontro la patente";
                    mensaje2.Visible = true;
                    gvServicios.Visible=  false;
                }
            } else
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "Usuario no puede acceder a esta patente";
                mensaje2.Visible = true;
                gvServicios.Visible = false;
            }
            


            




        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {

         string id=   System.Web.HttpContext.Current.Session["idservicio2"] as String;
            lbMensaje.Text = System.Web.HttpContext.Current.Session["idservicio2"] as String;
            Negocio.Repuestos.Clases.Servicio s = new Servicio();

            GridViewRow gr = gvServicios.SelectedRow;
              // lbCotizacion.Text = gr.Cells[2].Text;

            int asd = int.Parse(gr.Cells[0].Text);

      

            int se = s.BuscarServicio(asd);


            if (se ==2)
            {
                mensaje2.Visible = true;
                lbMensaje2.Text = "Esta cotizacion ya fue aprobada anteriormente";
                mensaje1.Visible = false;
            }
            else if (se == 3)
            {
                mensaje2.Visible = true;
                lbMensaje2.Text = "Esta cotizacion ya fue rechazada anteriormente";
                mensaje1.Visible = false;
            } else if (s.AceptarSolicitud(asd))
            {
                mensaje1.Visible = true;
                lbMensaje1.Text = "Cotizacion aceptada";
                mensaje2.Visible = false;
                gvServicios.DataBind();
            }
            else
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "Error insesperado";
                mensaje2.Visible = true;
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

            int se = s.BuscarServicio(asd);


            if (se == 2)
            {
                mensaje2.Visible = true;
                lbMensaje2.Text = "Esta cotizacion ya fue aprobada anteriormente";
                mensaje1.Visible = false;
            }
            else if (se == 3)
            {
                mensaje2.Visible = true;
                lbMensaje2.Text = "Esta cotizacion ya fue rechazada anteriormente";
                mensaje1.Visible = false;
            }
            else if(s.RechazarSolicitud(asd))
            {
                mensaje2.Visible = false;
                lbMensaje1.Text = "servicio rechazado";
                mensaje1.Visible = true;
                gvServicios.DataBind();
            }
            else
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "Error insesperado";
                mensaje2.Visible = true;
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
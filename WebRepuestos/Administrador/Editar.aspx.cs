using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio.Repuestos.Clases;
using Negocio.Repuestos.Colecciones;


namespace WebRepuestos.Clientee
{
    public partial class Editar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Servicio s = new Servicio();
            Auto a = new Auto();
           //etalle_Servicio ds = new Detalle_Servicio();

            a.Patente = txtPatente.Text;

            s.BuscarPatente2(a.Patente);
            //ds.BuscarPatente(a.Patente);

            System.Web.HttpContext.Current.Session["idauto"] = s.Id_auto;

            //txtIVA.Text = s.Valor_iva.ToString();

            //txtNeto.Text = s.Valor_neto.ToString();
            //txtTotal.Text = s.Valor_total.ToString();
           /// ddlAuto.SelectedIndex = s.Id_auto;

            //txtCantidad.Text = ds.Cantidad.ToString();









        }

        protected void txtNeto_TextChanged(object sender, EventArgs e)
        {
            txtIVA.Text = (int.Parse(txtNeto.Text) * 0.19).ToString();

            decimal total = Math.Round((decimal.Parse(txtNeto.Text)) + (decimal.Parse(txtIVA.Text)), 0);
            txtTotal.Text = total.ToString();

            //txtIVA.Text = total.ToString();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = gvCotizaciones.SelectedRow;
            txtTotal.Text = gr.Cells[4].Text;
            txtIVA.Text = gr.Cells[3].Text;
            txtNeto.Text = gr.Cells[2].Text;

            System.Web.HttpContext.Current.Session["idservicio"] = gr.Cells[1].Text;

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Servicio s = new Servicio();

            int id = int.Parse(System.Web.HttpContext.Current.Session["idservicio"]as String);

            if (s.Modificar(decimal.Parse(txtTotal.Text), decimal.Parse(txtIVA.Text), decimal.Parse(txtNeto.Text), id))
            {
                lbMensaje.Text = "modificado";
                gvCotizaciones.DataBind();
            }
            else
            {
                lbMensaje.Text = "error";
            }

           
        }
    }
}
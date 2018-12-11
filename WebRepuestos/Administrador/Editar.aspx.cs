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
            if (!IsPostBack)
            {
                RepuestoCollection rc = new RepuestoCollection();

                ddlRepuestos.DataSource = rc.ReadAll();
                ddlRepuestos.DataValueField = "Id";
                ddlRepuestos.DataTextField = "Descripcion";
                ddlRepuestos.DataBind();


                mensaje1.Visible = false;
                mensaje2.Visible = false;


                Repuesto r = new Repuesto();
                decimal valor = 0;

                valor = r.buscarPrecio(int.Parse(ddlRepuestos.SelectedValue));

                txtValor.Text = valor.ToString(); 
            }

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Servicio s = new Servicio();
            Auto a = new Auto();
            //etalle_Servicio ds = new Detalle_Servicio();

            


            a.Patente = txtPatente.Text;

            if (s.BuscarPatenteconservicio(a.Patente))
            {
                s.BuscarPatente2(a.Patente);
                System.Web.HttpContext.Current.Session["idauto"] = s.Id_auto;

                mensaje2.Visible = false;
                lbMensaje1.Text = "Patente encontrada";
                mensaje1.Visible = true;
            }
            else
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "Esta patente no tiene cotizacion asociada";
                mensaje2.Visible = true;
            }


            
            //ds.BuscarPatente(a.Patente);

            

            //txtIVA.Text = s.Valor_iva.ToString();

            //txtNeto.Text = s.Valor_neto.ToString();
            //txtTotal.Text = s.Valor_total.ToString();
            /// ddlAuto.SelectedIndex = s.Id_auto;

            //txtCantidad.Text = ds.Cantidad.ToString();


           // gvCotizaciones.DataBind();

          //  gvCotizaciones.Visible = true;




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



            int id = int.Parse(System.Web.HttpContext.Current.Session["idservicio"] as String);

            Servicio s = new Servicio();
            s.BuscarSolicitud(id);

            int estado = s.Id_estado;

            if (estado == 4)
            {
              //  btnAgregar.Enabled = false;
                lbMensaje.Text = "Este servicio ya fue editado";
            }
            else
            {
                //btnAgregar.Enabled = true;
            }

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Servicio s = new Servicio();

            int id = int.Parse(System.Web.HttpContext.Current.Session["idservicio"]as String);

            if (s.Modificar(decimal.Parse(txtTotal.Text), decimal.Parse(txtIVA.Text), decimal.Parse(txtNeto.Text), id))
            {
                s.EditarSolicitud(id);
                lbMensaje.Text = "modificado";

                gvCotizaciones.DataBind();
            }
            else
            {
                lbMensaje.Text = "error";
            }

           
        }

        protected void gvRepuestos_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = gvRepuestos.SelectedRow;

            Detalle_Servicio dt = new Detalle_Servicio();

            //System.Web.HttpContext.Current.Session["iddetalle"] = gr.Cells[1].Text;

            int id = int.Parse(System.Web.HttpContext.Current.Session["idservicio"] as String);

            if (dt.Eliminar(int.Parse(gr.Cells[0].Text)))
            {
                mensaje1.Visible = true;
                lbMensaje1.Text = "Repuesto Eliminado";
                mensaje2.Visible = false;
                gvRepuestos.DataBind();

                ////restar stock
                //Stock st = new Stock();
                //st.EliminarRepuestoStock(int.Parse(gr.Cells[0].Text), int.Parse(txtCantidad.Text));
                ////restar stock
                ///
                Repuesto r = new Repuesto();
                Stock st = new Stock();
                st.DevolverRepuestoStock(r.BuscarRepuestoByNombreId((gr.Cells[3].Text).ToString()), int.Parse(gr.Cells[1].Text));



            }
            else
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "error";
                mensaje2.Visible = true;
            }

            Servicio s = new Servicio();

            decimal valorNetoRep = dt.ValorNetoTotal(id);
            decimal iva = (int)(Math.Round((double)valorNetoRep * 0.19));
            decimal total = valorNetoRep + iva;

            if (s.Modificar(total,iva,valorNetoRep,id))
            {
                txtNeto.Text = valorNetoRep.ToString();
                txtIVA.Text = iva.ToString();
                txtTotal.Text = total.ToString();
                gvCotizaciones.DataBind();
            } else
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "error";
                mensaje2.Visible = true;
            }


        }

        protected void txtValor_TextChanged(object sender, EventArgs e)
        {
           


        }

        protected void ddlRepuestos_SelectedIndexChanged(object sender, EventArgs e)
        {
            Repuesto r = new Repuesto();
            decimal valor = 0;
           
            valor = r.buscarPrecio(int.Parse(ddlRepuestos.SelectedValue));

            txtValor.Text = valor.ToString();
        }

        protected void txtCantidad_TextChanged(object sender, EventArgs e)
        {
            int total = 0;

            decimal valor = int.Parse(txtValor.Text);
            int cantidad = int.Parse(txtCantidad.Text);


            total =(int)(valor *cantidad);

            txtTotalRepuesto.Text = total.ToString();


        }

        protected void btnAgregar0_Click(object sender, EventArgs e)
        {
            Servicio s = new Servicio();
            Detalle_Servicio dt = new Detalle_Servicio();

            int id = int.Parse(System.Web.HttpContext.Current.Session["idservicio"] as String);


            dt.Id_servicio = id;
            dt.Cantidad = int.Parse(txtCantidad.Text);
            dt.Total = int.Parse(txtTotalRepuesto.Text);
            dt.Id_repuesto = int.Parse(ddlRepuestos.SelectedValue);

            if (dt.Crear())
            {
                //restar stock
                Stock st = new Stock();


                st.EliminarRepuestoStock(int.Parse(ddlRepuestos.SelectedValue), int.Parse(txtCantidad.Text));
                //restar stock
                decimal valorNetoRep = dt.ValorNetoTotal(id);
                decimal iva = (int)(Math.Round((double)valorNetoRep * 0.19));
                decimal total = valorNetoRep + iva;

                if (s.Modificar(total, iva, valorNetoRep, id))
                {
                    txtNeto.Text = valorNetoRep.ToString();
                    txtIVA.Text = iva.ToString();
                    txtTotal.Text = total.ToString();
                    gvRepuestos.DataBind();
                    gvCotizaciones.DataBind();

                    mensaje2.Visible = false;
                    lbMensaje1.Text = "Repuesto agregado";
                    mensaje1.Visible = true;

                }
                else
                {
                    mensaje1.Visible = false;
                   lbMensaje2.Text = "error al calcular total";
                    mensaje2.Visible = true;
                }
            }
            else
            {
                mensaje1.Visible = false;
               lbMensaje2.Text = "error al agregar repuesto";
                mensaje2.Visible = true;

            }







        }
    }
}
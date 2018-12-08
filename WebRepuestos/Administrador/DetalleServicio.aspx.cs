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
    public partial class DetalleServicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

     
                ServicioCollection sc = new ServicioCollection();
                RepuestoCollection rc = new RepuestoCollection();
                Servicio s = new Servicio();

                ddlRepuesto.DataSource = rc.ReadAll();
                ddlRepuesto.DataValueField = "Id";
                ddlRepuesto.DataTextField = "Descripcion";
                ddlRepuesto.DataBind();

               

                ddlServicio.DataSource = sc.ReadAll();
                ddlServicio.DataValueField = "Id";
                ddlServicio.DataTextField = "Descripcion";
                ddlServicio.DataBind();

                int indexOfLastItem = ddlServicio.Items.Count - 1;

                txtTotal.Text = System.Web.HttpContext.Current.Session["total"] as String;
                txtIva.Text = System.Web.HttpContext.Current.Session["iva"] as String;
                txtNeto.Text = System.Web.HttpContext.Current.Session["neto"] as String;

                ddlRepuesto.SelectedIndex=1;
                 txtCantidad.Text = "1";
                ddlServicio.SelectedIndex = indexOfLastItem;

                mensaje1.Visible = false;
                mensaje2.Visible = false;




            }
            Detalle_Servicio dt = new Detalle_Servicio();
            Negocio.Repuestos.RestService rs = new Negocio.Repuestos.RestService();


            dt.Cantidad = int.Parse(txtCantidad.Text);
            dt.Total = int.Parse(txtTotal.Text);
            dt.Id_servicio = int.Parse(ddlServicio.SelectedValue);
            dt.Id_repuesto = int.Parse(ddlRepuesto.SelectedValue);



            //if (dt.Crear())
            //{
            //    lbMensaje.Text = "Detalle generado";

                

            //}
            //else
            //{
            //    lbMensaje.Text = "Error";
            //}







        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
           


                

                Response.Redirect("Incio.aspx");


           
        }

        protected void btnMas_Click(object sender, EventArgs e)
        {
           

                Detalle_Servicio dt = new Detalle_Servicio();

 
                dt.Cantidad = int.Parse(txtCantidad.Text);
               
                dt.Id_servicio = int.Parse(ddlServicio.SelectedValue);
                dt.Id_repuesto = int.Parse(ddlRepuesto.SelectedValue);


            Repuesto r = new Repuesto();

            r.BuscarRepuestoByNombre(ddlRepuesto.SelectedItem.ToString());

            decimal total = r.Valor_neto;

            //int neto = int.Parse(System.Web.HttpContext.Current.Session["neto"] as String);

            int cantidad = 1;

            if (txtCantidad.Text != "" || txtCantidad.Text != "0")
            {
                cantidad = int.Parse(txtCantidad.Text);
            }

            decimal totalNeto = (total * cantidad);
            dt.Total = int.Parse(totalNeto.ToString());




            Stock st = new Stock();

            if (dt.Crear())
            {
                st.EliminarRepuestoStock(int.Parse(ddlRepuesto.SelectedValue));
                mensaje2.Visible = false;
                lbMensaje1.Text = "Detalle generado";
                mensaje1.Visible = true;


                GridView1.DataBind();
            }
            else
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "Error";
                mensaje2.Visible = true;
            }





        }

        //protected void btnRechazar_Click(object sender, EventArgs e)
        //{
        //    Servicio s = new Servicio();

        //    string x = ddlServicio.SelectedItem.ToString();



        //    if (s.Eliminar(ddlServicio.SelectedItem.ToString()))
        //    {
        //        lbMensaje.Text = "Servicio eliminado";
        //    }
        //    else
        //    {
        //        lbMensaje.Text = "error";
        //    }
        //}

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Editar.aspx");
        }

        protected void ddlRepuesto_SelectedIndexChanged(object sender, EventArgs e)
        {
            Repuesto r = new Repuesto();

            r.BuscarRepuestoByNombre(ddlRepuesto.SelectedItem.ToString());

            decimal total = r.Valor_neto;

            int neto = int.Parse(System.Web.HttpContext.Current.Session["neto"] as String);

            int cantidad = 1;

            if (txtCantidad.Text != "" || txtCantidad.Text != "0")
            {
                cantidad = int.Parse(txtCantidad.Text);
            }

            decimal totalNeto = (total* cantidad) + neto;

            txtNeto.Text = totalNeto.ToString();
            txtIva.Text = Math.Round(int.Parse(totalNeto.ToString()) * 0.19).ToString();
            txtTotal.Text = Math.Round(((int.Parse(totalNeto.ToString()) * 0.19)) + int.Parse(totalNeto.ToString())).ToString();

        }

        protected void txtCantidad_TextChanged(object sender, EventArgs e)
        {
            Repuesto r = new Repuesto();

            r.BuscarRepuestoByNombre(ddlRepuesto.SelectedItem.ToString());

            decimal total = r.Valor_neto;

            int neto = int.Parse(System.Web.HttpContext.Current.Session["neto"] as String);

            int cantidad = 1;

            if (txtCantidad.Text != "" || txtCantidad.Text != "0")
            {
                cantidad = int.Parse(txtCantidad.Text);
            }

            decimal totalNeto = (total * cantidad) + neto;

            txtNeto.Text = totalNeto.ToString();
            txtIva.Text = Math.Round(int.Parse(totalNeto.ToString()) * 0.19).ToString();
            txtTotal.Text = Math.Round(((int.Parse(totalNeto.ToString()) * 0.19)) + int.Parse(totalNeto.ToString())).ToString();

        }
    }
}
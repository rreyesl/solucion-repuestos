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

                txtTotal.Text = System.Web.HttpContext.Current.Session["sessionString"] as String;
                 ddlRepuesto.SelectedIndex = (int)System.Web.HttpContext.Current.Session["sessionString2"];
                 txtCantidad.Text = System.Web.HttpContext.Current.Session["sessionString3"] as String;
                ddlServicio.SelectedIndex = indexOfLastItem;




            }
            Detalle_Servicio dt = new Detalle_Servicio();
            Negocio.Repuestos.RestService rs = new Negocio.Repuestos.RestService();


            dt.Cantidad = int.Parse(txtCantidad.Text);
            dt.Total = (int)int.Parse(txtTotal.Text);
            dt.Id_servicio = int.Parse(ddlServicio.SelectedValue);
            dt.Id_repuesto = int.Parse(ddlRepuesto.SelectedValue);



            if (dt.Crear())
            {
                lbMensaje.Text = "Detalle generado";

                

            }
            else
            {
                lbMensaje.Text = "Error";
            }







        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                Detalle_Servicio dt = new Detalle_Servicio();

                dt.Cantidad = int.Parse(txtCantidad.Text);
                dt.Total = int.Parse(txtTotal.Text);
                dt.Id_servicio = int.Parse(ddlServicio.SelectedValue);
                dt.Id_repuesto = int.Parse(ddlRepuesto.SelectedValue);

                Stock st = new Stock();

              

                if (dt.Crear())
                {
                    st.EliminarRepuestoStock(int.Parse(ddlRepuesto.SelectedValue));

                    lbMensaje.Text = "Detalle generado";
                }
                else
                {
                    lbMensaje.Text = "Error";
                }

            }
        }

        protected void btnMas_Click(object sender, EventArgs e)
        {
            ddlRepuesto.Enabled = true;
            txtCantidad.Enabled = true;
        }

        protected void btnRechazar_Click(object sender, EventArgs e)
        {
            Servicio s = new Servicio();

            string x = ddlServicio.SelectedItem.ToString();


            
            if (s.Eliminar(ddlServicio.SelectedItem.ToString()))
            {
                lbMensaje.Text = "Servicio eliminado";
            }
            else
            {
                lbMensaje.Text = "error";
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Editar.aspx");
        }
    }
}
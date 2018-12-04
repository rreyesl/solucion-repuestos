using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio.Repuestos.Clases;
using Negocio.Repuestos.Colecciones;

namespace WebRepuestos.GestorInventario
{
    public partial class AdministrarRepuestos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TipoCollection tc = new TipoCollection();
                ddlTipo.DataSource = tc.ReadAll();
                ddlTipo.DataValueField = "Id";
                ddlTipo.DataTextField = "Nombre";
                ddlTipo.DataBind();

                ModeloCollection mc = new ModeloCollection();
                ddlModelos.DataSource = mc.ReadAll();
                ddlModelos.DataValueField = "Id";
                ddlModelos.DataTextField = "Nombre";
                ddlModelos.DataBind();

              


            }

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Repuesto r = new Repuesto();
        
          

                if (r.ExisteSku(txtSku.Text))
            {
                r.BuscarSku(txtSku.Text);
                txtDescripcion.Text = r.Descripcion;
                txtValor.Text = r.Valor_neto.ToString();
                ddlModelos.SelectedValue = r.Id_modelo.ToString();
                ddlTipo.SelectedValue = r.Id_tipo.ToString();




                lbMensaje.Text = "repuesto encontrado";

            }
            else
            {
                lbMensaje.Text = "repuesto no exite";
            }



        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Repuesto r = new Repuesto();

            if (r.Modificar(txtSku.Text, txtDescripcion.Text, int.Parse(ddlTipo.SelectedValue), int.Parse(txtValor.Text), int.Parse(ddlModelos.SelectedValue)))
            {
                lbMensaje.Text = "repuesto modificado";
            }
            else
            {
                lbMensaje.Text = "error";
            }


        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Repuesto r = new Repuesto();
            Negocio.Repuestos.Clases.Detalle_Servicio d = new Detalle_Servicio();
            Negocio.Repuestos.Clases.Stock se = new Negocio.Repuestos.Clases.Stock();
            Negocio.Repuestos.Clases.Detalle_Servicio dt = new Detalle_Servicio();


            se.EliminarRepuesto2(txtSku.Text);
            d.EliminarRepuesto(txtSku.Text);
            dt.EliminarRepuesto(txtSku.Text);



            if (r.ExisteSku(txtSku.Text))
            {
                r.Eliminar(txtSku.Text);

                lbMensaje.Text = "repuesto eliminado";


            }

        }
    }
}
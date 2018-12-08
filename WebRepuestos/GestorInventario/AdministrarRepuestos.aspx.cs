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

                mensaje1.Visible = false;
                mensaje2.Visible = false;
              


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

                mensaje2.Visible = false;


                lbMensaje1.Text = "repuesto encontrado";
                mensaje1.Visible = true;

            }
            else
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "repuesto no exite";
                mensaje2.Visible = true;
            }



        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Repuesto r = new Repuesto();

            if (r.Modificar(txtSku.Text, txtDescripcion.Text, int.Parse(ddlTipo.SelectedValue), int.Parse(txtValor.Text), int.Parse(ddlModelos.SelectedValue)))
            {
                mensaje2.Visible = false;

                lbMensaje1.Text = "repuesto modificado";
                mensaje1.Visible = true;
            }
            else
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "error";
                mensaje2.Visible = true;
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

                mensaje2.Visible = false;
                lbMensaje1.Text = "repuesto eliminado";
                mensaje1.Visible = true;


            }
            else
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "Error";
                mensaje2.Visible = true;
            }

        }

        protected void txtSku_TextChanged(object sender, EventArgs e)
        {
          
        }
    }
}
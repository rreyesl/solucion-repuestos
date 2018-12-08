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
    public partial class AgregarRepuesto : System.Web.UI.Page
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

                SucursalCollection sc = new SucursalCollection();
                ddlSucursal.DataSource = sc.ReadAll();
                ddlSucursal.DataValueField = "Id";
                ddlSucursal.DataTextField = "Nombre";
                ddlSucursal.DataBind();


                mensaje1.Visible = false;
                mensaje2.Visible = false;

            }



        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
               Repuesto r = new Repuesto();
               

                r.Sku = txtSku.Text;
                r.Descripcion = txtDescripcion.Text;
                r.Id_tipo = int.Parse(ddlTipo.SelectedValue);
                r.Valor_neto = int.Parse(txtValor.Text);
                r.Id_modelo = int.Parse(ddlModelos.SelectedValue);
                Negocio.Repuestos.Clases.Stock s = new Negocio.Repuestos.Clases.Stock();
                s.Cantidad = int.Parse(txtCantidad.Text);
                s.Id_sucursal = int.Parse(ddlSucursal.SelectedValue);
                


                if (!r.ExisteSku(txtSku.Text))
                {
                    if (!r.ExisteNombre(txtDescripcion.Text))
                    {
                        if (r.Crear())
                        {

                            mensaje2.Visible = false;
                            lbMensaje1.Text = "Repuesto creado";
                            mensaje1.Visible = true;

                        }
                        else
                        {
                            mensaje1.Visible = false;
                            lbMensaje2.Text = "Error";
                            mensaje2.Visible = true;
                        }
                    }
                    else
                    {
                        mensaje1.Visible = false;
                        lbMensaje2.Text = "el repuesto ya existe";
                        mensaje2.Visible = true;
                    }
                   
                }
                else
                {
                    mensaje1.Visible = false;
                    lbMensaje2.Text = "sku ya existe";
                    mensaje2.Visible = true;
                }

                // r.BuscarSku();

                r.BuscarRepuestoByNombre(txtDescripcion.Text);

                s.Id_repuesto = r.Id;
                s.Crear();

            }
        }

        protected void txtSku_TextChanged(object sender, EventArgs e)
        {
            Repuesto r = new Repuesto();


            if (r.ExisteSku(txtSku.Text))
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "Sku ya existe";
                mensaje2.Visible = true;
            }
            else
            {
                mensaje2.Visible = false;
            }

        }
    }
}
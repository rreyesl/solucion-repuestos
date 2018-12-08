using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio.Repuestos.Colecciones;

namespace WebRepuestos.Administrador
{
    public partial class ListarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SucursalCollection sc = new SucursalCollection();
            if (!IsPostBack)
            {
                ddlSucursal.DataSource = sc.ReadAll();
                ddlSucursal.DataValueField = "Id";
                ddlSucursal.DataTextField = "Nombre";
                ddlSucursal.DataBind();
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            int sucursal =
         int.Parse(ddlSucursal.SelectedValue);
            System.Web.HttpContext.Current.Session["sucursal"] = sucursal;




            gvClientes.DataBind();
        }
    }
}
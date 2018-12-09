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
    public partial class Cotizaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AutoCollection a = new AutoCollection();

            DropDownList1.DataSource = a.ReadAll();
            DropDownList1.DataValueField = "Id";
            DropDownList1.DataTextField = "Patente";
            DropDownList1.DataBind();

            //Auto au = new Auto();
            //DropDownList2.DataSource = au.ReadAllbyCliente(6009);
            //DropDownList2.DataValueField = "Id";
            //DropDownList2.DataTextField = "Patente";
            //DropDownList2.DataBind();




        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Servicio s = new Servicio();
            Auto a = new Auto();
            Detalle_Servicio ds = new Detalle_Servicio();

            a.Patente = txtPatente.Text;
            s.BuscarPatente2(a.Patente);
            System.Web.HttpContext.Current.Session["idauto"] = s.Id_auto;


            if (s.BuscarPatente3(a.Patente))
            {
                //  mensaje2.Visible = false;
                s.BuscarPatente2(a.Patente);
                //lbMensaje.Text = "Patente encontrada";
                //mensaje1.Visible = true;

                //


            }
            else
            {
                //   mensaje1.Visible = false;
                // lbMensaje2.Text = "No se encontro la patente";
                //mensaje2.Visible = true;
            }


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebRepuestos.GerenteGeneral
{
    public partial class InicioGerenteGeneral : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Negocio.Repuestos.Clases.Reporteria rp = new Negocio.Repuestos.Clases.Reporteria();

                string sMonth = DateTime.Now.ToString("MM");
                string sYear = DateTime.Now.ToString("yyyy");
                string data = rp.getRepuestosByMonth(int.Parse(sMonth), int.Parse(sYear));
                System.Web.HttpContext.Current.Session["repuestosMes"] = data;
                Session["repuestoMes"] = data;
                Session["sMonth"] = sMonth;
                Session["sYear"] = sYear;

                ddlMeses.SelectedValue = sMonth;
                ddlAnio.SelectedValue = sYear;
            }


        }

        protected void btnExportar_Click(object sender, EventArgs e)
        {
            Response.Clear();

            Response.AddHeader("content-disposition", "attachment;filename = Reportes-" + System.DateTime.Now.Date.ToString("dd/MM/yyyy") + ".xls");



            Response.ContentType = "application/vnd.xls";

            System.IO.StringWriter stringWrite = new System.IO.StringWriter();

            System.Web.UI.HtmlTextWriter htmlWrite =
            new HtmlTextWriter(stringWrite);

            GridView1.RenderControl(htmlWrite);

            Response.Write(stringWrite.ToString());

            Response.End();
        }

        public override void
         VerifyRenderingInServerForm(Control control)
        {
            return;
        }

        protected void ddlMeses_SelectedIndexChanged(object sender, EventArgs e)
        {
            Negocio.Repuestos.Clases.Reporteria rp = new Negocio.Repuestos.Clases.Reporteria();

            Session["sMonth"] = ddlMeses.SelectedValue;
            Session["sYear"] = ddlAnio.SelectedValue;
            string data = rp.getRepuestosByMonth(int.Parse(ddlMeses.SelectedValue), int.Parse(ddlAnio.SelectedValue));
            Session["repuestoMes"] = data;

        }
    }
}
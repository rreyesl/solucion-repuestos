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

            //////int dias = DateTime.DaysInMonth(2018, 11);
            //////System.Web.HttpContext.Current.Session["dias"] = dias;
            //////var asd = System.Configuration.ConfigurationManager.ConnectionStrings["Repuestos2Entities4"].ConnectionString;
            //////SqlConnection sqlcon = new SqlConnection("Server=localhost;Database=Repuestos2;Trusted_Connection=True;");
            //////SqlCommand cmd = new SqlCommand();
            //////SqlDataReader rd;

            //////cmd.CommandText = "select t1.id_repuesto as ID, COUNT(t1.id_repuesto) as cantidad, t2.descripcion as Repuesto, CONVERT(varchar(10), t3.fecha_ingreso, 103) as Fecha from Detalle_Servicio as t1 inner join Repuesto as t2 on t1.id_repuesto = t2.id inner join Servicio as t3 on t1.id_servicio = t3.id where t3.id_estado = 1 group by t1.id_repuesto, t2.descripcion, t3.fecha_ingreso; ";
            //////cmd.CommandType = System.Data.CommandType.Text;
            //////cmd.Connection = sqlcon;

            ////sqlcon.Open();
            //////  string[] datos;

            //////            List<string> listapulenta = new List<string>();
            //////ClassName[] allRecords = null;
            ////rd = cmd.ExecuteReader();
            ////int aux = 0;
            ////Negocio.Repuestos.Reporte1[] datos = null;
            ////string data = "{'repuestos': [";

            ////if (rd.HasRows)
            ////{

            ////    var list = new List<Negocio.Repuestos.Reporte1>();

            ////    while (rd.Read())
            ////    {

            ////        list.Add(new Negocio.Repuestos.Reporte1 { Id = rd.GetInt32(0) });
            ////        data += "{'id': '" + rd.GetInt32(0) + "', 'cantidad':'" + rd.GetInt32(1) + "','repuesto':'" + rd.GetString(2) + "','fecha':'" + rd.GetString(3) + "'},";
            ////    }

            ////    datos = list.ToArray();
            ////}
            ////data = data.Remove(data.Length - 1);
            ////data += "]}";


            ////sqlcon.Close();

            ////// string[] data = listapulenta.ToArray();
            ////System.Web.HttpContext.Current.Session["repuestosMes"] = data;
            ////Session["repuestoMes"] = data;


            //System.Web.HttpContext.Current.Session["repuestosMes"] as String;
            // txtArea.InnerText =  (datos[0].Id).ToString();
            string data = "";


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
    }
}
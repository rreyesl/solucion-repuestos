using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Reporteria
    {
        public string getRepuestosByMonth(int mes, int anio)
        {
            /*
             * select
             *   t1.id_repuesto as ID,
             *   COUNT(t1.id_repuesto) as cantidad,
             *   t2.descripcion as Repuesto,
             *   CONVERT(varchar(10),
             *   t3.fecha_ingreso, 103) as Fecha
             * from Detalle_Servicio as t1
             * inner join Repuesto as t2 on t1.id_repuesto = t2.id
             * inner join Servicio as t3 on t1.id_servicio = t3.id
             * where t3.id_estado = 1
             * group by t1.id_repuesto, t2.descripcion, t3.fecha_ingreso; 
            */
            string data = "{'repuestos': [";
            // s.id_estado == 4 &&
            var result = (from dt in CommonBC.Modelo.Detalle_Servicio
                          join r in CommonBC.Modelo.Repuesto on dt.id_repuesto equals r.id
                          join s in CommonBC.Modelo.Servicio on dt.id_servicio equals s.id
                          where  s.fecha_ingreso.Month == mes && s.fecha_ingreso.Year == anio
                          group new { dt, r, s } by new { dt.id_repuesto, r.descripcion, s.fecha_ingreso } into g1
                          select new { ID = g1.Key.id_repuesto, Cantidad = g1.Count(), Repuesto = g1.Key.descripcion, Fecha = g1.Key.fecha_ingreso }).ToList();

            foreach (var item in result)
            {
                data += "{'id': '" + (item.ID).ToString() + "', 'cantidad':'" + (item.Cantidad).ToString() + "','repuesto':'" + (item.Repuesto).ToString() + "','fecha':'" + (item.Fecha).ToString("dd-MM-yyyy") + "'},";

            }

            data = data.Remove(data.Length - 1);
            data += "]}";

            return data;
        }
    }
}

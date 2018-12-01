using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Colecciones
{
    public class Detalle_ServicioCollection
    {
        public Detalle_ServicioCollection() { }

        public List<Clases.Detalle_Servicio> ListaDetalles(List<DALC.Repuestos.Detalle_Servicio> detalleSeDALC)
        {
            List<Clases.Detalle_Servicio> listaDetalleServicio = new List<Clases.Detalle_Servicio>();

            foreach (DALC.Repuestos.Detalle_Servicio item in CommonBC.Modelo.Detalle_Servicio)
            {
                Clases.Detalle_Servicio d = new Clases.Detalle_Servicio();
                d.Id = item.id;
                d.Id_repuesto = item.id_repuesto;
                d.Id_servicio = item.id_servicio;
                d.Cantidad = item.cantidad;

                listaDetalleServicio.Add(d);

            }
            return listaDetalleServicio;
        }
        public List<Clases.Detalle_Servicio> ReadAll()
        {
            var datalles = CommonBC.Modelo.Detalle_Servicio;
            return ListaDetalles(datalles.ToList());
        }


    }
}

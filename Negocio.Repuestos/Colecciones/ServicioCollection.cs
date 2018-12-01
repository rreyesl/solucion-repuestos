using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Colecciones
{
    public class ServicioCollection
    {
        public ServicioCollection() { }

        public List<Clases.Servicio> listaServicios(List<DALC.Repuestos.Servicio> servicioDALC)
        {
            List<Clases.Servicio> listaServicio = new List<Clases.Servicio>();

            foreach (DALC.Repuestos.Servicio item in CommonBC.Modelo.Servicio)
            {
                //long longVar = BitConverter.ToInt64(item.fecha_ingreso, 0);


                Clases.Servicio s = new Clases.Servicio();
                s.Id = item.id;
                s.Descripcion = item.descripcion;
                s.Fecha_ingreso = item.fecha_ingreso;/* DateTime.FromBinary(BitConverter.ToInt64(item.fecha_ingreso, 0));*/
                s.Fecha_entrega = item.fecha_entrega;
                s.Valor_neto = item.valor_neto;
                s.Valor_iva = item.valor_iva;
                s.Valor_total = item.valor_total;
                s.Cancelado = item.cancelado;
                s.Mano_obra = item.mano_obra;
                s.Id_sucursal = item.id_sucursal;
                s.Id_usuario = item.id_usuario;
                s.Id_auto = item.id_auto;
                s.Repuesto = item.repuesto;
                s.Id_estado = item.id_estado;
                //s.Cantidad = item.cantidad;
                s.Id_estado = item.id_estado;

                listaServicio.Add(s);

            }
            return listaServicio;
        }
        public List<Clases.Servicio> ReadAll()
        {
            var servicios = CommonBC.Modelo.Servicio;
            return listaServicios(servicios.ToList());
        }

    }
}

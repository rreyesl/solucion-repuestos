using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Colecciones
{
    public class RepuestoCollection
    {
        public RepuestoCollection() { }

        public List<Clases.Repuesto> ListaRepuestos(List<DALC.Repuestos.Repuesto> repuestoDALC)
        {
            List<Clases.Repuesto> listaRepuesto = new List<Clases.Repuesto>();

            foreach (DALC.Repuestos.Repuesto item in CommonBC.Modelo.Repuesto)
            {
                Clases.Repuesto r = new Clases.Repuesto();
                r.Id = item.id;
                r.Sku = item.sku;
                r.Descripcion = item.descripcion;
                r.Id_tipo = item.id_tipo;
                r.Valor_neto = item.valor_neto;

                listaRepuesto.Add(r);

            }
            return listaRepuesto;
        }

        public List<Clases.Repuesto> ReadAll()
        {
            var repuestos = CommonBC.Modelo.Repuesto;
            return ListaRepuestos(repuestos.ToList());
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Colecciones
{
    public class MarcaCollection
    {
        public MarcaCollection() { }
        private List<Clases.Marca> GenerarListado(List<DALC.Repuestos.Marca> tipoMarcaDALC)
        {
            List<Clases.Marca> marcas = new List<Clases.Marca>();

            foreach (DALC.Repuestos.Marca item in tipoMarcaDALC)
            {
                Clases.Marca tipoMarcaTemporal = new Clases.Marca();
                tipoMarcaTemporal.Id = item.id;
                tipoMarcaTemporal.Nombre = item.nombre;

                marcas.Add(tipoMarcaTemporal);
            }
            return marcas;
        }

        public List<Clases.Marca> ReadAll()
        {
            var marcas = CommonBC.Modelo.Marca;
            return GenerarListado(marcas.ToList());
        }
    }
}

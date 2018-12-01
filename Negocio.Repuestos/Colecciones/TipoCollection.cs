using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Colecciones
{
    public class TipoCollection
    {
        public TipoCollection() { }

        private List<Clases.Tipo> GenerarListado(List<DALC.Repuestos.Tipo> tipoTipoDALC)
        {
            List<Clases.Tipo> tipos = new List<Clases.Tipo>();

            foreach (DALC.Repuestos.Tipo item in tipoTipoDALC)
            {
                Clases.Tipo tipoTipoTemporal = new Clases.Tipo();
                tipoTipoTemporal.Id = item.id;
                tipoTipoTemporal.Nombre = item.nombre;

                tipos.Add(tipoTipoTemporal);
            }
            return tipos;
        }
        public List<Clases.Tipo> ReadAll()
        {
            var tipos = CommonBC.Modelo.Tipo;
            return GenerarListado(tipos.ToList());
        }
    }
}

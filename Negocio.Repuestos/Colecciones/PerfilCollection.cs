using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Colecciones
{
    public class PerfilCollection
    {
        public PerfilCollection() { }
        private List<Clases.Perfil> GenerarListado
           (List<DALC.Repuestos.Perfil> tipoPerfilDALC)
        {
            List<Clases.Perfil> perfiles =
               new List<Clases.Perfil>();

            foreach (DALC.Repuestos.Perfil item in tipoPerfilDALC)
            {
                Clases.Perfil tipoPerfilTemporal = new Clases.Perfil();
                tipoPerfilTemporal.Id = item.id;
                tipoPerfilTemporal.Nombre = item.nombre;
                //Resto atributos

                perfiles.Add(tipoPerfilTemporal);
            }

            return perfiles;
        }

        public List<Clases.Perfil> ReadAll()
        {
            var perfiles = CommonBC.Modelo.Perfil;
            return GenerarListado(perfiles.ToList());
        }

    }
}

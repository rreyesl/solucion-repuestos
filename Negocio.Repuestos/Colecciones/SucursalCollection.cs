using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Colecciones
{
    public class SucursalCollection
    {
        public SucursalCollection() { }
        private List<Clases.Sucursal> GenerarListado(List<DALC.Repuestos.Sucursal> tipoSucursalDALC)
        {
            List<Clases.Sucursal> sucursales = new List<Clases.Sucursal>();

            foreach (DALC.Repuestos.Sucursal item in tipoSucursalDALC)
            {
                Clases.Sucursal tipoSucursalTemporal = new Clases.Sucursal();
                tipoSucursalTemporal.Id = item.id;
                tipoSucursalTemporal.Nombre = item.nombre;

                sucursales.Add(tipoSucursalTemporal);
            }
            return sucursales;
        }
        public List<Clases.Sucursal> ReadAll()
        {
            var sucursales = CommonBC.Modelo.Sucursal;
            return GenerarListado(sucursales.ToList());
        }
    }
}

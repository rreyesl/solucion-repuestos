using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Colecciones
{
    public class ModeloCollection
    {
        public ModeloCollection() { }

        public List<Clases.Modelo> ListarModelos(List<DALC.Repuestos.Modelo> modelosDALC)
        {
            List<Clases.Modelo> listaModelo = new List<Clases.Modelo>();

            foreach (DALC.Repuestos.Modelo item in CommonBC.Modelo.Modelo)
            {
                Clases.Modelo m = new Clases.Modelo();
                m.Id = item.id;
                m.Nombre = item.nombre;
                m.Descripcion = item.descripcion;
                m.Anio = item.anio;
                m.Id_marca = item.id_marca;

                listaModelo.Add(m);

            }
            return listaModelo;
        }

        public List<Clases.Modelo> ListarModelosbyRepuestos(List<DALC.Repuestos.Modelo> modelosDALC)
        {
            List<Clases.Modelo> listaModelo = new List<Clases.Modelo>();

            foreach (DALC.Repuestos.Modelo item in CommonBC.Modelo.Modelo)
            {
                Clases.Modelo m = new Clases.Modelo();
                m.Id = item.id;
                m.Nombre = item.nombre;
                m.Descripcion = item.descripcion;
                m.Anio = item.anio;
                m.Id_marca = item.id_marca;

                listaModelo.Add(m);

            }
            return listaModelo;
        }


        public List<Clases.Modelo> ReadAll()
        {
            var modelos = CommonBC.Modelo.Modelo;
            return ListarModelos(modelos.ToList());
        }

        public List<Clases.Modelo> ReadAllbyRepuestos(int id)
        {
            var modelos = CommonBC.Modelo.Modelo;
            return ListarModelos(modelos.ToList());
        }
    }
}

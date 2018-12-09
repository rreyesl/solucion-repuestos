using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Colecciones
{
    public class AutoCollection
    {
        public AutoCollection() { }

        public List<Clases.Auto> ListaAutos(List<DALC.Repuestos.Auto> atuoDALC)
        {
            List<Clases.Auto> listaAuto = new List<Clases.Auto>();

            foreach (DALC.Repuestos.Auto item in CommonBC.Modelo.Auto)
            {
                Clases.Auto a = new Clases.Auto();
                a.Id = item.id;
                a.Patente = item.patente;
                a.Km = item.km;
                a.Nro_motor = item.nro_motor;
                a.Id_modelo = item.id_modelo;
                a.Nro_chasis = item.nro_chasis;
                a.Id_cliente = item.id_cliente;

                listaAuto.Add(a);

            }
            return listaAuto;
        }
        public List<Clases.Auto> ReadAll()
        {
            var autos = CommonBC.Modelo.Auto;
            return ListaAutos(autos.ToList());
        }



    }
}

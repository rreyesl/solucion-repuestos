using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Colecciones
{
    public class StockCollection
    {
        public StockCollection() { }
        public List<Clases.Stock> ListaStock(List<DALC.Repuestos.Stock> stockDALC)
        {
            List<Clases.Stock> listaStock = new List<Clases.Stock>();

            foreach (DALC.Repuestos.Stock item in CommonBC.Modelo.Stock)
            {
                Clases.Stock s = new Clases.Stock();
                s.Id = item.id;
                s.Id_repuesto = item.id_repuesto;
                s.Id_sucursal = item.id_sucursal;

                listaStock.Add(s);
            }
            return listaStock;
        }
        public List<Clases.Stock> ReadAll()
        {
            var detalles = CommonBC.Modelo.Stock;
            return ListaStock(detalles.ToList());
        }

    }
}

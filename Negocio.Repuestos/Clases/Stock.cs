using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Stock
    {
        private int id, cantidad, id_sucursal, id_repuesto;

        public int Cantidad
        {
            get
            {
                return cantidad;
            }

            set
            {
                cantidad = value;
            }
        }

        public int Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }

        public int Id_repuesto
        {
            get
            {
                return id_repuesto;
            }

            set
            {
                id_repuesto = value;
            }
        }

        public int Id_sucursal
        {
            get
            {
                return id_sucursal;
            }

            set
            {
                id_sucursal = value;
            }
        }
        public Stock()
        {
            this.Init();
        }

        private void Init()
        {
            id = 0;
            cantidad = 0;
            id_sucursal = 0;
            id_repuesto = 0;
        }

        public bool Crear()
        {
            try
            {
                DALC.Repuestos.Stock s = new DALC.Repuestos.Stock();

                s.id_sucursal = id_sucursal;
                s.id_repuesto = id_repuesto;
                s.cantidad = cantidad;


                CommonBC.Modelo.Stock.Add(s);
                CommonBC.Modelo.SaveChanges();
                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool EliminarRepuesto2(string sku)
        {
            try
            {

                var count = CommonBC.Modelo.Stock.Count(valor => valor.Repuesto.sku == sku);


                for (int i = 0; i < count; i++)
                {

                    var c = CommonBC.Modelo.Stock.First
                        (valor => valor.Repuesto.sku == sku);

                    CommonBC.Modelo.Stock.Remove(c);
                    CommonBC.Modelo.SaveChanges();



                }
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool EliminarRepuestoStock(int id_repuesto)
        {
            try
            {

                //var count = CommonBC.Modelo.Stock.Count(valor => valor.id_repuesto == id_repuesto);


                //for (int i = 0; i < count; i++)
                //{

                var c = CommonBC.Modelo.Stock.First
                    (valor => valor.id_repuesto == id_repuesto);

                c.cantidad = c.cantidad - 1;

                //CommonBC.Modelo.Stock.Remove(c);
                CommonBC.Modelo.SaveChanges();



                //}
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        } 





    }
}

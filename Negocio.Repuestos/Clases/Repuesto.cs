using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Repuesto
    {
        private int id, id_tipo, id_modelo;
        private string sku, descripcion;
        private decimal valor_neto;

        public string Descripcion
        {
            get
            {
                return descripcion;
            }

            set
            {
                descripcion = value;
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

        public int Id_tipo
        {
            get
            {
                return id_tipo;
            }

            set
            {
                id_tipo = value;
            }
        }

        public string Sku
        {
            get
            {
                return sku;
            }

            set
            {
                sku = value;
            }
        }

        public decimal Valor_neto
        {
            get
            {
                return valor_neto;
            }

            set
            {
                valor_neto = value;
            }
        }

        public int Id_modelo
        {
            get
            {
                return id_modelo;
            }

            set
            {
                id_modelo = value;
            }
        }

        public Repuesto()
        {
            this.Init();
        }

        private void Init()
        {
            id = 0;
            sku = string.Empty;
            descripcion = string.Empty;
            id_tipo = 0;
            valor_neto = 0;
            id_modelo = 0;
        
        }

        public bool Crear()
        {
            try
            {
                DALC.Repuestos.Repuesto r = new DALC.Repuestos.Repuesto();


                r.sku = sku;
                r.descripcion = descripcion;
                r.id_tipo = id_tipo;
                r.valor_neto = valor_neto;
                r.id_modelo = id_modelo;

                CommonBC.Modelo.Repuesto.Add(r);
                CommonBC.Modelo.SaveChanges();
                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool ExisteSku(string sku)
        {
            try
            {
                var aux = CommonBC.Modelo.Repuesto.First
                    (valor => valor.sku ==sku);

                return true;


            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool ExisteNombre(string nombre)
        {
            try
            {
                var aux = CommonBC.Modelo.Repuesto.First
                    (valor => valor.descripcion == nombre);

                return true;


            }
            catch (Exception)
            {

                return false;
            }
        }

        public Repuesto BuscarSku(string sku)
        {
            try
            {
                var aux = CommonBC.Modelo.Repuesto.First
                    (valor => valor.sku == sku);

                this.id = aux.id;
                this.sku = aux.sku;
                this.descripcion = aux.sku;
                this.id_tipo = aux.id_tipo;
                this.valor_neto = aux.valor_neto;
                this.id_modelo = aux.id_modelo;

                return this;


            }
            catch (Exception)
            {

                return null;
            }
        }

        public bool Modificar(string sku, string descripcion, int id_tipo, int valor_neto, int id_modelo)
        {
            try
            {
                var c = CommonBC.Modelo.Repuesto.First
                    (valor => valor.sku == sku);
                c.sku = sku;
                c.descripcion = descripcion;
                c.id_tipo = id_tipo;
                c.valor_neto = valor_neto;
                c.id_modelo = id_modelo;

                //CommonBC.Modelo.Auto.Add(c);
                CommonBC.Modelo.SaveChanges();
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool Eliminar(string sku)
        {
            try
            {
                var aux = CommonBC.Modelo.Repuesto.First
                    (valor => valor.sku == sku);

                CommonBC.Modelo.Repuesto.Remove(aux);
                CommonBC.Modelo.SaveChanges();
                return true;


            }
            catch (Exception)
            {

                return false;
            }
        }

        public Repuesto BuscarRepuestoByNombre(string descripcion)
        {
            try
            {
                var aux = CommonBC.Modelo.Repuesto.First
                    (valor => valor.descripcion == descripcion);
                this.id = aux.id;
                this.descripcion = aux.descripcion;
                this.Valor_neto = aux.valor_neto;





                return this;


            }
            catch (Exception)
            {

                return null;
            }
        }



    }
}

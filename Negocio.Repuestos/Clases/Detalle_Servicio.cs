using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Detalle_Servicio
    {
        private int id, id_repuesto, id_servicio, cantidad;
        private int total;
      

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

        public int Id_servicio
        {
            get
            {
                return id_servicio;
            }

            set
            {
                id_servicio = value;
            }
        }

        public int Total
        {
            get
            {
                return total;
            }

            set
            {
                total = value;
            }
        }

        public Detalle_Servicio()
        {
            this.Init();
        }

        private void Init()
        {
            id = 0;
            id_repuesto = 0;
            id_servicio = 0;
            cantidad = 0;
           // total = 0;
        }

        public bool Crear()
        {
            try
            {
                DALC.Repuestos.Detalle_Servicio ds = new
                     DALC.Repuestos.Detalle_Servicio();

                ds.id_repuesto = id_repuesto;
                ds.id_servicio = id_servicio;
                ds.cantidad = cantidad;
                ds.total =total;

                CommonBC.Modelo.Detalle_Servicio.Add(ds);
                CommonBC.Modelo.SaveChanges();
                return true;


               
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool EliminarAutoCliente(string rut)
        {
            try
            {
                var count = CommonBC.Modelo.Detalle_Servicio.Count(valor => valor.Servicio.Auto.Cliente.rut == rut);


                for (int i = 0; i < count; i++)
                {

                    var c = CommonBC.Modelo.Detalle_Servicio.First
                    (valor => valor.Servicio.Auto.Cliente.rut == rut);

                    CommonBC.Modelo.Detalle_Servicio.Remove(c);
                    CommonBC.Modelo.SaveChanges();

                }

                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }


        public bool EliminarAutoDetalle_Serivio(string patente)
        {
            try
            {
                var count = CommonBC.Modelo.Detalle_Servicio.Count(valor => valor.Servicio.Auto.patente == patente);


                for (int i = 0; i < count; i++)
                {

                    var c = CommonBC.Modelo.Detalle_Servicio.First
                    (valor => valor.Servicio.Auto.patente == patente);

                    CommonBC.Modelo.Detalle_Servicio.Remove(c);
                    CommonBC.Modelo.SaveChanges();

                }

                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool EliminarUsuario(int rut)
        {
            try
            {
                var count = CommonBC.Modelo.Detalle_Servicio.Count(valor => valor.Servicio.Usuario.rut == rut);


                for (int i = 0; i < count; i++)
                {

                    var c = CommonBC.Modelo.Detalle_Servicio.First
                    (valor => valor.Servicio.Usuario.rut == rut);

                    CommonBC.Modelo.Detalle_Servicio.Remove(c);
                    CommonBC.Modelo.SaveChanges();

                }

                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool EliminarRepuesto(string sku)
        {
            try
            {

                var count = CommonBC.Modelo.Detalle_Servicio.Count(valor => valor.Repuesto.sku == sku);


                for (int i = 0; i < count; i++)
                {

                    var c = CommonBC.Modelo.Detalle_Servicio.First
                        (valor => valor.Repuesto.sku == sku);

                    CommonBC.Modelo.Detalle_Servicio.Remove(c);
                    CommonBC.Modelo.SaveChanges();



                }
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public Detalle_Servicio BuscarPatente(string patente)
        {
            try
            {
                var count = CommonBC.Modelo.Detalle_Servicio.Count(valor => valor.Servicio.Auto.patente == patente);


                for (int i = 0; i < count; i++)
                {
                    var aux = CommonBC.Modelo.Detalle_Servicio.First
                                       (valor => valor.Servicio.Auto.patente == patente);

                  

                    this.id_repuesto = aux.id_repuesto;
                    this.id_servicio = aux.id_servicio;
                    this.cantidad = aux.cantidad;
                    this.cantidad = aux.cantidad;



    }

                return this;


            }
            catch (Exception)
            {

                return null;
            }
        }

        public bool Eliminar(int id)
        {
            try
            {
             
                    var c = CommonBC.Modelo.Detalle_Servicio.First
                    (valor => valor.id == id);

                    CommonBC.Modelo.Detalle_Servicio.Remove(c);
                    CommonBC.Modelo.SaveChanges();

                
        
                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }

        public decimal ValorNetoTotal(int id)
        {
            decimal total = 0;


            try
            {
                var v = CommonBC.Modelo.Detalle_Servicio.Where(aux => aux.id_servicio == id).Sum(aux => aux.total);
                total = v;
            }
            catch (Exception)
            {

                throw;
            }

            return total;
        }



    }
}

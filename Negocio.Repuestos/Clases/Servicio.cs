using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Servicio
    {
        private int id, id_sucursal, id_usuario, id_auto;
        private string descripcion;
        private DateTime fecha_ingreso, fecha_entrega;
        private decimal valor_neto, valor_iva, valor_total, mano_obra;
        private bool cancelado;
        private int id_estado;
        int estado = 1;
  
        private string repuesto;

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

        public int Id_usuario
        {
            get
            {
                return id_usuario;
            }

            set
            {
                id_usuario = value;
            }
        }

        public int Id_auto
        {
            get
            {
                return id_auto;
            }

            set
            {
                id_auto = value;
            }
        }

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

        public DateTime Fecha_ingreso
        {
            get
            {
                return fecha_ingreso;
            }

            set
            {
                fecha_ingreso = value;
            }
        }

        public DateTime Fecha_entrega
        {
            get
            {
                return fecha_entrega;
            }

            set
            {
                fecha_entrega = value;
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

        public decimal Valor_iva
        {
            get
            {
                return valor_iva;
            }

            set
            {
                valor_iva = value;
            }
        }

        public decimal Valor_total
        {
            get
            {
                return valor_total;
            }

            set
            {
                valor_total = value;
            }
        }

        public decimal Mano_obra
        {
            get
            {
                return mano_obra;
            }

            set
            {
                mano_obra = value;
            }
        }

        public bool Cancelado
        {
            get
            {
                return cancelado;
            }

            set
            {
                cancelado = value;
            }
        }

 

      

        public string Repuesto
        {
            get
            {
                return repuesto;
            }

            set
            {
                repuesto = value;
            }
        }

        public int Id_estado
        {
            get
            {
                return id_estado;
            }

            set
            {
                id_estado = value;
            }
        }

        public Servicio()
        {
            this.Init();
        }

        private void Init()
        {
            id = 0;
            descripcion = string.Empty;
            fecha_ingreso = DateTime.Now;
            fecha_entrega = DateTime.Now;
            valor_neto = 0;
            valor_iva = 0;
            valor_total = 0;
            cancelado = false;
            id_sucursal = 0;
            id_usuario = 0;
            id_auto = 0;
            mano_obra = 0;
            repuesto = string.Empty;
            //id_estado=0;


        }

        public bool Crear()
        {
            try
            {
                DALC.Repuestos.Servicio s = new DALC.Repuestos.Servicio();

                s.descripcion = descripcion;
                s.fecha_ingreso = fecha_ingreso; /*BitConverter.GetBytes(fecha_ingreso.Ticks);*/
                s.fecha_entrega = fecha_entrega;
                s.valor_neto = valor_neto;
                s.valor_iva = valor_iva;
                s.valor_total = valor_total;
                s.cancelado = cancelado;
                s.mano_obra = mano_obra;
                s.id_sucursal = id_sucursal;
                s.id_usuario = id_usuario;
                s.id_auto = id_auto;
                s.repuesto = repuesto;
                s.id_estado = estado;
                
                
             


                CommonBC.Modelo.Servicio.Add(s);
                CommonBC.Modelo.SaveChanges();
                return true;

            }
            catch (Exception )//con la variable 'e' puedes ver que error esta dando especificamente
            {
               // Console.WriteLine(e.Message);
                return false;
            }
        }

        public int Ultimo()
        {
            try
            {
                var aux = CommonBC.Modelo.Servicio.Count();
                return (int)aux;

                
                


            }
            catch (Exception)
            {

                return 2;
            }
        }

        public bool Eliminar(string descripcion)
        {
            try
            {
                var aux = CommonBC.Modelo.Servicio.First
                    (valor => valor.descripcion == descripcion);

                CommonBC.Modelo.Servicio.Remove(aux);
                CommonBC.Modelo.SaveChanges();
                return true;


            }
            catch (Exception)
            {

                return false;
            }
        }



        //ELIMINAR CLIENTE
        public bool EliminarServicioAuto(string rut)
        {
            try
            {

                var count = CommonBC.Modelo.Servicio.Count(valor => valor.Auto.Cliente.rut == rut);

                
                for (int i = 0; i < count; i++)
                {
                    
                    var c = CommonBC.Modelo.Servicio.First
                        (valor => valor.Auto.Cliente.rut == rut);

                    CommonBC.Modelo.Servicio.Remove(c);
                    CommonBC.Modelo.SaveChanges();


                   
                }
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        //Eliminar AUTO
        public bool EliminarAutoServicio(string patente)
        {
            try
            {

                var count = CommonBC.Modelo.Servicio.Count(valor => valor.Auto.patente == patente);


                for (int i = 0; i < count; i++)
                {

                    var c = CommonBC.Modelo.Servicio.First
                        (valor => valor.Auto.patente == patente);

                    CommonBC.Modelo.Servicio.Remove(c);
                    CommonBC.Modelo.SaveChanges();



                }
                
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        //ELIMINAR USUARIO
        public bool EliminarUsuario(int rut)
        {
            try
            {

                var count = CommonBC.Modelo.Servicio.Count(valor => valor.Usuario.rut == rut);


                for (int i = 0; i < count; i++)
                {

                    var c = CommonBC.Modelo.Servicio.First
                        (valor => valor.Usuario.rut == rut);

                    CommonBC.Modelo.Servicio.Remove(c);
                    CommonBC.Modelo.SaveChanges();



                }
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool Existe()
        {
            try
            {
                var aux = CommonBC.Modelo.Servicio.First
                    (valor => valor.descripcion == this.descripcion);

                return true;


            }
            catch (Exception)
            {

                return false;
            }
        }

        public Servicio BuscarPatente(string descripcion)
        {
            try
            {
                var aux = CommonBC.Modelo.Servicio.First
                    (valor => valor.descripcion == descripcion);
                this.id = aux.id;
                this.Fecha_ingreso = aux.fecha_ingreso;
                this.fecha_entrega = aux.fecha_entrega;
                this.valor_neto = aux.valor_neto;
                this.valor_iva = aux.valor_iva;
                this.Valor_total = aux.valor_total;
                this.cancelado = aux.cancelado;
                this.id_sucursal = aux.id_sucursal;
                this.id_usuario = aux.id_usuario;
                this.id_auto = aux.id_auto;
                this.mano_obra = aux.mano_obra;
                this.repuesto = aux.repuesto;
                //this.id_estado = aux.id_estado;


               

                return this;


            }
            catch (Exception)
            {

                return null;
            }
        }
       


        public bool Modificar(decimal total, decimal iva, decimal neto, int id)
        {
            try
            {
                var c = CommonBC.Modelo.Servicio.First
                    (valor => valor.id == id);

               
                c.valor_neto = neto;
                c.valor_iva = iva;
                c.valor_total = total;
               
                
                //CommonBC.Modelo.Auto.Add(c);
                CommonBC.Modelo.SaveChanges();
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public Servicio BuscarPatente2(string patente)
        {
            //Servicio s = new Servicio();

            try
            {
                var count = CommonBC.Modelo.Servicio.Count(valor => valor.Auto.patente == patente);
                List<Clases.Servicio> listaServicio = new List<Clases.Servicio>();

                var aux = CommonBC.Modelo.Servicio.First
                                    (valor => valor.Auto.patente == patente);

                //comentado
               // Servicio s = new Servicio();
                //for (int i = 0; i < count; i++)
                //{

                //  listaServicio.Add(aux);
                //s.id = aux.id;
                this.Fecha_ingreso = aux.fecha_ingreso;
                this.fecha_entrega = aux.fecha_entrega;
                this.valor_neto = aux.valor_neto;
                this.valor_iva = aux.valor_iva;
                this.Valor_total = aux.valor_total;
                this.cancelado = aux.cancelado;
                this.id_sucursal = aux.id_sucursal;
                this.id_usuario = aux.id_usuario;
                this.id_auto = aux.id_auto;
                this.mano_obra = aux.mano_obra;
                this.repuesto = aux.repuesto;
                this.id_estado = aux.id_estado;
                this.descripcion = aux.descripcion;

                //aux.id = s.id;
                //aux.descripcion = s.descripcion;
                //aux.id_auto = s.id_auto;








                //}



                return this;


            }
            catch (Exception)
            {

                return null;
            }
        }




        //Listar servicios asociados a la pantete



        public List<Clases.Servicio> listaServicios(List<DALC.Repuestos.Servicio> servicioDALC,string patente)
        {
            List<Clases.Servicio> listaServicio = new List<Clases.Servicio>();
            var count = CommonBC.Modelo.Servicio.Count(valor => valor.Auto.patente == patente);
            //foreach (DALC.Repuestos.Servicio item in CommonBC.Modelo.Servicio)
            //{
            Clases.Servicio s = new Clases.Servicio();
            for (int i = 0; i < count; i++)
            {
                var item = CommonBC.Modelo.Servicio.First
                                   (valor => valor.Auto.patente == patente);

                //long longVar = BitConverter.ToInt64(item.fecha_ingreso, 0);


               
                s.Id = item.id;
                s.Descripcion = item.descripcion;
                s.Fecha_ingreso = item.fecha_ingreso;/* DateTime.FromBinary(BitConverter.ToInt64(item.fecha_ingreso, 0));*/
                s.Fecha_entrega = item.fecha_entrega;
                s.Valor_neto = item.valor_neto;
                s.Valor_iva = item.valor_iva;
                s.Valor_total = item.valor_total;
                s.Cancelado = item.cancelado;
                s.Mano_obra = item.mano_obra;
                s.Id_sucursal = item.id_sucursal;
                s.Id_usuario = item.id_usuario;
                s.Id_auto = item.id_auto;
                s.Repuesto = item.repuesto;
                s.Id_estado = item.id_estado;
                //s.Cantidad = item.cantidad;
                s.Id_estado = item.id_estado;





                listaServicio.Add(s);

                s = new Servicio();
                

            }
            return listaServicio;
        }
        public List<Clases.Servicio> ReadAll(string p)
        {
            var servicios = CommonBC.Modelo.Servicio;
            return listaServicios(servicios.ToList(),p);
        }


        public bool AceptarSolicitud(int id)
        {
            try
            {
                var aux = CommonBC.Modelo.Servicio.First
                    (valor => valor.id == id);
               
                aux.id_estado = 2;




                CommonBC.Modelo.SaveChanges();
                return true;


            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool RechazarSolicitud(int id)
        {
            try
            {
                var aux = CommonBC.Modelo.Servicio.First
                    (valor => valor.id == id);

                aux.id_estado =3;




                CommonBC.Modelo.SaveChanges();
                return true;


            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool EditarSolicitud(int id)
        {
            try
            {
                var aux = CommonBC.Modelo.Servicio.First
                    (valor => valor.id == id);

                aux.id_estado = 4;




                CommonBC.Modelo.SaveChanges();
                return true;


            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool BuscarSolicitud(int id)
        {
            try
            {
                var aux = CommonBC.Modelo.Servicio.First
                    (valor => valor.id == id);

                this.id_estado = aux.id_estado;




                CommonBC.Modelo.SaveChanges();
                return true;


            }
            catch (Exception)
            {

                return false;
            }
        }


    }
}

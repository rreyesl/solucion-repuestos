using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Auto
    {
        private int id, km, id_modelo, id_cliente;
        private string patente, nro_motor, nro_chasis;

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

        public int Id_cliente
        {
            get
            {
                return id_cliente;
            }

            set
            {
                id_cliente = value;
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

        public int Km
        {
            get
            {
                return km;
            }

            set
            {
                km = value;
            }
        }

        public string Nro_chasis
        {
            get
            {
                return nro_chasis;
            }

            set
            {
                nro_chasis = value;
            }
        }

        public string Nro_motor
        {
            get
            {
                return nro_motor;
            }

            set
            {
                nro_motor = value;
            }
        }

        public string Patente
        {
            get
            {
                return patente;
            }

            set
            {
                patente = value;
            }
        }
        public Auto()
        {
            this.Init();
        }

        private void Init()
        {
            id = 0;
            patente = string.Empty;
            km = 0;
            nro_motor = string.Empty;
            id_modelo = 0;
            nro_motor = string.Empty;
            nro_chasis = string.Empty;
            id_cliente = 0;

        }

        public bool Crear()
        {
            try
            {
                DALC.Repuestos.Auto a = new DALC.Repuestos.Auto();

                a.patente = patente;
                a.km = km;
                a.nro_motor = nro_motor;
                a.id_modelo = id_modelo;
                a.nro_chasis = nro_chasis;
                a.id_cliente = id_cliente;

                CommonBC.Modelo.Auto.Add(a);
                CommonBC.Modelo.SaveChanges();
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
                var aux = CommonBC.Modelo.Auto.First
                    (valor => valor.patente == this.Patente);

                return true;


            }
            catch (Exception)
            {

                return false;
            }
        }

        public Auto BuscarPatente(string patente)
        {
            try
            {
                var aux = CommonBC.Modelo.Auto.First
                    (valor => valor.patente == patente);

                this.patente = aux.patente;
                this.nro_chasis = aux.nro_chasis;
                this.nro_motor = aux.nro_motor;
                this.id_modelo = aux.id_modelo;
                this.id_cliente = aux.id_cliente;
                this.km = aux.km;

                return this;


            }
            catch (Exception)
            {

                return null;
            }
        }

        public bool Modificar(string patente, int km, int id_cliente, int id_modelo, string motor, string chasis)
        {
            try
            {
                var c = CommonBC.Modelo.Auto.First
                    (valor => valor.patente == patente);
                c.patente = patente;
                c.km = km;
                c.id_cliente =id_cliente;
                c.id_modelo = id_modelo;
                c.nro_motor = motor;
                c.nro_chasis = chasis;

                //CommonBC.Modelo.Auto.Add(c);
                CommonBC.Modelo.SaveChanges();
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool Eliminar(string patente)
        {
            try
            {
                var count = CommonBC.Modelo.Auto.Count(valor => valor.patente == patente);


                for (int i = 0; i < count; i++)
                {



                    var aux = CommonBC.Modelo.Auto.First
                    (valor => valor.patente == patente);

                    CommonBC.Modelo.Auto.Remove(aux);
                    CommonBC.Modelo.SaveChanges();

                }
               
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
                var count = CommonBC.Modelo.Auto.Count(valor => valor.Cliente.rut == rut);


                for (int i = 0; i < count; i++)
                {

                    var c = CommonBC.Modelo.Auto.First
                    (valor => valor.Cliente.rut == rut);

                    CommonBC.Modelo.Auto.Remove(c);
                    CommonBC.Modelo.SaveChanges();
                    
                }

                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }


       

    }
}

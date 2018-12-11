using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Cliente
    {
        private int id, telefono;
        private string rut, correo, nombre, apellido, direccion;
        private char dv;

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

        public int Telefono
        {
            get
            {
                return telefono;
            }

            set
            {
                telefono = value;
            }
        }

        public string Rut
        {
            get
            {
                return rut;
            }

            set
            {
                rut = value;
            }
        }

        public string Correo
        {
            get
            {
                return correo;
            }

            set
            {
                correo = value;
            }
        }

        public string Nombre
        {
            get
            {
                return nombre;
            }

            set
            {
                nombre = value;
            }
        }

        public string Apellido
        {
            get
            {
                return apellido;
            }

            set
            {
                apellido = value;
            }
        }

        public string Direccion
        {
            get
            {
                return direccion;
            }

            set
            {
                direccion = value;
            }
        }

        public char Dv
        {
            get
            {
                return dv;
            }

            set
            {
                dv = value;
            }
        }
        public Cliente()
        {
            this.Init();
        }

        private void Init()
        {
            id = 0;
            rut = string.Empty;
            dv = ' ';
            correo = string.Empty;
            apellido = string.Empty;
            nombre = string.Empty;
            telefono = 0;
            direccion = string.Empty;
        }

        public bool Crear()
        {
            try
            {
                DALC.Repuestos.Cliente c = new DALC.Repuestos.Cliente();

                
                        c.rut = rut;
                        c.dv = dv.ToString();
                        c.correo = correo;
                        c.nombre = nombre;
                        c.apellido = apellido;
                        c.telefono = telefono;
                        c.direccion = direccion;

                        CommonBC.Modelo.Cliente.Add(c);
                        CommonBC.Modelo.SaveChanges();
                




                return true;




            }
            catch (Exception)
            {

                return false;
            }
        }

        public string Digito(string r)
        {


            int suma = 0;
            for (int x = r.Length - 1; x >= 0; x--)
                suma += int.Parse(char.IsDigit(r[x]) ? r[x].ToString() : "0") * (((r.Length - (x + 1)) % 6) + 2);
            int numericDigito = (11 - suma % 11);
            string digito = numericDigito == 11 ? "0" : numericDigito == 10 ? "K" : numericDigito.ToString();
            return digito;
        }

        public bool Existe()
        {
            try
            {
                var aux = CommonBC.Modelo.Cliente.First
                    (valor => valor.rut == this.Rut);

                return true;


            }
            catch (Exception)
            {

                return false;
            }
        }

        public Cliente BuscarRut(string rut)
        {
            try
            {
                var aux = CommonBC.Modelo.Cliente.First
                    (valor => valor.rut == rut);

                this.Rut = aux.rut;
                this.Dv = char.Parse(aux.dv);
                this.Telefono = aux.telefono;
                this.Nombre = aux.nombre;
                this.Apellido = aux.apellido;
                this.Direccion = aux.direccion;
                this.Correo = aux.correo;
                    
                return this;


            }
            catch (Exception)
            {

                return null;
            }
        }

        public Cliente BuscarClient(int id)
        {
            try
            {
                var aux = CommonBC.Modelo.Cliente.First
                    (valor => valor.id == id);

                this.Rut = aux.rut;
                this.Dv = char.Parse(aux.dv);
                this.Telefono = aux.telefono;
                this.Nombre = aux.nombre;
                this.Apellido = aux.apellido;
                this.Direccion = aux.direccion;
                this.Correo = aux.correo;

                return this;


            }
            catch (Exception)
            {

                return null;
            }
        }


        public bool Modificar(string rut, string nombre, string apellido, string correo, string direccion, char dv, int telefono)
        {
            try
            {
                var c = CommonBC.Modelo.Cliente.First
                    (valor => valor.rut == rut);
                c.rut = rut;
                c.nombre = nombre;
                c.apellido = apellido;
                c.correo = correo;
                c.direccion =direccion;
                c.dv = dv.ToString();
                c.telefono = telefono;

                //CommonBC.Modelo.Cliente.Add(c);
                CommonBC.Modelo.SaveChanges();
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool Existe(string rut)
        {
            try
            {
                var aux = CommonBC.Modelo.Cliente.First
                    (valor => valor.rut == rut);

                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool Eliminar()
        {
            try
            {
                var aux = CommonBC.Modelo.Cliente.First
                    (valor => valor.rut == this.rut);

                CommonBC.Modelo.Cliente.Remove(aux);
                CommonBC.Modelo.SaveChanges();
                return true;


            }
            catch (Exception e)
            {

                return false;
            }
        }

        public string Pass(string rut)
        {
            string clave;

            clave = rut.Substring(rut.Length -4);
            
         //   select SUBSTRING(rut, LEN(rut) - 3, 4)from Cliente


            return clave;

            
        }

        public bool ValidarUsuario(string rut, string pas)
        {
            try
            {
                var a = CommonBC.Modelo.Cliente.First
                   (valor => valor.rut == rut);
               // this.Id = a.id;



                if (pas != Pass(rut))
                {
                    return false;
                }
                else

                {

                    return true;
                }

            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool ExisteCorreo(string correo)
        {
            try
            {
                var aux = CommonBC.Modelo.Cliente.First
                    (valor => valor.correo == correo);

                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }

        public int BuscarIdbyRut(string rut)
        {
            try
            {

                int id;
                var aux = CommonBC.Modelo.Cliente.First
                    (valor => valor.rut == rut);

                id = aux.id;

                return id;


            }
            catch (Exception)
            {

                return 0;
            }
        }

    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Usuario
    {
        private int id, rut, telefono, id_perfil;
        private char dv;
        private string correo, nombre, apellido, direccion, pass;

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

        public int Rut
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

        public int Id_perfil
        {
            get
            {
                return id_perfil;
            }

            set
            {
                id_perfil = value;
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

        public string Pass
        {
            get
            {
                return pass;
            }

            set
            {
                pass = value;
            }
        }

        public Usuario()
        {
            this.Init();
        }

        private void Init()
        {
            rut = 0;
            dv = ' ';
            correo = string.Empty;
            nombre = string.Empty;
            apellido = string.Empty;
            telefono = 0;
            id_perfil = 0;
            direccion = string.Empty;
            pass = string.Empty;
        }

        public Usuario(int id, int rut, int telefono, int id_perfil, char dv, string correo, string nombre, string apellido, string direccion, string pass)
        {
            this.Init();
            this.Id = id;
            this.Rut = rut;
            this.Telefono = telefono;
            this.Id_perfil = id_perfil;
            this.Dv = dv;
            this.Correo = correo;
            this.Nombre = nombre;
            this.Apellido = Apellido;
            this.Pass = pass;
            this.Direccion = direccion;
        }

        public bool Crear()
        {
            try
            {
                DALC.Repuestos.Usuario u1 = new DALC.Repuestos.Usuario();

                u1.rut = rut;
                u1.dv = dv.ToString();
                u1.correo = correo;
                u1.nombre = nombre;
                u1.apellido = apellido;
                u1.telefono = telefono;
                u1.id_perfil = id_perfil;
                u1.direccion = direccion;
                u1.pass = pass;

                CommonBC.Modelo.Usuario.Add(u1);
                CommonBC.Modelo.SaveChanges();
                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }
        public Usuario ValidarUsuario(string correo, string pass)
        {
            try
            {
                var a = CommonBC.Modelo.Usuario.First
                   (valor => valor.correo == correo && valor.pass == pass);
                this.Id_perfil = a.id_perfil;
              

                if (a.id == 0)
                {
                    return null;
                }
                else

                {

                    return this;
                }

            }
            catch (Exception)
            {
                return this;
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

        public string Hash(string input)
        {
            using (SHA1Managed sha1 = new SHA1Managed())
            {
                var hash = sha1.ComputeHash(Encoding.UTF8.GetBytes(input));
                var sb = new StringBuilder(hash.Length * 2);

                foreach (byte b in hash)
                {
                    // can be "x2" if you want lowercase
                    sb.Append(b.ToString("X2"));
                }

                return sb.ToString();
            }
        }

        public bool Administrador()
        {

            if (Id_perfil ==1)
            {
                return true;

            }
            else
            {
                return false;
            }


            ////Negocio.Repuestos.CommonBC.
            //try
            //{

            //    //var a = CommonBC.Modelo.Usuario.First
            //    //  (valor => valor.correo == correo && valor.pass == pass);

            //    //if (a.id_perfil==1)
            //    //{
            //    //    return true;
            //    //}
            //    //else
            //    //{
            //    //    return false; 
            //    //}


            //    if (Id_perfil==4)
            //    {
            //        return true;
            //    }
               
               

            //}
            //catch (Exception)
            //{
            //    return false;
            //}
        }
        public bool GerenteGeneral()
        {
            try
            {
                var a = CommonBC.Modelo.Usuario.First
                   (valor => valor.id_perfil == 2);


                if (a.id == 0)
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
        public bool Gerente()
        {
            try
            {
                var a = CommonBC.Modelo.Usuario.First
                   (valor => valor.id_perfil == 3);


                if (a.id == 0)
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
        public bool Mecanico()
        {

            if (Id_perfil == 4)
            {
                return true;

            }
            else
            {
                return false;
            }


            //try
            //{
            //    var a = CommonBC.Modelo.Usuario.First
            //      (valor => valor.correo == correo && valor.pass == pass);

            //    if (a.id_perfil == 4)
            //    {
            //        return true;
            //    }
            //    else
            //    {
            //        return false;
            //    }


            //}
            //catch(Exception)
            //{
            //    return false;
            //}
        }
        public bool Existe()
        {
            try
            {
                var aux = CommonBC.Modelo.Usuario.First
                    (valor => valor.rut == this.Rut);

                return true;


            }
            catch (Exception)
            {

                return false;
            }
        }

        public Usuario BuscarRut(int rut)
        {
            try
            {
                var aux = CommonBC.Modelo.Usuario.First
                    (valor => valor.rut == rut);


                this.rut = aux.rut;
                this.dv = char.Parse(aux.dv);
                this.correo = aux.correo;
                this.nombre = aux.nombre;
                this.apellido = aux.apellido;
                this.telefono = aux.telefono;
                this.id_perfil = aux.id_perfil;
                this.direccion = aux.direccion;


          
                return this;


            }
            catch (Exception)
            {

                return null;
            }
        }

        public bool Modificar( int telefono, int id_perfil, string correo, string nombre, string apellido, string direccion)
        {
            try
            {
                var c = CommonBC.Modelo.Usuario.First
                    (valor => valor.rut == rut);
                c.correo = correo;
                c.nombre = nombre;
                c.apellido = apellido;
                c.telefono = telefono;
                c.id_perfil = id_perfil;
                c.direccion = direccion;
                
              

                //CommonBC.Modelo.Auto.Add(c);
                CommonBC.Modelo.SaveChanges();
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool Eliminar(int rut)
        {
            try
            {
                var aux = CommonBC.Modelo.Usuario.First
                    (valor => valor.rut == rut);

                CommonBC.Modelo.Usuario.Remove(aux);
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

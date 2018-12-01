using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Sucursal
    {
        private int id;
        private string nombre, direccion;

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

        public Sucursal()
        {
            this.Init();
        }

        private void Init()
        {
            id = 0;
            nombre = string.Empty;
            direccion = string.Empty;
        }
        public bool Crear()
        {
            try
            {
                DALC.Repuestos.Sucursal s = new DALC.Repuestos.Sucursal();

                s.nombre = nombre;
                s.direccion = direccion;

                CommonBC.Modelo.Sucursal.Add(s);
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

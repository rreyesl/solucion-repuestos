using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Marca
    {
        private int id;
        private string nombre;

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
        public Marca()
        {
            this.Init();
        }

        private void Init()
        {
            id = 0;
            nombre = string.Empty;
        }

        public bool Crear()
        {
            try
            {
                DALC.Repuestos.Marca m = new DALC.Repuestos.Marca();

                m.nombre = nombre;

                CommonBC.Modelo.Marca.Add(m);
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Perfil
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
        public Perfil()
        {
            this.Init();
        }

        private void Init()
        {
            Id = 0;
            Nombre = string.Empty;
        }
    }
}

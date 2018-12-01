using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Tipo
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
        public Tipo()
        {
            this.Init();
        }

        private void Init()
        {
            id = 0;
            nombre = string.Empty;
        }
    }
}

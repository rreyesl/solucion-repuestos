using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DALC.Repuestos;

namespace Negocio.Repuestos
{
    public class CommonBC
    {
        public static DALC.Repuestos.repuestoEntities _modelo;
        public static repuestoEntities Modelo
        {
            get
            {
                if (_modelo == null)
                {
                    _modelo = new repuestoEntities();
                }
                return _modelo;
            }
        }

        public CommonBC()
        {

        }
    }
}

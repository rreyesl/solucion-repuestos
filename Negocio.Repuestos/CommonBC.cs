using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DALC.Repuestos;

namespace Negocio.Repuestos
{
    public class CommonBC
    {
        public static DALC.Repuestos.Repuestos2Entities4 _modelo;
        public static Repuestos2Entities4 Modelo
        {
            get
            {
                if (_modelo == null)
                {
                    _modelo = new Repuestos2Entities4();
                }
                return _modelo;
            }
        }

        public CommonBC()
        {

        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Repuesto_Modelo
    {
        private int id, id_repuesto, id_modelo;
        private Modelo m;
        private Repuesto r;

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

        public int Id_repuesto
        {
            get
            {
                return id_repuesto;
            }

            set
            {
                id_repuesto = value;
            }
        }

        public Modelo M
        {
            get
            {
                return m;
            }

            set
            {
                m = value;
            }
        }

        public Repuesto R
        {
            get
            {
                return r;
            }

            set
            {
                r = value;
            }
        }

        public Repuesto_Modelo()
        {
            this.Init();
        }

        private void Init()
        {
            id = 0;
            id_repuesto = 0;
            id_modelo = 0;
        }

        public bool Crear()
        {
            try
            {
                DALC.Repuestos.Repuesto_Modelo rm = new DALC.Repuestos.Repuesto_Modelo();

                rm.id_modelo = m.Id;
                rm.id_repuesto = r.Id;

                CommonBC.Modelo.Repuesto_Modelo.Add(rm);
                CommonBC.Modelo.SaveChanges();
                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool EliminarRepuesto(string sku)
        {
            try
            {

                var count = CommonBC.Modelo.Repuesto_Modelo.Count(valor => valor.Repuesto.sku == sku);


                for (int i = 0; i < count; i++)
                {

                    var c = CommonBC.Modelo.Repuesto_Modelo.First
                        (valor => valor.Repuesto.sku == sku);

                    CommonBC.Modelo.Repuesto_Modelo.Remove(c);
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

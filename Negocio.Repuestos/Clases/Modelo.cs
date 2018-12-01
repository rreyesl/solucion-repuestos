using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Modelo
    {
        private int id, anio, id_marca;
        private string nombre, descripcion;

        public int Anio
        {
            get
            {
                return anio;
            }

            set
            {
                anio = value;
            }
        }

        public string Descripcion
        {
            get
            {
                return descripcion;
            }

            set
            {
                descripcion = value;
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

        public int Id_marca
        {
            get
            {
                return id_marca;
            }

            set
            {
                id_marca = value;
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
        public Modelo()
        {
            this.Init();
        }

        private void Init()
        {
            id = 0;
            anio = DateTime.Now.Year;
            id_marca = 0;
            nombre = string.Empty;
            descripcion = string.Empty;
        }

        public bool Crear()
        {
            try
            {
                DALC.Repuestos.Modelo m = new DALC.Repuestos.Modelo();
                DALC.Repuestos.Repuesto_Modelo rm = new DALC.Repuestos.Repuesto_Modelo();

                m.nombre = nombre;
                m.descripcion = descripcion;
                m.anio = anio;
                m.id_marca = id_marca;

      

               

                CommonBC.Modelo.Modelo.Add(m);
              
                CommonBC.Modelo.SaveChanges();
                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }


        public List<Repuesto_Modelo> listModeloByRepuesto(int id)
        {
            try
            {
                var aux = CommonBC.Modelo.Repuesto_Modelo.Where
                  (valor => valor.id_repuesto == id);


                List<Clases.Repuesto_Modelo> listaModelo = new List<Clases.Repuesto_Modelo>();

                foreach (DALC.Repuestos.Repuesto_Modelo item in CommonBC.Modelo.Repuesto_Modelo)
                {
                    Clases.Repuesto_Modelo m = new Clases.Repuesto_Modelo();
                    m.Id = item.id;
                    m.Id_modelo = item.id_modelo;
                    m.Id_repuesto = item.id_repuesto;
                    listaModelo.Add(m);

                }

                List<Clases.Modelo> listaModelos = new List<Clases.Modelo>();

                foreach (DALC.Repuestos.Modelo item in CommonBC.Modelo.Modelo)
                {
                    Clases.Modelo mo = new Clases.Modelo();
                    mo.Id = item.id;
                    mo.Nombre = item.nombre;
                    mo.Descripcion = item.descripcion;
                    mo.Anio = item.anio;
                    mo.Id_marca = item.id_marca;

                    listaModelos.Add(mo);

                }

                // LINQ WHERE IN LISTaMODELOS>>listaModelo
                return listaModelo;
            }
            catch (Exception)
            {

                throw;
            }
        }

      

    }
}

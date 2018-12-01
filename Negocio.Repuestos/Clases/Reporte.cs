using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Reporte
    {
        private int id, id_servicio;
        private string observacion;

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

        public int Id_servicio
        {
            get
            {
                return id_servicio;
            }

            set
            {
                id_servicio = value;
            }
        }

        public string Observacion
        {
            get
            {
                return observacion;
            }

            set
            {
                observacion = value;
            }
        }

        public Reporte()
        {
            this.Init();
        }

        private void Init()
        {
            id = 0;
            id_servicio = 0;
            observacion = string.Empty;
        }

        public bool EliminarServicioReporte(string rut)
        {
            try
            {
                var count = CommonBC.Modelo.Reporte.Count(valor => valor.Servicio.Auto.Cliente.rut == rut);


                for (int i = 0; i < count; i++)
                {

                    var c = CommonBC.Modelo.Reporte.First
                    (valor => valor.Servicio.Auto.Cliente.rut == rut);

                    CommonBC.Modelo.Reporte.Remove(c);
                    CommonBC.Modelo.SaveChanges();

                }

                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool EliminarAutoReporte(string patente)
        {
            try
            {
                var count = CommonBC.Modelo.Reporte.Count(valor => valor.Servicio.Auto.patente == patente);


                for (int i = 0; i < count; i++)
                {

                    var c = CommonBC.Modelo.Reporte.First
                    (valor => valor.Servicio.Auto.patente == patente);

                    CommonBC.Modelo.Reporte.Remove(c);
                    CommonBC.Modelo.SaveChanges();

                }

                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool EliminarUsuario(int rut)
        {
            try
            {
                var count = CommonBC.Modelo.Reporte.Count(valor => valor.Servicio.Usuario.rut == rut);


                for (int i = 0; i < count; i++)
                {

                    var c = CommonBC.Modelo.Reporte.First
                    (valor => valor.Servicio.Usuario.rut == rut);

                    CommonBC.Modelo.Reporte.Remove(c);
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

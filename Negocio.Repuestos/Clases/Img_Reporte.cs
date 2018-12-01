using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Clases
{
    public class Img_Reporte
    {
        private int id, id_reporte;
        private string url;

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

        public int Id_reporte
        {
            get
            {
                return id_reporte;
            }

            set
            {
                id_reporte = value;
            }
        }

        public string Url
        {
            get
            {
                return url;
            }

            set
            {
                url = value;
            }
        }

        public Img_Reporte()
        {
            this.Init();
        }

        private void Init()
        {
            id = 0;
            id_reporte = 0;
            url = string.Empty;
        }

        public bool EliminarReporteIMG(string rut)
        {
            try
            {
                var count = CommonBC.Modelo.img_reporte.Count(valor => valor.Reporte.Servicio.Auto.Cliente.rut == rut);


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
        public bool EliminarAutoReporteIMG(string patente)
        {
            try
            {
                var count = CommonBC.Modelo.img_reporte.Count(valor => valor.Reporte.Servicio.Auto.patente == patente);


                for (int i = 0; i < count; i++)
                {

                    var c = CommonBC.Modelo.img_reporte.First
                    (valor => valor.Reporte.Servicio.Auto.patente == patente);

                    CommonBC.Modelo.img_reporte.Remove(c);
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
                var count = CommonBC.Modelo.img_reporte.Count(valor => valor.Reporte.Servicio.Usuario.rut == rut);


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

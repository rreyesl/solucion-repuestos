//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DALC.Repuestos
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reporte
    {
        public Reporte()
        {
            this.img_reporte = new HashSet<img_reporte>();
        }
    
        public int id { get; set; }
        public int id_servicio { get; set; }
        public string observacion { get; set; }
    
        public virtual ICollection<img_reporte> img_reporte { get; set; }
        public virtual Servicio Servicio { get; set; }
    }
}

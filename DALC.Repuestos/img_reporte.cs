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
    
    public partial class img_reporte
    {
        public int id { get; set; }
        public int id_reporte { get; set; }
        public string img_url { get; set; }
    
        public virtual Reporte Reporte { get; set; }
    }
}

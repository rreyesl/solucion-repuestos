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
    
    public partial class Sucursal
    {
        public Sucursal()
        {
            this.Servicio = new HashSet<Servicio>();
            this.Stock = new HashSet<Stock>();
        }
    
        public int id { get; set; }
        public string nombre { get; set; }
        public string direccion { get; set; }
    
        public virtual ICollection<Servicio> Servicio { get; set; }
        public virtual ICollection<Stock> Stock { get; set; }
    }
}

//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AlkemyDAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class classes_registry
    {
        public Nullable<int> file_number { get; set; }
        public Nullable<int> class_code { get; set; }
        public int registry_ID { get; set; }
    
        public virtual classes classes { get; set; }
        public virtual students students { get; set; }
    }
}
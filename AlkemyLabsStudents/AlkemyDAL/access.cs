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
    
    public partial class access
    {
        public int user_password { get; set; }
        public string menu { get; set; }
        public string enabled { get; set; }
        public int access_id { get; set; }
    
        public virtual admin_account admin_account { get; set; }
        public virtual students students { get; set; }
    }
}
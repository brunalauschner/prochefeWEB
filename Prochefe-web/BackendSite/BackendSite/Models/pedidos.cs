//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BackendSite.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class pedidos
    {
        public int id { get; set; }
        public Nullable<int> id_produto { get; set; }
        public int id_dono { get; set; }
        public int quantidade { get; set; }
    
        public virtual clientes clientes { get; set; }
        public virtual produtos produtos { get; set; }
    }
}

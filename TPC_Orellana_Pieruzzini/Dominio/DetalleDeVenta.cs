using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class DetalleDeVenta
    {
        public int id { get; set; }
        public int Pedido { get; set; }

        public int Articulos { get; set; }
        
        public int Cantidad { get; set; } 

        public Decimal Precio { get; set; }
    }
}

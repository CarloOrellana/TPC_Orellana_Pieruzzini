using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
     public class Pedido
    {
        public Usuario Datos { get; set; }

        public int NumeroFactura { get; set; }

        public DateTime Fecha { get; set; }

        public Decimal Total { get; set; }

        public FormasDePago Pago { get; set; }
    }
}

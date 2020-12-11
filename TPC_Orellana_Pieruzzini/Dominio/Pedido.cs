using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
     public class Pedido
    {
        public int Id { get; set; }
        public int Datos { get; set; }

        public int NumeroFactura { get; set; }

        public DateTime Fecha { get; set; }

        public decimal Total { get; set; }

        public int Pago { get; set; }
        public int EstadoEntrega { get; set; }
        public int EstadoCobro { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Ventas
    {
        public int NumeroFactura { get; set; }

        public DateTime Fecha { get; set; }

        public Clientes Cliente { get; set; }

        public decimal Total { get; set; }

        public string FormaPago { get; set; }

        public int Cantidad { get; set; }

    }
}

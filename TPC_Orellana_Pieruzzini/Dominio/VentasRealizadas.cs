using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class VentasRealizadas
    {      
        public int id { get; set; }
        public string Nombre { get; set; }
        public int NumeroFactura { get; set; }
        public DateTime Fecha { get; set; }
        public string Codigo { get; set; }
        public string DescripcionArt { get; set; }
        public decimal Total { get; set; }
        public string Descripcion { get; set; }
        public string EstadoEntrega { get; set; }
        public string EstadoCobro { get; set; }

    }
}








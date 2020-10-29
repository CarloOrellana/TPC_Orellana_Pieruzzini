using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Articulos
    {
        public int id { get; set; }
        public string CodigoArticulo { get; set; }

        public string DescricpcionArticulo { get; set; }

        public int Stock { get; set; }
        public decimal Precio { get; set; }
        public bool Estado { get; set; }

        public string Imagen { get; set; }

        

        
    }
}

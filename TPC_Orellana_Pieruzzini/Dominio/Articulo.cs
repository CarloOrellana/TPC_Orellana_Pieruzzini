using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Articulo
    {
        private string urlImagen;

        public string Codigo { get; set; }

        public string Descripcion { get; set; }

        public int Stock { get; set; }

        public decimal Precio { get; set; }

        public string UrlImagen { get => urlImagen; set => urlImagen = value; }

        public bool Estado { get; set; }
    }
}

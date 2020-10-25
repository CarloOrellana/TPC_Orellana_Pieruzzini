using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Clientes
    {
        public int NumeroCliente { get; set; }

        public string Nombre { get; set; }

        public string Apellido { get; set; }

        public int Dni { get; set; }
        
        public string Mail { get; set; }

        public string Direccion { get; set; }

        public int Telefono { get; set; }

        public bool EstadoCliente { get; set; }

        public string Cuil { get; set; }
    }
}

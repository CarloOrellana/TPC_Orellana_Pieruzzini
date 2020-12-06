using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Usuario
    {
        public int id { get; set; }//Id
        public int NombreUsuario { get; set; } //DniDP

        public string Contraseña { get; set; }//Contrasenia

        public Rol Rol { get; set; }//IdRol
    }
}

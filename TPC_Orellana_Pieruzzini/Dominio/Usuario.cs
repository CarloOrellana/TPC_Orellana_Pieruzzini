﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Usuario
    {
        public int id { get; set; }
        public int NombreUsuario { get; set; } 

        public string Contraseña { get; set; }

        public Rol Rol { get; set; }
    }
}
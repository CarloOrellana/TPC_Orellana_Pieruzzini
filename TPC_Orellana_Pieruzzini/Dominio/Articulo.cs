﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Articulo
    {
        //private string urlImagen;
        public int Id { get; set; }

        public string Codigo { get; set; }

        public string Descripcion { get; set; }

        public int Stock { get; set; }

        public decimal Precio { get; set; }

        //public string UrlImagen { get => urlImagen; set => urlImagen = value; }
        public string UrlImagen { get; set; }
        public bool Estado { get; set; }
    }
}
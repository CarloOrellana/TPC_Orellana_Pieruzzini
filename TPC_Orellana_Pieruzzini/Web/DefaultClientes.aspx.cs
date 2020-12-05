using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocios;

namespace Web
{
    public partial class DefaultClientes : System.Web.UI.Page
    {
        public List<Articulo> Listar { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Negocio negocio = new Negocio();
            Listar = negocio.Listar();
            
        }
    }
}
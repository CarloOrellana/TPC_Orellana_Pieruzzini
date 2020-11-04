using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace Web
{
    public partial class DefaultClientes : System.Web.UI.Page
    {
        public List<Articulo> Listar { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Negocio.Negocio negocio = new Negocio.Negocio();
            Listar = negocio.Listar();
            
        }
    }
}
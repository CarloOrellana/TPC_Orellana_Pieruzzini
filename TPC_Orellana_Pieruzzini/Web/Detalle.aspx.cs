using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocios;
using System.Data;

namespace Web
{
    public partial class Detalle : System.Web.UI.Page
    {
        public Articulo articulo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                List<Articulo> Busqueda;
                Negocio BuscarArticulo = new Negocio();
                Busqueda = BuscarArticulo.Listar();

                int IdAux = Convert.ToInt32(Request.QueryString["id"]);
                articulo = Busqueda.Find(i=> i.Id == IdAux);
            }
            catch(Exception ex)
            {
                ex.ToString();
            }

        }
    }
}
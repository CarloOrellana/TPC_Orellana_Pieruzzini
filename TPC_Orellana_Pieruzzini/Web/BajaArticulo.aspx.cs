using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocios;
using Dominio;


namespace Web
{
    public partial class BajaArticulo : System.Web.UI.Page
    {
        private List<Articulos> Busqueda;

        public List<Articulos> Lista { get; private set; }

        public object Y { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        
       public void btnAceptar_Click(object sender, EventArgs e)
       {
           Articulo nuevoArticulo = new Articulo();
            Negocio newArt = new Negocio();

            nuevoArticulo.Codigo = txtBusqueda.Text;
          
        

            newArt.BajaArticulo(nuevoArticulo);

            Response.Write("<script LANGUAGE='JavaScript' >alert('Se dio de baja correctamente el Articulo')</script>");
                       
        }
    }
   
    
}
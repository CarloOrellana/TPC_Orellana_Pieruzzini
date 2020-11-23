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
    public partial class ModificarArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        public void btnModificar_Click(object sender, EventArgs e)
        {
            Articulo nuevoArticulo = new Articulo();
            Negocio newArt = new Negocio();

            nuevoArticulo.Codigo = txtCodigo.Text;
            nuevoArticulo.Descripcion = txtDescripcion.Text;
            nuevoArticulo.Stock = Convert.ToInt32(txtStock.Text);
            nuevoArticulo.Precio = Convert.ToDecimal(txtPrecio.Text);

            newArt.ModificarArticulo(nuevoArticulo);
            Response.Write("<script LANGUAGE='JavaScript' >alert('Se modifico correctamente el Articulo')</script>");
        }
    }
    
}
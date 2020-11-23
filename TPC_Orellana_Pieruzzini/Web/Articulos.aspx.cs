using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocios;


namespace Web
{
    public partial class Articulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void btnAgregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarArticulo.aspx");

        }

        public void btnBaja_Click(object sender, EventArgs e)
        {
            Response.Redirect("BajaArticulo.aspx");
        }

    }
}
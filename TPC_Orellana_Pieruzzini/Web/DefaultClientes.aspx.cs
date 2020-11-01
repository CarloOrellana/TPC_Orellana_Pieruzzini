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
        protected void Page_Load(object sender, EventArgs e)
        {
            Negocio.Negocio negocio = new Negocio.Negocio();
            GridView1.DataSource = negocio.Listar();
            GridView1.DataBind();
            
        }
    }
}
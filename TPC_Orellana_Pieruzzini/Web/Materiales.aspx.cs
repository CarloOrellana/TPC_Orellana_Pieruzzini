using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class Materiales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAltaMP_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarMateriales.aspx");
        }

        protected void btnModificaMP_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModificarMateriales.aspx");
        }
    }
}
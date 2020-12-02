using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class Clientes : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int comprobar =(int) Session["Cliente"];
            if(comprobar == 0)
            {
                PerfilEnlace.Visible = false;
                CerrarSesion.Visible = false;
            }
            else { Inicio.Visible = false; }
        }
    }
}
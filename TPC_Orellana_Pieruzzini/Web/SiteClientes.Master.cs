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
                btnCerrarSesion.Visible = false;
              
            }
            else
            { 
                Inicio.Visible = false;
              
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["Carrito"] = null;
            Response.Redirect("Default.aspx");
        }
    }
}
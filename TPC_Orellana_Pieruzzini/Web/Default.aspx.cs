using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocios;

namespace Web
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (!Page.IsValid)
                return;

            Negocio negocio = new Negocio();
            int usuario = Convert.ToInt32(txtUsuario.Text);
            if(negocio.Logearse(usuario, txtContraseña.Text))
            {
                Response.Redirect("DefaultAdministrador.aspx");
            }
            else
            {
                Response.Write("<script> alert('Usuario Inexistente');</script>");
            }
        }

    }
}
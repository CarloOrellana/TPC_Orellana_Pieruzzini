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
            Session["Admin"] = 0;
            Session["Cliente"] = 0;
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
                if(negocio.Rol(usuario) == 1)
                {
                    Session["Admin"] = usuario;
                    Response.Redirect("DefaultAdministrador.aspx");
                }
                else if(negocio.Rol(usuario) == 2)
                {
                    Session["Cliente"] = usuario;
                    if(Session["Carrito"] != null)
                    {
                        Response.Redirect("Carrito.aspx");
                    }
                    else
                    {
                        Response.Redirect("DefaultClientes.aspx");
                    }
                    
                }

                
                
            }
            else
            {
                Response.Write("<script> alert('Usuario Inexistente');</script>");
            }
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocios;

namespace Web
{
    public partial class RecuperarContraseña : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblConfirmar.Visible = false;
            lblError.Visible = false;
        }

        protected void btnRecuperar_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (!Page.IsValid)
                return;

            int usuario = Convert.ToInt32(txtUsu.Text);
            string mail = txtCorreo.Text;
            
            try
            {
                Negocio recuperar = new Negocio();
                if(recuperar.EnviarMail(mail,usuario))
                {
                    lblConfirmar.Visible = true;
                }
                else
                {
                    lblError.Visible = true;
                }


            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}
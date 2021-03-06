﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class DefaultAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int usuario = (int)Session["Admin"];
            if(usuario == 0)
            {
                Response.Redirect("Default.aspx");
            }
        }

        public void btnListado_Click(object sender, EventArgs e)
        {
            Response.Redirect("Listados.aspx");
        }

        public void btnArticulos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Articulos.aspx");
        }
                
        protected void btnMateriales_Click(object sender, EventArgs e)
        {
            Response.Redirect("Materiales.aspx");
        }
    }
}
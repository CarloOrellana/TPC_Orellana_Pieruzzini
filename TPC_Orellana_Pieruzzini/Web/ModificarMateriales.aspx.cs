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
    public partial class ModificarMateriales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            MateriaPrima nuevoMaterial = new MateriaPrima();
            Negocio newArt = new Negocio();

          
            nuevoMaterial.Descripcion = txtDescripcion.Text;
            nuevoMaterial.Stock = Convert.ToInt32(txtStock.Text);
           

            newArt.ModificarMaterial(nuevoMaterial);
            Response.Write("<script LANGUAGE='JavaScript' >alert('Se modifico correctamente la Materia Prima')</script>");
        }
    }
}
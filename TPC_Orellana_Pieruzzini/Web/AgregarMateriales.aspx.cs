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
    public partial class AgregarMateriales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            MateriaPrima nuevoMaterial = new MateriaPrima();
            Negocio newArt = new Negocio();

            nuevoMaterial.Descripcion = txtDescripcion.Text;
            nuevoMaterial.Stock = Convert.ToInt32(txtStock.Text);


            newArt.AgregarMaterial(nuevoMaterial);

            Response.Write("<script LANGUAGE='JavaScript' >alert('Se cargo correctamente la Materia Prima')</script>");


        }
    }
}
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
            Negocio negocio = new Negocio();
            dgvListas.DataSource = negocio.ListarMateria();
            dgvListas.DataBind();
            txtId.Visible = false;
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            MateriaPrima nuevoMaterial = new MateriaPrima();
            Negocio newArt = new Negocio();

            nuevoMaterial.Id = Convert.ToInt32(txtId.Text);
            nuevoMaterial.Descripcion = txtDescripcion.Text;
            nuevoMaterial.Stock = Convert.ToInt32(txtStock.Text);


            newArt.ModificarMaterial(nuevoMaterial);
            Response.Write("<script LANGUAGE='JavaScript' >alert('Se modifico correctamente la Materia Prima')</script>");
            Response.Redirect("ModificarMateriales.aspx");
        }

        protected void dgvListas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            txtId.Text = dgvListas.Rows[index].Cells[1].Text;
            txtDescripcion.Text = dgvListas.Rows[index].Cells[2].Text;
            txtStock.Text = dgvListas.Rows[index].Cells[3].Text;
            txtId.Visible = false;
        }

    }
}
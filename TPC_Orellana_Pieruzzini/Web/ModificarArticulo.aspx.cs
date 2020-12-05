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
    public partial class ModificarArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Negocio negocio = new Negocio();
            dgvListas.DataSource = negocio.Listar();
            dgvListas.DataBind();
            txtId.Visible = false;
        }

        public void btnModificar_Click(object sender, EventArgs e)
        {

            Articulo nuevoArticulo = new Articulo();
            Negocio newArt = new Negocio();

            nuevoArticulo.Id = Convert.ToInt32(txtId.Text);
            nuevoArticulo.Codigo = txtCodigo.Text;
            nuevoArticulo.Descripcion = txtDescripcion.Text;
            nuevoArticulo.Stock = Convert.ToInt32(txtStock.Text);
            nuevoArticulo.Precio = Convert.ToDecimal(txtPrecio.Text);

            newArt.ModificarArticulo(nuevoArticulo);
            Response.Write("<script LANGUAGE='JavaScript' >alert('Se modifico correctamente el Articulo')</script>");
            Response.Redirect("ModificarArticulo.aspx");

        }

        protected void dgvListas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            txtId.Text = dgvListas.Rows[index].Cells[1].Text;
            txtCodigo.Text = dgvListas.Rows[index].Cells[2].Text;
            txtDescripcion.Text = dgvListas.Rows[index].Cells[3].Text;
            txtStock.Text = dgvListas.Rows[index].Cells[4].Text;
            txtPrecio.Text = dgvListas.Rows[index].Cells[5].Text;
            txtId.Visible = false;
        }

    }
    
}
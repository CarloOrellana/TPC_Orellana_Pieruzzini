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
    public partial class BajaArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Negocio negocio = new Negocio();
            dgvListas.DataSource = negocio.Listar();
            dgvListas.DataBind();
            txtId.Visible = false;
        }

        
       public void btnAceptar_Click(object sender, EventArgs e)
       {
           Articulo nuevoArticulo = new Articulo();
            Negocio newArt = new Negocio();

            nuevoArticulo.Id = Convert.ToInt32(txtId.Text);
            nuevoArticulo.Codigo = txtCodigo.Text;
            nuevoArticulo.Descripcion = txtDescripcion.Text;
            newArt.BajaArticulo(nuevoArticulo);

            Response.Write("<script LANGUAGE='JavaScript' >alert('Se dio de baja correctamente el Articulo')</script>");
            Response.Redirect("BajaArticulo.aspx");

        }

        protected void dgvListas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            txtId.Text = dgvListas.Rows[index].Cells[1].Text;
            txtCodigo.Text = dgvListas.Rows[index].Cells[2].Text;
            txtDescripcion.Text = dgvListas.Rows[index].Cells[3].Text;
            txtId.Visible = false;
        }


    }
   
    
}
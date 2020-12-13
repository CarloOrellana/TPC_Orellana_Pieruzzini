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
    public partial class PerfilAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Negocio negocio = new Negocio();
            int comprobar = (int)Session["Admin"];
            dgvListas.DataSource = negocio.ListarUsuarios(comprobar);
            dgvListas.DataBind();
            txtId.Visible = false;
            txtContrasena.Visible = false;
            btnAceptar.Visible = false;
           
            GridView1.DataSource = negocio.ListarCliente(comprobar);
            GridView1.DataBind();
            txtDNI.Visible = false;
            txtDNI.Visible = false;
            txtDireccion.Visible = false;
            txtDireccion.Visible = false;
            txtTel.Visible = false;
            txtCuil.Visible = false;
            btnCambiar.Visible = false;

        }

        protected void dgvListas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            txtId.Text = dgvListas.Rows[index].Cells[1].Text;
            txtContrasena.Text = dgvListas.Rows[index].Cells[3].Text;
            txtId.Visible = false;
            txtContrasena.Visible = true;
            btnAceptar.Visible = true;
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();
            Negocio newUsuario = new Negocio();
            usuario.id = Convert.ToInt32(txtId.Text);
            usuario.Contraseña = txtContrasena.Text;
            newUsuario.ModificaPass(usuario);
            Actualizaras();
        }
        public void Actualizaras()
        {
            Response.Redirect("PerfilAdministrador.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            txtDNI.Text = GridView1.Rows[index].Cells[1].Text;
            txtDireccion.Text = GridView1.Rows[index].Cells[4].Text;
            txtTel.Text = GridView1.Rows[index].Cells[5].Text;
            txtCuil.Text = GridView1.Rows[index].Cells[6].Text;
           
            txtDireccion.Visible = true;
            txtDireccion.Visible = true;
            txtTel.Visible = true;
            txtCuil.Visible = true;
            btnCambiar.Visible = true;
        }

        protected void btnCambiar_Click(object sender, EventArgs e)
        {
            Persona persona = new Persona();
            Negocio newPersona = new Negocio();
            persona.DNI = Convert.ToInt32(txtDNI.Text);
            persona.Direccion = txtDireccion.Text;
            persona.Telefono = txtTel.Text;
            persona.Cuil = Convert.ToInt32(txtCuil.Text);
            newPersona.ModificaDP(persona);
            Actualizaras();
        }
    }

}
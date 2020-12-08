using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Web
{
    public partial class Carrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dgvCarrito.DataSource = (DataTable)Session["Carrito"];
            dgvCarrito.DataBind();
        }

        protected void dgvCarrito_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[1].Visible = false;
            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[1].Visible = false;
            }
        }

        protected void dgvCarrito_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = (DataTable)Session["Carrito"];
            dt.Rows.RemoveAt(e.RowIndex);
            Session["Carrito"] = dt;
            dgvCarrito.DataSource = Session["Carrito"];
            dgvCarrito.DataBind();
        }

        protected void btnComprar_Click(object sender, EventArgs e)
        {
            int var =(int) Session["Cliente"];
            if (var==0)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Redirect("DatosDePago.aspx");
            }
            
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Session["Carrito"] = null;
            Response.Redirect("DefaultClientes.aspx");
        }
    }
}
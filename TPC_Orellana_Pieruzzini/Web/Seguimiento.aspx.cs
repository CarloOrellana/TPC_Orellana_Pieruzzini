using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocios;
using Dominio;
using System.Data;

namespace Web
{
    public partial class Seguimiento : System.Web.UI.Page
    {
        public object TextBox3 { get;  set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Negocio negocio = new Negocio();
            dgvListas1.DataSource = negocio.ListarDetalleVenta();
            dgvListas1.DataBind();        
        }
        protected void dgvListas1_RowCommand(object sender, GridViewCommandEventArgs e) {  }

        protected void DropDownList1_SelectedIndexChanged(object sende, EventArgs e)
        {
            string usado = ((DropDownList)dgvListas1.FindControl("DropDownList1")).SelectedValue;
        }

        protected void btnaceptar_Click(object sender, EventArgs e)
        {
            Pedido pedido = new Pedido();
            Negocio newPedido = new Negocio();
            pedido.EstadoEntrega = Convert.ToInt32(TextBox3);

            newPedido.ActualizaVenta(pedido);
            Response.Redirect("Seguimiento.aspx");
        }
    }
}

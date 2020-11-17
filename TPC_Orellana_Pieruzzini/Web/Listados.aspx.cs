using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocios;

namespace Web
{
    public partial class Listados : System.Web.UI.Page
    {
        public int j;
        public void btnArticulos_Click(object sender, EventArgs e)
        {
            Negocio negocio = new Negocio();
            j = 1;
            dgvListas.DataSource = negocio.Listar();
            dgvListas.DataBind();
        }

        public void btnMateriales_Click(object sender, EventArgs e)
        {
            Negocio negocio = new Negocio();
            j = 2;
            dgvListas.DataSource = negocio.ListarMateria();
            dgvListas.DataBind();
        }

        public void btnClientes_Click(object sender, EventArgs e)
        {
            j = 3;
            Negocio negocio = new Negocio();
            dgvListas.DataSource = negocio.ListarClientes();
            dgvListas.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
         protected void dgvListas_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(j == 1)
            {
                e.Row.Cells[0].Visible = false;
                e.Row.Cells[5].Visible = false;
                e.Row.Cells[6].Visible = false;
            }
            else if(j == 2)
            {
                e.Row.Cells[0].Visible = false;
            }
            else if(j==3)
            {
                e.Row.Cells[6].Visible = false;
            }

        }

    }
}
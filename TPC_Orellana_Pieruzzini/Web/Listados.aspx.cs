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

        public void btnArticulos_Click(object sender, EventArgs e)
        {
            Negocio negocio = new Negocio();
            dgvListas.DataSource = negocio.Listar();
            dgvListas.DataBind();
        }

        public void btnMateriales_Click(object sender, EventArgs e)
        {
            Negocio negocio = new Negocio();
            dgvListas.DataSource = negocio.ListarMateria();
            dgvListas.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
         protected void dgvListas_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //e.Row.Cells[0].Visible = false;
            //e.Row.Cells[5].Visible = false;
            for(int i =0; i< dgvListas.Columns.Count;i++)
            {
                if(dgvListas.Columns[i].HeaderText == "Id")
                {
                    dgvListas.Columns[i].Visible = false;
                }
            }
        }

    }
}
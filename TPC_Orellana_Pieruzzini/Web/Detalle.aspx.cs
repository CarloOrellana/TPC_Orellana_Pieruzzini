using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocios;
using System.Data;

namespace Web
{
    public partial class Detalle : System.Web.UI.Page
    {
        public Articulo articulo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                List<Articulo> Busqueda;
                Negocio BuscarArticulo = new Negocio();
                Busqueda = BuscarArticulo.Listar();

                int IdAux = Convert.ToInt32(Request.QueryString["id"]);
                articulo = Busqueda.Find(i=> i.Id == IdAux);
                txtCantidad.Visible = false;
                
            }
            catch(Exception ex)
            {
                ex.ToString();
            }

        }

        public DataTable CrearTabla()
        {
            DataTable td = new DataTable();

            td.Columns.Add("Id");
            td.Columns.Add("Codigo");
            td.Columns.Add("Articulo");
            td.Columns.Add("Cantidad");
            td.Columns.Add("Precio Unit");
            td.Columns.Add("Precio Final");
           
            return td;
        }

        public void AgregarDatosTabla(DataTable tabla, int id, string codigo, string articulo, int cantidad, float precioU )
        {

            DataRow dr = tabla.NewRow();
            dr["Id"] = id;
            dr["Codigo"] = codigo;
            dr["Articulo"] = articulo;
            dr["Cantidad"] = cantidad;
            dr["Precio Unit"] = precioU;
            dr["Precio Final"] = cantidad* precioU;

            tabla.Rows.Add(dr);

        }

        protected void btnCarrito_Click(object sender, EventArgs e)
        {
            List<Articulo> Busqueda;
            Negocio BuscarArticulo = new Negocio();
            Busqueda = BuscarArticulo.Listar();

            int IdAux = Convert.ToInt32(Request.QueryString["id"]);
            articulo = Busqueda.Find(i => i.Id == IdAux);

            int cantidad = int.Parse(ddlCantidad.SelectedItem.Value);
            if(cantidad==10)
            {
                cantidad = Convert.ToInt32(txtCantidad.Text);
            }

            if (Session["Carrito"] == null)
            {
                Session["Carrito"] = CrearTabla();
            }

            AgregarDatosTabla((DataTable)Session["Carrito"], articulo.Id, articulo.Codigo.ToString(), articulo.Descripcion.ToString(), cantidad, (float)articulo.Precio) ;
            Response.Redirect("Carrito.aspx");

        }
        
        protected void ddlCantidad_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            var valor = int.Parse(ddlCantidad.SelectedItem.Value);
            if(valor == 10)
            {
                ddlCantidad.Visible = false;
                txtCantidad.Visible = true;
            }
        }

    }
}
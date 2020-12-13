using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocios;
using System.Data;
using System.Threading;
using System.Globalization;


namespace Web
{
    public partial class DatosDePago : System.Web.UI.Page
    {
        public int var = 1;
        public Persona persona { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Negocio neg = new Negocio();
            int Usuario = (int)Session["Cliente"];
            persona = neg.DatosCliente(Usuario);

            lblDni.Text =Convert.ToString( persona.DNI);
            lblNombre.Text = persona.Nombre;
            lblApellido.Text = persona.Apellido;
            lblDireccion.Text = persona.Direccion;
            lblTelefono.Text = persona.Telefono;
            lblMail.Text = persona.Mail;
            txtNumeroTarjeta.Visible = false;
            txtClave.Visible = false;
            txtMes.Visible = false;
            txtAnio.Visible = false;

        }

        protected void ddlFormaPago_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            int valor = int.Parse(ddlFormaPago.SelectedItem.Value);
            if(valor == 2 || valor == 3)
            {
                txtNumeroTarjeta.Visible = true; ;
                txtClave.Visible = true ;
                txtMes.Visible = true;
                txtAnio.Visible = true;
            }
            var = valor;
        }

        protected void btnConfirmarCompra_Click(object sender, EventArgs e)
        {
            Pedido pedido = new Pedido();
            DetalleDeVenta detalle = new DetalleDeVenta();
            Negocio neg = new Negocio();
            Random rnd = new Random();
            int usuario = (int)Session["Cliente"];
            string forma = "Efectivo";
            DataTable td = (DataTable)Session["Carrito"];

            pedido.Datos = neg.DatosUsuario(usuario);
            //pedido.NumeroFactura =rnd.Next();
            pedido.NumeroFactura = 1234;
            pedido.Fecha = DateTime.Now;

            foreach(DataRow row in td.Rows)
            {
                pedido.Total += Convert.ToDecimal( row["Precio Final"].ToString());
            }

            if(var == 2)
            {
                forma = "Debito";
            }
            else if(var == 3)
            {
                forma = "Credito";
            }
            else if(var == 4)
            {
                forma = "Mercadopago";
            }
            pedido.Pago= neg.DatoTarjeta(forma);
            neg.Guardarventa(pedido.Datos,pedido.NumeroFactura,pedido.Fecha,pedido.Total,pedido.Pago);


            detalle.Pedido= neg.DatoPedido(pedido.NumeroFactura);
            foreach(DataRow row in td.Rows)
            {
                detalle.Articulos = Convert.ToInt32(row["Id"].ToString());
                detalle.Cantidad = Convert.ToInt32(row["Cantidad"].ToString());
                detalle.Precio = Convert.ToDecimal(row["Precio Unit"].ToString());
                neg.GuardarDetallesVentas(detalle.Pedido,detalle.Articulos,detalle.Cantidad, detalle.Precio);
            }

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Carrito.aspx");
        }
    }
}
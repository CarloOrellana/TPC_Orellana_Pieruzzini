using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocios;

namespace Web
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (!Page.IsValid)
               return;

            try
            {
                Persona datos = new Persona();
                Usuario datosUsu = new Usuario();
                Rol rol = new Rol();

                datosUsu.Contraseña = txtContraseña.Text;
                string confirmar = txtConfirmarContraseña.Text;

                datos.Nombre = txtNombre.Text;
                datos.Apellido = txtApellido.Text;
                datos.DNI = Convert.ToInt32(txtDni.Text);
                datos.Direccion = txtDireccion.Text;
                datos.Telefono = txtTelefono.Text;
                datos.Mail = txtMail.Text;
                datos.Cuil = Convert.ToInt64(txtCuil.Text);
                datos.Estado = true;

                datosUsu.NombreUsuario = Convert.ToInt32(txtDni.Text);
                rol.NombreRol = "Cliente";
                rol.Estado = true;

                if (string.Compare(datosUsu.Contraseña, confirmar) == 0)
                {
                    Negocio comprobar = new Negocio();
                    if( comprobar.ComprobarExitenciaUsuario(datos.DNI))
                    {
                        comprobar.RegistrarUsuario(datos, datosUsu, rol);
                        Response.Write("<script LANGUAGE='JavaScript' >alert('va bien')</script>");
                    }
                    else
                    {
                        Response.Write("<script LANGUAGE='JavaScript' >alert('Este Usuario ya existe')</script>");
                    }
                    
                }
                 else
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('mal')</script>");
                }


            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}
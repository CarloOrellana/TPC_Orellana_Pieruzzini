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


                datos.Nombre = txtNombre.Text;
                datos.Apellido = txtApellido.Text;
                datos.DNI = Convert.ToInt32(txtDni.Text);
                datos.Direccion = txtDireccion.Text;
                datos.Telefono = txtTelefono.Text;
                datos.Mail = txtMail.Text;
                datos.Cuil = Convert.ToInt64(txtCuil.Text);
                datos.Estado = true;

                datosUsu.Contraseña = txtContraseña.Text;
                string confirmar = txtConfirmarContraseña.Text;
                datosUsu.NombreUsuario = Convert.ToInt32(txtDni.Text);

                rol.NombreRol = "Cliente";
                rol.Estado = true;

                if (string.Compare(datosUsu.Contraseña, confirmar) == 0)
                {
                    Negocio comprobar = new Negocio();
                    if( comprobar.ComprobarExitenciaUsuario(datos.DNI))
                    {
                        if(comprobar.RegistrarRol(rol))
                        {
                            if(comprobar.RegistrarPersona(datos))
                            {
                                if(comprobar.RegistrarUsuario(datosUsu))
                                {
                                    Response.Write("<script LANGUAGE='JavaScript' >alert('Se Registro Correctamente')</script>");
                                    Response.Redirect("Default.aspx");
                                }
                            }
                        }
                        else { Response.Write("<script LANGUAGE='JavaScript' >alert('No se completar el Registro')</script>"); }
                        
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
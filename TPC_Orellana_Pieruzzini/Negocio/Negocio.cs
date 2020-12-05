using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
using System.Net;
using Dominio;

namespace Negocios
{
    public class Negocio
    {
        public List<Articulo> Listar()
        {
            List<Articulo> lista = new List<Articulo>();
            AccesoDatos datos = new AccesoDatos();


            try
            {
                datos.Setear("select * from Articulos where Estado=1");
                datos.Consultar();

                while (datos.Lector.Read())
                {
                    Articulo aux = new Articulo();
                    aux.Id = datos.Lector.GetInt32(0);
                    aux.Codigo = datos.Lector.GetString(1);
                    aux.Descripcion = datos.Lector.GetString(2);
                    aux.Stock = (int)datos.Lector.GetInt64(3);
                    aux.Precio = datos.Lector.GetDecimal(4);
                    // aux.UrlImagen = NewMethod(datos);
                    //aux.UrlImagen = (string)datos.Lector["Imagen"];
                    aux.Estado = (bool)datos.Lector["Estado"];

                    lista.Add(aux);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            datos.Cerrar();
            return lista;
        }

        public List<MateriaPrima> ListarMateria()
        {
            List<MateriaPrima> lista = new List<MateriaPrima>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.Setear("select * from MateriaPrima");
                datos.Consultar();

                while (datos.Lector.Read())
                {
                    MateriaPrima aux = new MateriaPrima();
                    aux.Id = datos.Lector.GetInt32(0);
                    aux.Descripcion = datos.Lector.GetString(1);
                    aux.Stock = (int)datos.Lector.GetInt64(2);

                    lista.Add(aux);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            datos.Cerrar();
            return lista;

        }

        public List<Persona> ListarClientes()
        {
            List<Persona> lista = new List<Persona>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.Setear("select * from vw_ClientesActivos1");
                datos.Consultar();

                while (datos.Lector.Read())
                {
                    Persona aux = new Persona();
                    aux.DNI = datos.Lector.GetInt32(0);
                    aux.Nombre = datos.Lector.GetString(1);
                    aux.Apellido = datos.Lector.GetString(2);
                    aux.Direccion = datos.Lector.GetString(3);
                    aux.Telefono = datos.Lector.GetString(4);
                    aux.Mail = datos.Lector.GetString(5);


                    lista.Add(aux);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            datos.Cerrar();
            return lista;

        }

        public Boolean Logearse(int usuario, string contraseña)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.Setear("select DniDP, Contrasenia from Usuario where DniDP = " + "'" + usuario + "'" + "AND Contrasenia = " + "'" + contraseña + "'");
                datos.Consultar();

                if(datos.Lector.Read())
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            finally
            {
                datos.Cerrar();
            }
        }

        public int Rol(int usuario)
        {
            AccesoDatos datos = new AccesoDatos();
            int rol;

            try
            {
                datos.Agregar("@id",usuario);
                datos.Setear("select r.Id from Rol as r inner join Usuario as u on u.IdRol = r.Id where  u.DniDP= @id;");
                datos.Consultar();
                
                if (datos.Lector.Read())
                {
                  rol = datos.Lector.GetInt32(0);
                  return rol;
                }
                else { return 0; }
                
            }
            finally
            {
                datos.Cerrar();
            }
        }

        public void AgregarArticulo(Articulo nuevoArticulo)
        {
            AccesoDatos datos = new AccesoDatos();
         
                datos.Setear("INSERT INTO Articulos (CodigoArticulo, Descripcionarticulo ,Stock, Precio, Estado) VALUES (@CODIGO, @DESCRIPCION, @STOCK, @PRECIO, @ESTADO)");
                datos.Agregar("@CODIGO", nuevoArticulo.Codigo);
                datos.Agregar("@DESCRIPCION", nuevoArticulo.Descripcion);
                datos.Agregar("@STOCK", nuevoArticulo.Stock);
                datos.Agregar("@PRECIO", nuevoArticulo.Precio);
                datos.Agregar("@ESTADO", nuevoArticulo.Estado);

                datos.Query();
            datos.Cerrar();
            
        }

        public void ModificarArticulo(Articulo nuevoArticulo)
        {
            AccesoDatos datos = new AccesoDatos();
            datos.Setear("update Articulos set CodigoArticulo=@CODIGO, Descripcionarticulo=@DESCRIPCION ,Stock=@STOCK, Precio=@PRECIO where Id = @ID");
            datos.Agregar("@ID", nuevoArticulo.Id);
            datos.Agregar("@CODIGO", nuevoArticulo.Codigo);
            datos.Agregar("@DESCRIPCION", nuevoArticulo.Descripcion);
            datos.Agregar("@STOCK", nuevoArticulo.Stock);
            datos.Agregar("@PRECIO", nuevoArticulo.Precio);
           
            datos.Query();
            datos.Cerrar();
        }

        public void BajaArticulo(Articulo nuevoArticulo)
        {
            AccesoDatos datos = new AccesoDatos();
            datos.Setear("update Articulos set CodigoArticulo =@CODIGO, Estado =0 where Id=@ID");
            datos.Agregar("@ID", nuevoArticulo.Id);
            datos.Agregar("@CODIGO", nuevoArticulo.Codigo);
            datos.Agregar("@ESTADO", nuevoArticulo.Estado);
            datos.Query();
            datos.Cerrar();
        }
        public string getCodigoArticulo(Articulo nuevoArticulo)
        {
            AccesoDatos datos = new AccesoDatos();
            datos.Setear("select CodigoArticulo from Articulos where CodigoArticulo= '" + nuevoArticulo + "'");
            datos.Consultar();
            datos.Lector.Read();
            return datos.Lector.GetString(1);
            datos.Cerrar();
        }

        public void AgregarMaterial(MateriaPrima nuevoMaterial)
        {
            AccesoDatos datos = new AccesoDatos();

            datos.Setear("INSERT INTO MateriaPrima (Descripcion,Stock) VALUES (@DESCRIPCION, @STOCK)");
   
            datos.Agregar("@DESCRIPCION", nuevoMaterial.Descripcion);
            datos.Agregar("@STOCK", nuevoMaterial.Stock);
           

            datos.Query();
            datos.Cerrar();

        }


        public void ModificarMaterial(MateriaPrima nuevoMaterial)
        {
            AccesoDatos datos = new AccesoDatos();
            datos.Setear("update MateriaPrima set Descripcion=@DESCRIPCION ,Stock=@STOCK  where Id=@ID");
            datos.Agregar("@ID", nuevoMaterial.Id);
            datos.Agregar("@DESCRIPCION", nuevoMaterial.Descripcion);
            datos.Agregar("@STOCK", nuevoMaterial.Stock);
          

            datos.Query();
            datos.Cerrar();
        }

        public bool RegistrarPersona(Persona persona)
        {
            AccesoDatos datos = new AccesoDatos();
            try { 

            //DATOS PERSONALES//
            datos.Setear("INSERT INTO DatosPersonales(DNI,Nombre,Apellido,Direccion,Telefono,Mail,Cuil,Estado) VALUES(@DNI, @Nombre, @Apellido, @Direccion, @Telefono, @Mail, @Cuil, @Estado  )");
           
            datos.Agregar("@Apellido", persona.Apellido);
            datos.Agregar("@Nombre", persona.Nombre);
            datos.Agregar("@DNI",persona.DNI);
            datos.Agregar("@Direccion",persona.Direccion);
            datos.Agregar("@Telefono",persona.Telefono);
            datos.Agregar("@Mail",persona.Mail);
            datos.Agregar("@Cuil",persona.Cuil);
            datos.Agregar("@Estado",persona.Estado);
            if(persona.Estado)
            {
                datos.Query();
                return true;
            }
            else { return false; }
            }

            finally { 
            datos.Cerrar();
            }

        }

        public bool RegistrarUsuario(Usuario usuario)
        {
            AccesoDatos datos = new AccesoDatos();

            try { 
            //USUARIOS//
            datos.Setear("INSERT INTO Usuario(Contrasenia, IdRol ,DniDP) VALUES(@Contraseña,@IDrol ,@NombreUsuario)");

            datos.Agregar("@Contraseña", usuario.Contraseña);
            datos.Agregar("@IDrol", 2);
            datos.Agregar("@NombreUsuario", usuario.NombreUsuario);
                if(usuario.Contraseña != null)
                {
                    datos.Query();
                    return true;
                }
                else { return false; }
            
            }
            finally { 
            datos.Cerrar();
            }
        }

        public bool RegistrarRol(Rol rol)
        {
            AccesoDatos datos = new AccesoDatos();
            try { 
            //ROL//
            datos.Setear("INSERT INTO Rol(Descripcion,Estado) VALUES(@Descripcion,@Estado)");

            datos.Agregar("@Descripcion", rol.NombreRol);
            datos.Agregar("@Estado", rol.Estado);

                if(rol.Estado)
                {
                    datos.Query();
                    return true;
                }
                else { return false; }
            
            }

            finally
            {
                datos.Cerrar();
            }
             
        }

        public bool ComprobarExitenciaUsuario(int NumUsuario)
        {
            AccesoDatos datos = new AccesoDatos();
            
            try
            {
                datos.Agregar("@NumUsuario", NumUsuario);
                datos.Setear("select DniDP from Usuario where DniDP = @NumUsuario");
                datos.Consultar();

                if (datos.Lector.Read())
                {
                    return false;
                }
                else { return true; }

            }
            finally
            {
                datos.Cerrar();
            }
        }

        public bool EnviarMail(string mail, int usuario)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.Agregar("@usuario", usuario);
                datos.Agregar("@mail", mail);
                datos.Setear("select  DniDP, Contrasenia, DP.Mail from Usuario inner join DatosPersonales as DP on DP.DNI = DniDP where DniDP = @usuario and DP.Mail = @mail ");
                datos.Consultar();
                if(datos.Lector.Read() == true)
                {
                    string Contraseña = datos.Lector.GetString(1);

                    MailMessage correo = new MailMessage();
                    correo.From = new MailAddress("TpCuatrimestral@gmail.com");//va correo desde donde se envia el mail.
                    correo.To.Add(mail);//Añadis a donde se va a enviar el mail.
                    correo.Subject = ("Recuperar Contraseña");//Asunto del correo.
                    correo.Body = "Hola!! Usted solicito recuperar su contraseña: "+ Contraseña;//Mensaje del correo.
                    correo.Priority = MailPriority.Normal;

                    SmtpClient serverMail = new SmtpClient();
                    serverMail.Credentials = new NetworkCredential("TpCuatrimestral@gmail.com", "Tpcuatrimestral1234");
                    serverMail.Host = "smtp.gmail.com";
                    serverMail.Port = 587;
                    serverMail.EnableSsl = true;

                    serverMail.Send(correo);

                    return true;
                }
                else
                {
                    return false;
                }
            }
            finally { datos.Cerrar(); }

            

        }

    }
}

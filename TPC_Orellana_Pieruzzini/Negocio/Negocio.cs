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
                    //  aux.Cuil = datos.Lector.GetInt32(6);
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

                if (datos.Lector.Read())
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
                datos.Agregar("@id", usuario);
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
            try
            {

                //DATOS PERSONALES//
                datos.Setear("INSERT INTO DatosPersonales(DNI,Nombre,Apellido,Direccion,Telefono,Mail,Cuil,Estado) VALUES(@DNI, @Nombre, @Apellido, @Direccion, @Telefono, @Mail, @Cuil, @Estado  )");

                datos.Agregar("@Apellido", persona.Apellido);
                datos.Agregar("@Nombre", persona.Nombre);
                datos.Agregar("@DNI", persona.DNI);
                datos.Agregar("@Direccion", persona.Direccion);
                datos.Agregar("@Telefono", persona.Telefono);
                datos.Agregar("@Mail", persona.Mail);
                datos.Agregar("@Cuil", persona.Cuil);
                datos.Agregar("@Estado", persona.Estado);
                if (persona.Estado)
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

        public bool RegistrarUsuario(Usuario usuario)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                //USUARIOS//
                datos.Setear("INSERT INTO Usuario(Contrasenia, IdRol ,DniDP) VALUES(@Contraseña,@IDrol ,@NombreUsuario)");

                datos.Agregar("@Contraseña", usuario.Contraseña);
                datos.Agregar("@IDrol", 2);
                datos.Agregar("@NombreUsuario", usuario.NombreUsuario);
                if (usuario.Contraseña != null)
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

        public bool RegistrarRol(Rol rol)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                //ROL//
                datos.Setear("INSERT INTO Rol(Descripcion,Estado) VALUES(@Descripcion,@Estado)");

                datos.Agregar("@Descripcion", rol.NombreRol);
                datos.Agregar("@Estado", rol.Estado);

                if (rol.Estado)
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
                if (datos.Lector.Read() == true)
                {
                    string Contraseña = datos.Lector.GetString(1);

                    MailMessage correo = new MailMessage();
                    correo.From = new MailAddress("TpCuatrimestral@gmail.com");//va correo desde donde se envia el mail.
                    correo.To.Add(mail);//Añadis a donde se va a enviar el mail.
                    correo.Subject = ("Recuperar Contraseña");//Asunto del correo.
                    correo.Body = "Hola!! Usted solicito recuperar su contraseña: " + Contraseña;//Mensaje del correo.
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

        public List<Usuario> ListarUsuarios(int comprobar)
        {
            List<Usuario> lista = new List<Usuario>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.Setear("select * from Usuario where DniDP='" + comprobar + "'");
                datos.Consultar();
                while (datos.Lector.Read())
                {
                    Usuario aux = new Usuario();
                    aux.id = datos.Lector.GetInt32(0);
                    aux.Contraseña = datos.Lector.GetString(1);
                    aux.NombreUsuario = datos.Lector.GetInt32(2);

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
        
        public void ModificaPass(Usuario usuario)
        {
            AccesoDatos datos = new AccesoDatos();
      
            datos.Setear("update Usuario set Contrasenia=@Contrasenia where Id=@Id");
            datos.Agregar("@Id", usuario.id);
            datos.Agregar("@Contrasenia", usuario.Contraseña);         
            datos.Query();
            datos.Cerrar();
        }
        public List<Persona> ListarCliente(int comprobar)
        {
            List<Persona> lista = new List<Persona>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.Setear("select * from DatosPersonales  where DNI='" + comprobar + "'");
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
                    //  aux.Cuil = datos.Lector.GetInt32(6);
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
               
        public void ModificaDP(Persona persona)
        {
            AccesoDatos datos = new AccesoDatos();

            datos.Setear("update DatosPersonales set Cuil=@Cuil,Telefono=@Tel,Direccion=@Dir where DNI=@DNI");
            datos.Agregar("@DNI", persona.DNI);
            datos.Agregar("@Cuil", persona.Cuil);
            datos.Agregar("@Tel", persona.Telefono);
            datos.Agregar("@Dir", persona.Direccion);
            datos.Query();
            datos.Cerrar();
        }

        public Persona DatosCliente(int usuario)
          {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                Persona aux = new Persona();
                datos.Agregar("@dni",usuario);
                datos.Setear("select DNI, Nombre, Apellido, Direccion, Telefono, Mail from DatosPersonales where DNI = @dni");
                datos.Consultar();
                while(datos.Lector.Read())
                {
                    Persona persona = new Persona();
                    persona.DNI =datos.Lector.GetInt32(0);
                    persona.Nombre =datos.Lector.GetString(1);
                    persona.Apellido =datos.Lector.GetString(2);
                    persona.Direccion =datos.Lector.GetString(3);
                    persona.Telefono =datos.Lector.GetString(4);
                    persona.Mail =datos.Lector.GetString(5);
                    aux = persona;
                }
                return aux;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.Cerrar();
                
            }
        }

        public int DatosUsuario(int usuario)
        {
            AccesoDatos datos = new AccesoDatos();
            Usuario aux = new Usuario();
            
            try
            {
                datos.Agregar("@usuario", usuario);
                datos.Setear("select DniDP from Usuario where DniDP = @usuario");
                datos.Consultar();

                while(datos.Lector.Read())
                {
                    aux.id = datos.Lector.GetInt32(0);
                }
                return aux.id;
            }
            finally
            {
                datos.Cerrar();
            }
        }

        public int DatoTarjeta(string descripcion)
        {
            AccesoDatos datos = new AccesoDatos();
            FormasDePago aux = new FormasDePago();

            try
            {
                datos.Agregar("@descripcion",descripcion);
                datos.Setear("select id from FormaPago where Descripcion = @descripcion");
                datos.Consultar();
                if(datos.Lector.Read())
                {
                    aux.id = datos.Lector.GetInt32(0);
                }
                return aux.id;

            }
            finally
            {
                datos.Cerrar();
            }
        }

        public void Guardarventa(int Datos, int NumeroFactura, DateTime Fecha, Decimal Total, int Pago)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.Setear("INSERT INTO Ventas(IdUsuario, IdFormaPago, NumeroFactura, Fecha, Total ) VALUES(@usuario, @pago, @nFactura,@fecha, @total )");

                datos.Agregar("@usuario",Datos);
                datos.Agregar("@nFactura",NumeroFactura);
                datos.Agregar("@fecha",Fecha);
                datos.Agregar("@total",Total);
                datos.Agregar("@pago",Pago);
                datos.Query();
            }
            finally
            {
                datos.Cerrar();
            }
        }

        public int DatoPedido(int factura)
        {
            AccesoDatos datos = new AccesoDatos();
            Pedido aux = new Pedido();
            try
            {
                datos.Agregar("@factura",factura);
                datos.Setear("SELECT Id FROM Ventas WHERE NumeroFactura = @factura");
                datos.Consultar();
                if(datos.Lector.Read())
                {
                    aux.Id = datos.Lector.GetInt32(0);
                }
                return aux.Id;
            }
            finally
            {
                datos.Cerrar();
            }
        }

        public void GuardarDetallesVentas(int pedido, int Articulos, int Cantidad ,decimal Precio)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.Setear("INSERT INTO DetalleVentas(IdVenta, IdArticulo, Cantidad, Precio) VALUES(@venta,@articulo, @cantidad,@precio)");
                datos.Agregar("@venta",pedido);
                datos.Agregar("@articulo",Articulos);
                datos.Agregar("@cantidad",Cantidad);
                datos.Agregar("@precio",Precio);
                datos.Query();

            }
            finally
            {
                datos.Cerrar();
            }
        }

        public List<VentasRealizadas> ListarDetalleVenta()
        {
            List<VentasRealizadas> lista = new List<VentasRealizadas>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.Setear("select * from vw_ListadoDeVentas");
                datos.Consultar();

                while (datos.Lector.Read())
                {
                    VentasRealizadas aux = new VentasRealizadas();

                    aux.Fecha = datos.Lector.GetDateTime(0);
                    aux.NumeroFactura = (int)datos.Lector.GetInt64(1);
                    aux.id = datos.Lector.GetInt32(2);
                    aux.Nombre = datos.Lector.GetString(3);
                    aux.Codigo = datos.Lector.GetString(4);
                    aux.DescripcionArt = datos.Lector.GetString(5);
                    aux.Total = datos.Lector.GetDecimal(6);
                    aux.Descripcion = datos.Lector.GetString(7);



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
    }

}

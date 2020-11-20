using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
                datos.Setear("select * from Articulos");
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
    }
}

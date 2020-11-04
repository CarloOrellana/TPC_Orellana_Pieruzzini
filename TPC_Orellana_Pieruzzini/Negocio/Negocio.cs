using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class Negocio
    {
        public List<Articulo> Listar()
        {
            AccesoDatos datos = new AccesoDatos();
            List<Articulo> lista = new List<Articulo>();

            try
            {
                datos.Setear("select * from Articulos");
                datos.Consultar();

                while (datos.Lector.Read())
                {
                    Articulo aux = new Articulo();
                    aux.Codigo = datos.Lector.GetString(1);
                    aux.Descripcion = datos.Lector.GetString(2);
                    aux.Stock = (int)datos.Lector.GetInt64(3);
                    aux.Precio = datos.Lector.GetDecimal(4);

                   // aux.UrlImagen = NewMethod(datos);
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

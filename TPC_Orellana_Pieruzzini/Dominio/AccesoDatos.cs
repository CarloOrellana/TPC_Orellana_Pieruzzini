using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Dominio
{
    public class AccesoDatos
    {
        public SqlConnection conexion { get; set; }

        public SqlCommand comando { get; set; }

        public SqlDataReader lector { get; set; }

        public AccesoDatos()
        {
            conexion = new SqlConnection("data source=(local); initial catalog=PieruzziniPlaOrellana_DB; integrated security=sspi");
            comando = new SqlCommand();
            comando.Connection = conexion;
        }

        public void Setear(string consulta)
        {
            comando.CommandType = System.Data.CommandType.Text;
            comando.CommandText = consulta;
        }

        public void Consultar()
        {
            try
            {
                conexion.Open();
                lector = comando.ExecuteReader();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void cerrar()
        {
            conexion.Close();
        }

        public void agregar(string nombre, object valor)
        {
            comando.Parameters.AddWithValue(nombre, valor);
        }


        public void Query()
        {
            try
            {
                conexion.Open();
                comando.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conexion.Close();
            }
        }
    }
}

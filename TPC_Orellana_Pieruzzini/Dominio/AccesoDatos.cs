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
        public SqlConnection Conexion { get; set; }

        public SqlCommand Comando { get; set; }

        public SqlDataReader Lector { get; set; }

        public AccesoDatos()
        {
            Conexion = new SqlConnection("data source=localhost\\SQLEXPRESS; initial catalog=PieruzziniPlaOrellana_DB; integrated security=sspi");
            //Conexion = new SqlConnection("data source=DESKTOP-GPR5PDL\\SQLEXPRESS; initial catalog=PieruzziniPlaOrellana_DB; integrated security=sspi");
            Comando = new SqlCommand();
            Comando.Connection = Conexion;
        }

        public void Setear(string consulta)
        {
            Comando.CommandType = System.Data.CommandType.Text;
            Comando.CommandText = consulta;
        }

        public void Consultar()
        {
            try
            {
                Conexion.Open();
                Lector = Comando.ExecuteReader();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void Cerrar()
        {
            Conexion.Close();
        }

        public void Agregar(string Nombre, object Valor)
        {
            Comando.Parameters.AddWithValue(Nombre, Valor);
        }


        public void Query()
        {
            try
            {
                Conexion.Open();
                Comando.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
               Conexion.Close();
            }
        }
    }
}

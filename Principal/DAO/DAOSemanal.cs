using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class DAOSemanal
    {
        SqlConnection conexion = new SqlConnection(Properties.Settings.Default.conexion);
        public void agregarSeguimientoSemanal(double IdCliente, String fecha, double peso, double oreja, String ejercicio, int sesion)
        {

            String query = "insert into SeguimientoSemanal values(@sesion,@fecha,@peso,@oreja,@ejerc,@IdClient)";

            SqlCommand comando = new SqlCommand(query, conexion);

            comando.Parameters.AddWithValue("@sesion", sesion);
            comando.Parameters.AddWithValue("@fecha", fecha);
            comando.Parameters.AddWithValue("@peso", peso);
            comando.Parameters.AddWithValue("@oreja", oreja);
            comando.Parameters.AddWithValue("@ejerc", ejercicio);
            comando.Parameters.AddWithValue("@IdClient", IdCliente);

            if (conexion.State != ConnectionState.Open) 
            {
                conexion.Open();
            }

            comando.ExecuteNonQuery();

            if (conexion.State != ConnectionState.Closed)
            {
                conexion.Close();
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class DAOCliente
    {

        SqlConnection conexion = new SqlConnection(Properties.Settings.Default.conexion);

        public double buscarClientePorNombre(String nombre) {

            nombre = nombre.Replace(" ","");

            String query = "select Cod_Cliente from Usuario where Concat(Replace(Usuario.Nombre,' ',''),Usuario.Apellido1,Usuario.Apellido2) = @nom";

            SqlCommand comando = new SqlCommand(query, conexion);

            comando.Parameters.AddWithValue("@nom", nombre);

            if (conexion.State != ConnectionState.Open)
            {
                conexion.Open();
            }

            double IDCliente = double.Parse(comando.ExecuteScalar().ToString());

            if (conexion.State != ConnectionState.Closed)
            {
                conexion.Close();
            }
            return IDCliente;
        }
    }
}

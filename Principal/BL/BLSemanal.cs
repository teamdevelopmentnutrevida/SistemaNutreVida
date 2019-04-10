using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;

namespace BL
{
    public class BLSemanal
    {
        public void agregarSeguimientoSemanal(String nombre, String fecha, double peso, double oreja, String ejercicio, int sesion)
        {
            DAOSemanal semanal = new DAOSemanal();
            DAOCliente cliente = new DAOCliente();

            semanal.agregarSeguimientoSemanal(cliente.buscarClientePorNombre(nombre), fecha, peso, oreja, ejercicio, sesion);
        }
    }
}

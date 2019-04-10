using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

namespace IU
{
    public partial class SeguimientoSemanal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }        

        protected void btnAgreg_Click(object sender, EventArgs e)
        {
            BLSemanal semanal = new BLSemanal();

           // semanal.agregarSeguimientoSemanal(sNombre.Text, "4/10/2019", Double.Parse(sPeso.Text), Double.Parse(sOreja.Text), sEjercicio.Text, int.Parse(sSesion.Text));

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }

        protected void timerTest_Tick(object sender, EventArgs e)
        {
            DateTime timeUtc = DateTime.UtcNow;
            try
            {
                TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Central Standard Time");
                DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);
                Fecha.Text = "Fecha: " + cstTime;
            }
            catch (TimeZoneNotFoundException)
            {
                Response.Write("<script>alert('El registro no define la zona CST.')</script>");
            }
            catch (InvalidTimeZoneException)
            {
                Response.Write("<script>alert('El registro de datos en la zona CST ha sido corrupta .')</script>");
            }
        }
    }
}
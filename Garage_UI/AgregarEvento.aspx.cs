using Garage_Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Garage_UI
{
    public partial class AgregarEvento : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlTipoEvento_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlConcierto.Visible = (ddlTipoEvento.SelectedValue == "Concierto");
            pnlExposicion.Visible = (ddlTipoEvento.SelectedValue == "Exposicion");
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            DateTime fecha = Convert.ToDateTime(txtFecha.Text);
            string direccion = txtDireccion.Text;
            int precio = Convert.ToInt32(txtPrecio.Text);
            string tipo = ddlTipoEvento.SelectedValue;

            string mensaje = "";

            if (tipo == "Concierto")
            {
                Concierto concierto = new Concierto
                {
                    Nombre = nombre,
                    Fecha = fecha,
                    Direccion = direccion,
                    Precio = precio,
                    Artista = txtArtista.Text,
                    Estilo = txtEstilo.Text
                };

                mensaje = EventoController.AddEvento(concierto);
            }
            else if (tipo == "Exposicion")
            {
                Exposicion exposicion = new Exposicion
                {
                    Nombre = nombre,
                    Fecha = fecha,
                    Direccion = direccion,
                    Precio = precio,
                    Expositor = txtExpositor.Text,
                    Categoria = txtCategoria.Text
                };

                mensaje = EventoController.AddEvento(exposicion);
            }

            Response.Redirect($"ListarEventos.aspx?msg¨={Server.UrlEncode(mensaje)}");
        }
    }
}
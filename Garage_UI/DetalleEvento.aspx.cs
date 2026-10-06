using Garage_Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Garage_UI
{
    public partial class DetalleEvento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDetalle();
            }
        }

        private void CargarDetalle()
        {
            string idQuery = Request.QueryString["id"];
            if (string.IsNullOrEmpty(idQuery))
            {
                lblError.Text = "Debe Proporcionar ID";
                pnlDetalle.Visible = false;
                return;
            }

            Evento evento = EventoController.GetEvento(idQuery);
            if (evento == null)
            {
                lblError.Text = "Evento No Encontrado";
                pnlDetalle.Visible = false;
                return;
            }

            pnlDetalle.Visible = true;
            lblError.Text = string.Empty;

            lblId.Text = evento.Id;
            lblNombre.Text = evento.Nombre;
            lblFecha.Text = evento.Fecha.ToString("dd/MM/yyyy");
            lblDireccion.Text = evento.Direccion;
            lblPrecio.Text = evento.Precio.ToString("C0");

            if (evento is Concierto concierto)
            {
                lblTipoEvento.Text = "Concierto";
                lblArtista.Text = concierto.Artista;
                lblEstilo.Text = concierto.Estilo;

                trArtista.Visible = true;
                trEstilo.Visible = true;

                trExpositor.Visible = false;
                trCategoria.Visible = false;
            }else if (evento is Exposicion exposicion)
            {
                lblTipoEvento.Text = "Exposición";
                lblExpositor.Text = exposicion.Expositor;
                lblCategoria.Text = exposicion.Categoria;

                trExpositor.Visible = true;
                trCategoria.Visible = true;

                trArtista.Visible = false;
                trEstilo.Visible = false;
            }
        }
    }
}
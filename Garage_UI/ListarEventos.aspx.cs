using Garage_Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Garage_UI
{
    public partial class ListarEventos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["msg"] != null)
                {
                    lblMensaje.Text = Server.UrlDecode(Request.QueryString["msg"]);
                }

                CargarEventos();
            }
        }

        private void CargarEventos()
        {
            gvEventos.DataSource = EventoController.GetEventos();
            gvEventos.DataBind();
        }

        protected void gvEventos_SelectedIndexChanged(object sender, EventArgs e)
        {
            string idSeleccionado = gvEventos.SelectedDataKey.Value.ToString();

            Response.Redirect($"DetalleEvento.aspx?id={idSeleccionado}");
        }
    }
}
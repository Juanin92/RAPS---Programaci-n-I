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
            if (!IsPostBack)
            {
                ActualizarVisibilidadValidaciones();
            }
        }

        protected void ddlTipoEvento_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlConcierto.Visible = (ddlTipoEvento.SelectedValue == "Concierto");
            pnlExposicion.Visible = (ddlTipoEvento.SelectedValue == "Exposicion");

            ActualizarVisibilidadValidaciones();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

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

        private void ActualizarVisibilidadValidaciones()
        {
            string seleccion = ddlTipoEvento.SelectedValue;

            if (seleccion == "Concierto")
            {
                pnlConcierto.Visible = true;
                pnlExposicion.Visible = false;

                rfvArtista.Enabled = true;
                rfvEstilo.Enabled = true;

                rfvExpositor.Enabled = false;
                rfvCategoria.Enabled = false;
            }else if (seleccion == "Exposicion")
            {
                pnlConcierto.Visible = false;
                pnlExposicion.Visible = true;

                rfvArtista.Enabled = false;
                rfvEstilo.Enabled = false;

                rfvExpositor.Enabled = true;
                rfvCategoria.Enabled = true;
            }
            else
            {
                pnlConcierto.Visible = false;
                pnlExposicion.Visible = false;

                rfvArtista.Enabled = false;
                rfvEstilo.Enabled = false;

                rfvExpositor.Enabled = false;
                rfvCategoria.Enabled = false;
            }
        }

        protected void cvPrecioRango_ServerValidate(object source, ServerValidateEventArgs e)
        {
            if (!int.TryParse(txtPrecio.Text.Trim(), out int precio))
            {
                e.IsValid = false;
                return;
            }

            string seleccion = ddlTipoEvento.SelectedValue;

            if (seleccion == "Concierto")
            {
                if (precio > 5000 && precio < 25000)
                {
                    e.IsValid = true;
                }
                else
                {
                    cvPrecio.ErrorMessage = "El Precio para Concierto debe ser mayor a $5.000 y menor a $25.000";
                    e.IsValid = false;
                }
            }else if (seleccion == "Exposicion")
            {
                if (precio > 1000 && precio < 10000)
                {
                    e.IsValid = true;
                }
                else
                {
                    cvPrecio.ErrorMessage = "El Precio para Exposición debe ser mayor a $1.000 y menor a $10.000";
                    e.IsValid = false;
                }
            }
            else
            {
                e.IsValid = true;
            }
        }
    }
}
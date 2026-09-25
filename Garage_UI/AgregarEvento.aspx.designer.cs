using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Garage_UI
{
    public partial class AgregarEvento
    {
        protected TextBox txtNombre;
        protected TextBox txtFecha;
        protected TextBox txtDireccion;
        protected DropDownList ddlTipoEvento;
        protected TextBox txtPrecio;
        protected Panel pnlConcierto;
        protected TextBox txtArtista;
        protected TextBox txtEstilo;
        protected Panel pnlExposicion;
        protected TextBox txtExpositor;
        protected TextBox txtCategoria;
        protected Button btnAgregar;
    }
}
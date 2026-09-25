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

        }
    }
}
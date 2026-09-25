<%@ page title="" language="C#" masterpagefile="~/Site.Master" autoeventwireup="true" codebehind="AgregarEvento.aspx.cs" inherits="Garage_UI.AgregarEvento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Ingreso de Evento</h2>

    <table>
        <tr>
            <td>Nombre:</td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Fecha:</td>
            <td>
                <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Dirección:</td>
            <td>
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tipo de Evento:</td>
            <td>
                <asp:DropDownList ID="ddlTipoEvento" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTipoEvento_SelectedIndexChanged">
                    <asp:ListItem Value="Seleccionar" Text="Seleccionar" Selected="true"></asp:ListItem>
                    <asp:ListItem Value="Concierto" Text="Concierto"></asp:ListItem>
                    <asp:ListItem Value="Exposicion" Text="Exposición"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Precio:</td>
            <td>
                <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>

    <asp:Panel ID="pnlConcierto" runat="server" Visible="false">
        <h3>Datos de Concierto</h3>
        <table>
            <tr>
                <td>Artista:</td>
                <td>
                    <asp:TextBox ID="txtArtista" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Estilo:</td>
                <td>
                    <asp:TextBox ID="txtEstilo" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="pnlExposicion" runat="server" Visible="false">
        <h3>Datos de Exposición</h3>
        <table>
            <tr>
                <td>Expositor:</td>
                <td>
                    <asp:TextBox ID="txtExpositor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Categoría:</td>
                <td>
                    <asp:TextBox ID="txtCategoria" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <asp:Button ID="btnAgregar" runat="server" Text="Agregar Evento" OnClick="btnAgregar_Click" />
</asp:Content>

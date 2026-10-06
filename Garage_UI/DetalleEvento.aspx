<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetalleEvento.aspx.cs" Inherits="Garage_UI.DetalleEvento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Detalle del Evento</h2>

<asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>

<asp:Panel ID="pnlDetalle" runat="server">
    <table border="0" style="width: 100%; border-collapse: separate; border-spacing: 10px;">
        <tr>
            <td><strong>Tipo de Evento:</strong></td>
            <td><asp:Label ID="lblTipoEvento" runat="server" Font-Bold="true"></asp:Label></td>
        </tr>
        <tr>
            <td><strong>ID:</strong></td>
            <td><asp:Label ID="lblId" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><strong>Nombre:</strong></td>
            <td><asp:Label ID="lblNombre" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><strong>Fecha:</strong></td>
            <td><asp:Label ID="lblFecha" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><strong>Dirección:</strong></td>
            <td><asp:Label ID="lblDireccion" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><strong>Precio:</strong></td>
            <td><asp:Label ID="lblPrecio" runat="server"></asp:Label></td>
        </tr>

        <tr id="trArtista" runat="server">
            <td><strong>Artista:</strong></td>
            <td><asp:Label ID="lblArtista" runat="server"></asp:Label></td>
        </tr>
        <tr id="trEstilo" runat="server">
            <td><strong>Estilo:</strong></td>
            <td><asp:Label ID="lblEstilo" runat="server"></asp:Label></td>
        </tr>

        <tr id="trExpositor" runat="server">
            <td><strong>Expositor:</strong></td>
            <td><asp:Label ID="lblExpositor" runat="server"></asp:Label></td>
        </tr>
        <tr id="trCategoria" runat="server">
            <td><strong>Categoría:</strong></td>
            <td><asp:Label ID="lblCategoria" runat="server"></asp:Label></td>
        </tr>
    </table>
</asp:Panel>
<br />
<asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/ListarEventos.aspx">Volver al Listado</asp:HyperLink>
</asp:Content>

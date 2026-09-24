<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarEvento.aspx.cs" Inherits="Garage_UI.AgregarEvento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Ingreso de Evento</h2>

    <table>
            <td>Nombre:</td>
            <td><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Fecha:</td>
            <td><asp:TextBox ID="TextFecha" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Dirección:</td>
            <td><asp:TextBox ID="TextDireccion" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Tipo de Evento:</td>
            <td>
                <asp:DropDownList ID="ddlTipoEvento" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTipoEvento_SelectedIndexChanged">
                    <asp:ListITem Value="Seleccionar" Text="Seleccionar" Selected="true"></asp:ListITem>
                    <asp:ListITem Value="Concierto" Text="Concierto"></asp:ListITem>
                    <asp:ListITem Value="Exposicion" Text="Exposición"></asp:ListITem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Precio:</td>
            <td><asp:TextBox ID="TextPrecio" runat="server"></asp:TextBox></td>
        </tr>
    </table>

    <asp:Panel ID="pnlConcierto" runat="server" Visible="false">
        <h3>Datos de Concierto</h3>
        <table>
             <tr>
                 <td>Artista:</td>
                 <td><asp:TextBox ID="TextArtista" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
                 <td>Estilo:</td>
                 <td><asp:TextBox ID="TextEstilo" runat="server"></asp:TextBox></td>
             </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="pnlExposicion" runat="server" Visible="false">
        <h3>Datos de Exposición</h3>
        <table>
             <tr>
                 <td>Expositor:</td>
                 <td><asp:TextBox ID="TextExpositor" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
                 <td>Categoría:</td>
                 <td><asp:TextBox ID="TextCategoria" runat="server"></asp:TextBox></td>
             </tr>
        </table>
    </asp:Panel>

    <br />
    <asp:Button ID="btnAgregar" runat="server" Text="Agregar Evento" OnClick="btnAgregar_Click"/>
</asp:Content>

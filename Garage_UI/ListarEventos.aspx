<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarEventos.aspx.cs" Inherits="Garage_UI.ListarEventos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Listado de Eventos</h2>

    <asp:Label ID="lblMensaje" runat="server" ForeColor="Green" Font-Bold="true"></asp:Label>
    <br /><br />

    <asp:GridView ID="gvEventos" runat="server" AutoGenerateColums="False" DataKeyNames="Id" OnSelectedIndexChanged="gvEvento_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="ID"/>
            <asp:BoundField DataField="Nombre" HeaderText="Nombre del Evento"/>
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" DataFormatString="{0:dd/MM/yyyy}"/>
            <asp:BoundField DataField="Direccion" HeaderText="Dirección"/>
            <asp:BoundField DataField="Precio" HeaderText="Precio" DataFormatString="{0:C0}"/>

            <asp:CommandField ShowSelectedButton="True" SelectText="Ver Detalle" HeaderText="Acciones"/>
        </Columns>
    </asp:GridView>
</asp:Content>

<%@ page title="" language="C#" masterpagefile="~/Site.Master" autoeventwireup="true" codebehind="AgregarEvento.aspx.cs" inherits="Garage_UI.AgregarEvento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Ingreso de Evento</h2>

    <asp:ValidationSummary
        ID="vsAgregar"
        runat="server"
        ValidationGroup="AddEventoVG"
        ForeColor="Red"
        HeaderText="Por Favor corrija los siguientes errores:" />
    
    <table>
        <tr>
            <td>Nombre:</td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="rvfNobmre"
                    runat="server"
                    ControlToValidate="txtNombre"
                    ErrorMessage="El nombre es obligatorio."
                    ValidationGroup="AddEventoVG"
                    ForeColor="Red"
                    Display="Dynamic">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Fecha:</td>
            <td>
                <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="rfvFecha"
                    runat="server"
                    ControlToValidate="txtFecha"
                    ErrorMessage="La fecha es obligatoria."
                    ValidationGroup="AddEventoVG"
                    ForeColor="Red"
                    Display="Dynamic">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Dirección:</td>
            <td>
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="rfvDireccion"
                    runat="server"
                    ControlToValidate="txtDireccion"
                    ErrorMessage="La dirección es obligatoria."
                    ValidationGroup="AddEventoVG"
                    ForeColor="Red"
                    Display="Dynamic">*</asp:RequiredFieldValidator>
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
                <asp:CompareValidator
                    ID="cvTipoEvento"
                    runat="server"
                    ControlToValidate="ddlTipoEvento"
                    ValueToCompare="Seleccionar"
                    Operator="NotEqual"
                    ErrorMessage="Debe seleccionar un tipo de evento."
                    ValidationGroup="AddEventoVG"
                    ForeColor="Red"
                    Display="Dynamic">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Precio:</td>
            <td>
                <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="rfvPrecio"
                    runat="server"
                    ControlToValidate="txtPrecio"
                    ErrorMessage="El precio es obligatorio."
                    ValidationGroup="AddEventoVG"
                    ForeColor="Red"
                    Display="Dynamic">*</asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="revPrecio"
                    runat="server"
                    ControlToValidate="txtPrecio"
                    ValidationExpression="^\d+$"
                    ErrorMessage="El precio debe ser un número enterio sin puntos ni símbolos."
                    ValidationGroup="AddEventoVG"
                    ForeColor="Red"
                    Display="Dynamic">*</asp:RegularExpressionValidator>

                <asp:CustomValidator
                    ID="cvPrecio"
                    runat="server"
                    ControlToValidate="txtPrecio"
                    OnServerValidate="cvPrecioRango_ServerValidate"
                    ErrorMessage="El precio no cumple con el rango permitido."
                    ValidationGroup="AddEventoVG"
                    ForeColor="Red"
                    Display="Dynamic">*</asp:CustomValidator>
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
                    <asp:RequiredFieldValidator
                        ID="rfvArtista"
                        runat="server"
                        ControlToValidate="txtArtista"
                        ErrorMessage="El artista es obligatorio para Concierto."
                        ValidationGroup="AddEventoVG"
                        ForeColor="Red"
                        Display="Dynamic"
                        Enable="false">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Estilo:</td>
                <td>
                    <asp:TextBox ID="txtEstilo" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="rfvEstilo"
                        runat="server"
                        ControlToValidate="txtEstilo"
                        ErrorMessage="El estilo es obligatorio para Concierto."
                        ValidationGroup="AddEventoVG"
                        ForeColor="Red"
                        Display="Dynamic"
                        Enable="false">*</asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator
                        ID="rfvExpositor"
                        runat="server"
                        ControlToValidate="txtExpositor"
                        ErrorMessage="El expositor es obligatorio para exposición."
                        ValidationGroup="AddEventoVG"
                        ForeColor="Red"
                        Display="Dynamic"
                        Enable="false">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Categoría:</td>
                <td>
                    <asp:TextBox ID="txtCategoria" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="rfvCategoria"
                        runat="server"
                        ControlToValidate="txtCategoria"
                        ErrorMessage="La categoría es obligatoria para exposición."
                        ValidationGroup="AddEventoVG"
                        ForeColor="Red"
                        Display="Dynamic"
                        Enable="false">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <asp:Button ID="btnAgregar" runat="server" Text="Agregar Evento" ValidationGroup="AddEventoVG" OnClick="btnAgregar_Click" />
</asp:Content>

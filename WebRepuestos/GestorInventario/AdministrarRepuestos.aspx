<%@ Page Title="" Language="C#" MasterPageFile="~/GestorInventario/Inventario1.Master" AutoEventWireup="true" CodeBehind="AdministrarRepuestos.aspx.cs" Inherits="WebRepuestos.GestorInventario.AdministrarRepuestos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 252px
        }
        .auto-style3 {
            width: 168px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td class="auto-style3">sku:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtSku" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="buscar" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Descripcion:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Tipo:</td>
            <td class="auto-style2">
                <asp:DropDownList ID="ddlTipo" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Valor Neto:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Modelo:</td>
            <td class="auto-style2">
                <asp:DropDownList ID="ddlModelos" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <br />
                <asp:Button ID="btnEditar" runat="server" OnClick="btnEditar_Click" Text="Editar" />
            </td>
            <td>
                <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbMensaje" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

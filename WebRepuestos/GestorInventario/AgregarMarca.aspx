<%@ Page Title="" Language="C#" MasterPageFile="~/GestorInventario/Inventario1.Master" AutoEventWireup="true" CodeBehind="AgregarMarca.aspx.cs" Inherits="WebRepuestos.GestorInventario.AgregarMarca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 103px;
    }
    .auto-style2 {
        width: 154px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6 text-center panel-g">

                <table style="width: 100%;">
        <tr>
            <td class="auto-style1">Nombre:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtMarca" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqNombre" runat="server" ControlToValidate="txtMarca" ErrorMessage="Nombre Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnAgregar" CssClass="btn btn-submit" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbMensaje" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>



            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>


    
    </asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="DetalleServicio.aspx.cs" Inherits="WebRepuestos.Mecanico.DetalleServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 132px;
    }
    .auto-style2 {
        width: 132px;
        height: 23px;
    }
    .auto-style3 {
        height: 23px;
    }
    .auto-style4 {
        width: 192px;
    }
    .auto-style5 {
        height: 23px;
        width: 192px;
    }
    .auto-style6 {
        width: 132px;
        height: 26px;
    }
    .auto-style7 {
        width: 192px;
        height: 26px;
    }
    .auto-style8 {
        height: 26px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6 panel-g">

                 <table style="width: 100%;">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Servicio:</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlServicio" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Repuesto:</td>
            <td class="auto-style7">
                <asp:DropDownList ID="ddlRepuesto" runat="server" Enabled="False">
                </asp:DropDownList>
            &nbsp;<asp:Button ID="btnMas" runat="server" OnClick="btnMas_Click" Text="Agregar" />
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style2">Cantidad:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtCantidad" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Total:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnEditar" runat="server" OnClick="btnEditar_Click" Text="Editar" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="btnAgregar" CssClass="btn btn-submit" runat="server" OnClick="btnAgregar_Click" Text="Aceptar" />
            </td>
            <td>
                <asp:Button ID="btnRechazar" CssClass="btn btn-submit" runat="server" OnClick="btnRechazar_Click" Text="Rechazar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="lbMensaje" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>



            </div>
        </div>
    </div>



   
</asp:Content>

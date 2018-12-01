<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="BuscarAuto.aspx.cs" Inherits="WebRepuestos.Administrador.BuscarAuto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style1 {
        width: 432px;
    }
    .auto-style4 {
        width: 182px;
    }
    .auto-style2 {
        width: 431px;
    }
    .auto-style3 {
        width: 430px;
    }
    .auto-style5 {
        width: 432px;
        height: 23px;
    }
    .auto-style6 {
        width: 182px;
        height: 23px;
    }
    .auto-style7 {
        height: 23px;
    }
    .auto-style8 {
        width: 432px;
        height: 26px;
    }
    .auto-style9 {
        width: 182px;
        height: 26px;
    }
    .auto-style10 {
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style2">Patente:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPatente" runat="server" Width="117px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="lbMensaje0" runat="server"></asp:Label>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">KM:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtKm" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Numero Motor:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtMotor" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Modelo:</td>
            <td class="auto-style9">
                <asp:DropDownList ID="ddlModelo" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style1">Numero Chasis:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtChasis" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Cliente:</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlCliente" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="btnModificar" CssClass="btn btn-submit" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
            </td>
            <td>
                <asp:Button ID="btnEliminar" CssClass="btn btn-submit" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
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
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>



            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>
    
</asp:Content>

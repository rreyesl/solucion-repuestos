<%@ Page Title="" Language="C#" MasterPageFile="~/GestorInventario/Inventario1.Master" AutoEventWireup="true" CodeBehind="AgregarModelo.aspx.cs" Inherits="WebRepuestos.GestorInventario.AgregarModelo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 26px;
    }
    .auto-style2 {
        width: 473px;
    }
    .auto-style3 {
        height: 26px;
        width: 473px;
    }
    .auto-style4 {
        width: 157px;
    }
    .auto-style5 {
        height: 26px;
        width: 157px;
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
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Nombre:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RqNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Descripcion:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Descripcion Obligatoria!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Año:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtAnio" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqAnio" runat="server" ControlToValidate="txtAnio" EnableTheming="True" ErrorMessage="Año Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeAnio" runat="server" ControlToValidate="txtAnio" ErrorMessage="Digite Año Valido!" MaximumValue="2019" MinimumValue="2000" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Marca:</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlMarca" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style5">
                <asp:Button ID="btnAgregar" CssClass="btn btn-submit" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
            </td>
            <td class="auto-style3"></td>
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
            <div class="col-sm-3"></div>
        </div>
    </div>


      

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/GestorInventario/Inventario1.Master" AutoEventWireup="true" CodeBehind="AgregarRepuesto.aspx.cs" Inherits="WebRepuestos.GestorInventario.AgregarRepuesto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 473px;
    }
    .auto-style2 {
        width: 472px;
    }
    .auto-style3 {
        width: 471px;
    }
    .auto-style4 {
        width: 194px;
    }
        .auto-style5 {
            width: 473px;
            height: 20px;
        }
        .auto-style6 {
            width: 194px;
            height: 20px;
        }
        .auto-style7 {
            height: 20px;
        }
        .auto-style8 {
            width: 473px;
            height: 21px;
        }
        .auto-style9 {
            width: 194px;
            height: 21px;
        }
        .auto-style10 {
            height: 21px;
        }
        .auto-style11 {
            width: 473px;
            height: 44px;
        }
        .auto-style12 {
            width: 194px;
            height: 44px;
        }
        .auto-style13 {
            height: 44px;
        }
        .auto-style14 {
            width: 473px;
            height: 22px;
        }
        .auto-style15 {
            width: 194px;
            height: 22px;
        }
        .auto-style16 {
            height: 22px;
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
            <td class="auto-style1">Sku:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtSku" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqSKU" runat="server" ControlToValidate="txtSku" ErrorMessage="Sku Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Descripcion:</td>
            <td class="auto-style15">
                <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style16">
                <asp:RequiredFieldValidator ID="RqDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Descripcion Obligatoria!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Tipo:</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlTipo" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Valor Neto:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqValor" runat="server" ControlToValidate="txtValor" ErrorMessage="Valor Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValor" runat="server" ControlToValidate="txtValor" ErrorMessage="Ingrese valor valido!" MinimumValue="1" SetFocusOnError="True" Type="Double" MaximumValue="9999999999999"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Modelo:</td>
            <td class="auto-style9">
                <asp:DropDownList ID="ddlModelos" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style8">Cantidad:</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Sucursal:</td>
            <td class="auto-style9">
                <asp:DropDownList ID="ddlSucursal" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12">
                <asp:Button ID="btnAgregar" CssClass="btn btn-submit" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style4">
                <asp:Label ID="lbMensaje" runat="server"></asp:Label>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>



            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>

    
</asp:Content>

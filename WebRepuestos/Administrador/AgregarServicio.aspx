<%@ Page Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="AgregarServicio.aspx.cs" Inherits="WebRepuestos.Mecanico.AgregarServicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 516px;
    }
    .auto-style2 {
        width: 515px;
    }
    .auto-style3 {
        width: 514px;
    }
    .auto-style4 {
        width: 512px;
        height: 26px;
    }
    .auto-style5 {
        width: 511px;
        height: 26px;
    }
    .auto-style6 {
        width: 509px;
        height: 26px;
    }
    .auto-style7 {
        width: 507px;
        height: 26px;
    }
    .auto-style8 {
        width: 369px;
    }
    .auto-style9 {
        width: 369px;
        height: 26px;
    }
    .auto-style10 {
        width: 514px;
        height: 21px;
    }
    .auto-style11 {
        width: 369px;
        height: 21px;
    }
    .auto-style12 {
        height: 21px;
    }
    .auto-style13 {
        width: 514px;
        height: 26px;
    }
    .auto-style14 {
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
            <td class="auto-style2"></td>
            <td class="auto-style8"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3">Descripcion:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Descripcion Obligatoria!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Repuesto:</td>
            <td class="auto-style8">
                <asp:DropDownList ID="ddlRepuesto" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRepuesto_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Cantidad:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqCantidad" runat="server" ControlToValidate="txtCantidad" ErrorMessage="Cantidad Obligatoria!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Fecha Ingreso:</td>
            <td class="auto-style8">
                <asp:Calendar ID="dpIngreso" runat="server"></asp:Calendar>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Fecha Entrega:</td>
            <td class="auto-style8">
                <asp:Calendar ID="dpEntrega" runat="server"></asp:Calendar>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3">Valor Neto: </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtNeto" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RangeValidator ID="RangeNeto" runat="server" ControlToValidate="txtNeto" ErrorMessage="Ingrese Valor Valido!" MinimumValue="1" SetFocusOnError="True" Type="Double" MaximumValue="9999999999999999"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Valor IVA:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtIVA" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RangeValidator ID="RangeIVA" runat="server" ControlToValidate="txtIVA" ErrorMessage="Ingrese Valor Valido!" MinimumValue="1" SetFocusOnError="True" Type="Double" MaximumValue="9999999999999999"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Valor Total:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtTotal" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td>
                <asp:RangeValidator ID="RangeTotal" runat="server" ControlToValidate="txtTotal" ErrorMessage="Ingrese Valor Valido!" MinimumValue="1" SetFocusOnError="True" Type="Double" MaximumValue="9999999999999999"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Cenlado: </td>
            <td class="auto-style8">
                <asp:CheckBox ID="chbCancelado" runat="server" Text="Si" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">Mano Obra %:</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtMano" runat="server" AutoPostBack="True" OnTextChanged="txtMano_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:RangeValidator ID="RangeMano" runat="server" ControlToValidate="txtMano" ErrorMessage="Ingrese Valor Valido!" MinimumValue="1" SetFocusOnError="True" Type="Double" MaximumValue="9999999999999999"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Sucursal:</td>
            <td class="auto-style9">
                <asp:DropDownList ID="ddlSucursal" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style10">Auto:</td>
            <td class="auto-style11">
                <asp:DropDownList ID="ddlAuto" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style4">Dueño:</td>
            <td class="auto-style9">
                <asp:DropDownList ID="ddlUsuario" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style8">
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="btnAgregar" CssClass="btn btn-submit" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">
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

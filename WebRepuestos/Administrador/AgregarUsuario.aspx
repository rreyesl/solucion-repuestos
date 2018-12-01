<%@ Page Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="WebRepuestos.Administrador.AgregarUsuario" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 516px;
        }
        .auto-style2 {
            width: 300px;
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
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Rut:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtRut" runat="server" OnTextChanged="txtRut_TextChanged" AutoPostBack="True"></asp:TextBox>
                &nbsp;<asp:TextBox ID="txtDv" runat="server" Width="16px" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqRut" runat="server" ControlToValidate="txtRut" ErrorMessage="Rut Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RvRut" runat="server" ControlToValidate="txtRut" ErrorMessage="Campo Numerico" MaximumValue="99999999" MinimumValue="11111111" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Correo:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Correo Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Nombre:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Apellido:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Apellido Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Telefono:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Telefono Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Campo Numerico" MaximumValue="999999999" MinimumValue="11111111" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Perfil:</td>
            <td class="auto-style2">
                <asp:DropDownList ID="ddlPerfil" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1">Direccion:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Direccion Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Pass:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqPass" runat="server" ControlToValidate="txtPass" ErrorMessage="Contraseña Obligatoria!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Repita pass:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPass2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqPass2" runat="server" ControlToValidate="txtPass2" ErrorMessage="Repita la contraseña!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="ComparePass" runat="server" ControlToCompare="txtPass" ControlToValidate="txtPass2" ErrorMessage="Contraseña no coinciden" SetFocusOnError="True"></asp:CompareValidator>
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
            <td colspan="3">
                <asp:Label ID="lbMensaje" runat="server"></asp:Label>
            </td>
        </tr>
    </table>


            </div>
            <div class="col-sm-3"></div>
        </div>
    
            
    </div>
  

</asp:Content>




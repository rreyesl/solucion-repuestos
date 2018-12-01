<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="BuscarUsuario.aspx.cs" Inherits="WebRepuestos.Administrador.BuscarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 216px;
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
            <td class="auto-style1">Rut:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtRut" runat="server" AutoPostBack="True" OnTextChanged="txtRut_TextChanged"></asp:TextBox>
                &nbsp;<asp:TextBox ID="txtDv" runat="server" Width="16px" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqRut" runat="server" ControlToValidate="txtRut" ErrorMessage="Rut Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbMensaje0" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Correo:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Nombre:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Apellido:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Telefono:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
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
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Pass:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Repita pass:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPass2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnModificar" CssClass="btn btn-submit" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
            </td>
            <td>
                <asp:Button ID="btnEliminar" CssClass="btn btn-submit" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lbMensaje" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
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
        </div>
    </div>


    
</asp:Content>

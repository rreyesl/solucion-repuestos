<%@ Page Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="AgregarCliente.aspx.cs" Inherits="WebRepuestos.Mecanico.AgregarCliente" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 175px;
    }
    .auto-style3 {
        width: 134px;
    }
    .auto-style4 {
        width: 134px;
        height: 23px;
    }
    .auto-style5 {
        width: 175px;
        height: 23px;
    }
    .auto-style6 {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
         <div class="row">
             <div class="col-sm-3"></div>
             <div class="col-sm-6 panel-g">


                 <table style="width: 100%;">
                      <asp:Panel ID="mensaje1" runat="server">
        <div class="alert alert-success"> 
  <strong>Correcto!</strong> <asp:Label ID="lbMensaje1" runat="server"></asp:Label>
</div>
    </asp:Panel>
                       <asp:Panel ID="mensaje2" runat="server">
                         <div class="alert alert-danger">
  <strong>Error!</strong>  <asp:Label ID="lbMensaje2" runat="server"></asp:Label>
</div>

                    </asp:Panel>


        <tr>
            <td class="auto-style3">Rut:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtRut" runat="server" AutoPostBack="True" OnTextChanged="txtRut_TextChanged" TextMode="Number"></asp:TextBox>
                <asp:TextBox ID="txtDv" runat="server" Width="16px" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqRut" runat="server" ControlToValidate="txtRut" ErrorMessage="Rut Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RvRut" runat="server" ControlToValidate="txtRut" ErrorMessage="Campo Numerico" MaximumValue="99999999" MinimumValue="11111111" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Correo:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Correo Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Nombre:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Apellido:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RqApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Apellido Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Telefono:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtTelefono" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Telefono Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Campo Numerico" MaximumValue="999999999" MinimumValue="11111111" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Direccion:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Direccion Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnAgregar" CssClass="btn btn-submit" runat="server" OnClick="btnAgregar_Click" Text="Agregar"  />

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
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


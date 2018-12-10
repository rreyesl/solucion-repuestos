<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="BuscarCliente.aspx.cs" Inherits="WebRepuestos.Administrador.BuscarCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 23px;
    }
    .auto-style2 {
        height: 23px;
        width: 117px;
    }
    .auto-style3 {
        width: 117px;
    }
    .auto-style4 {
        height: 23px;
        width: 208px;
    }
    .auto-style5 {
        width: 208px;
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
            <td class="auto-style2"></td>
            <td class="auto-style4"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3">Rut:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtRut" runat="server" AutoPostBack="True" OnTextChanged="txtRut_TextChanged" TextMode="Number"></asp:TextBox>
                <asp:TextBox ID="txtDv" runat="server" ReadOnly="True" Width="20px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rqRut" runat="server" ControlToValidate="txtRut" ErrorMessage="Rut Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" style="height: 26px" Text="Buscar" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbMensaje0" runat="server"></asp:Label>
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
            <td class="auto-style3">Correo:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Nombre:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3">Apellido:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Telefono:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtTelefono" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Direccion:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btnModificar" CssClass="btn btn-submit" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
            </td>
            <td>
                <asp:Button ID="txtEliminar" CssClass="btn btn-submit" runat="server" OnClick="txtEliminar_Click" Text="Eliminar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
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

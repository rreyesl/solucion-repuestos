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
    
    <div class="row">
        <div class="col-sm-12">
            <asp:Panel ID="mensaje1" runat="server">
        <div class="alert alert-success alert-dismissible"> 
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Correcto!</strong> <asp:Label ID="lbMensaje1" runat="server"></asp:Label>
</div>
    </asp:Panel>

            <asp:Panel ID="mensaje2" runat="server">
                         <div class="alert alert-danger alert-dismissible">
                             <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Error!</strong>  <asp:Label ID="lbMensaje2" runat="server"></asp:Label>
</div>

                    </asp:Panel>
        </div>
    </div>


    <div class="container">
         <div class="row">
             <div class="col-sm-4"></div>
             <div class="col-sm-4 panel-g">
                 <div class="row">
                     <div class="col-sm-12">
                         <p>RUT:</p>
                     </div>
                     <div class="col-sm-9">
                         <asp:TextBox CssClass="form-control" ID="txtRut" runat="server" AutoPostBack="True" OnTextChanged="txtRut_TextChanged" TextMode="Number"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RqRut" runat="server" ControlToValidate="txtRut" ErrorMessage="Rut Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                         <asp:RangeValidator ID="RvRut" runat="server" ControlToValidate="txtRut" ErrorMessage="Campo Numerico" MaximumValue="99999999" MinimumValue="11111111" Type="Integer"></asp:RangeValidator>

                     </div>
                     <div class="col-sm-3">
                         <asp:TextBox CssClass="form-control text-center" ID="txtDv" runat="server" Width="46px" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-sm-12">
                         <p>Correo:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:TextBox CssClass="form-control" ID="txtCorreo" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RqCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Correo Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-sm-12">
                         <p>Nombre:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:TextBox CssClass="form-control" ID="txtNombre" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RqNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-sm-12">
                         <p>Apellido:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:TextBox ID="txtApellido" CssClass="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RqApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Apellido Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-sm-12">
                         <p>Teléfono:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:TextBox  ID="txtTelefono" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RqTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Telefono Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Campo Numerico" MaximumValue="999999999" MinimumValue="11111111" Type="Integer"></asp:RangeValidator>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-sm-12">
                         <p>Dirección:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:TextBox CssClass="form-control" ID="txtDireccion" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RqDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Direccion Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-sm-12">
                         <asp:Button ID="btnAgregar" CssClass="btn btn-block btn-submit" runat="server" OnClick="btnAgregar_Click" Text="Agregar"  />
                     </div>
                     <div class="col-sm-12">
                         <asp:Label ID="lbMensaje" runat="server"></asp:Label>
                     </div>
                 </div>
                 
             </div>
             <div class="col-sm-4"></div>
          </div>

      
    </div>
</asp:Content>


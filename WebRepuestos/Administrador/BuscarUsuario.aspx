<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="BuscarUsuario.aspx.cs" Inherits="WebRepuestos.Administrador.BuscarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 216px;
        }
    .auto-style3 {
        width: 216px;
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
        </div>
        <div class="col-sm-12">
            <asp:Panel ID="mensaje2" runat="server">
                         <div class="alert alert-danger  alert-dismissible">
                             <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Error!</strong>  <asp:Label ID="lbMensaje2" runat="server"></asp:Label>
</div>

                    </asp:Panel>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6 panel-g">

                <div class="row">
                    <div class="col-sm-12">
                        <p>Rut:</p>
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="txtRut" CssClass="form-control" runat="server" AutoPostBack="True" OnTextChanged="txtRut_TextChanged" TextMode="Number"></asp:TextBox>
                &nbsp;
                
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtDv" CssClass="form-control" runat="server" Width="46px" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
           
                    </div>
                    <div class="col-sm-3">
                         <asp:Button ID="btnBuscar" CssClass="btn btn-purple" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                    </div>
                    <div class="col-sm-12">
                        <asp:RequiredFieldValidator ID="RqRut" runat="server" ControlToValidate="txtRut" ErrorMessage="Rut Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
           <asp:Label ID="lbMensaje0" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                       <p>Correo:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtCorreo" CssClass="form-control" runat="server"></asp:TextBox>
                        <br>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Nombre:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
                        <br>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Apellido:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtApellido" CssClass="form-control" runat="server"></asp:TextBox>
                        <br>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Teléfono:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtTelefono" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                        <br>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Perfil:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:DropDownList ID="ddlPerfil" CssClass="form-control" runat="server">
                </asp:DropDownList>
                        <br>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Dirección:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtDireccion" CssClass="form-control" runat="server"></asp:TextBox>
                        <br>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <asp:Button ID="btnModificar" CssClass="btn btn-submit" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
           
                    </div>
                    <div class="col-sm-4">

                    </div>
                    <div class="col-sm-4">
                        <asp:Button ID="btnEliminar" CssClass="btn btn-purple" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
            
                    </div>
                    <div class="col-sm-12">
                         <asp:Label ID="lbMensaje" runat="server"></asp:Label>
                    </div>
                </div>


            </div>
        </div>
    </div>


    
</asp:Content>

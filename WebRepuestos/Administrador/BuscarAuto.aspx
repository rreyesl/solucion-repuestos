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

    <div class="row">
        <div class="col-sm-12">
            <asp:Panel ID="mensaje2" runat="server">
                         <div class="alert alert-danger alert-dismissible">
                             <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Error!</strong>  <asp:Label ID="lbMensaje2" runat="server"></asp:Label>
</div>

                    </asp:Panel>
        </div>
        <div class="col-sm-12">
            <asp:Panel ID="mensaje1" runat="server">
        <div class="alert alert-success alert-dismissible"> 
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Correcto!</strong> <asp:Label ID="lbMensaje1" runat="server"></asp:Label>
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
                        <p>Patente:</p>
                    </div>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtPatente" CssClass="form-control" runat="server" AutoPostBack="True" OnTextChanged="txtPatente_TextChanged"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:Button ID="btnBuscar" CssClass="btn btn-purple" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                    </div>
                    <div class="col-sm-12">
                        <asp:Label ID="lbMensaje0" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <br />
                        <p>KM:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtKm" CssClass="form-control" runat="server"></asp:TextBox>
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Nro de Motor:</p>
                    </div>
                    <div class="col-sm-12">
                         <asp:TextBox ID="txtMotor" CssClass="form-control" runat="server"></asp:TextBox>
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Modelo:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:DropDownList ID="ddlModelo" CssClass="form-control" runat="server">
                </asp:DropDownList>
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Nro de Chasis:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtChasis" CssClass="form-control" runat="server"></asp:TextBox>
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Cliente:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:DropDownList ID="ddlCliente" CssClass="form-control" runat="server">
                </asp:DropDownList>
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <asp:Button ID="btnModificar" CssClass="btn btn-submit" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
                        <br />
                    </div>
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <asp:Button ID="btnEliminar" CssClass="btn btn-purple" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
            
                    </div>
                    <div class="col-sm-12">
                         <asp:Label ID="lbMensaje" runat="server"></asp:Label>
                    </div>
                </div>

            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>
    
</asp:Content>

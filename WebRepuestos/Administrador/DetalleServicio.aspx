<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="DetalleServicio.aspx.cs" Inherits="WebRepuestos.Mecanico.DetalleServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 132px;
    }
    .auto-style2 {
        width: 132px;
        height: 23px;
    }
    .auto-style3 {
        height: 23px;
    }
    .auto-style4 {
        width: 247px;
    }
    .auto-style5 {
        height: 23px;
        width: 247px;
    }
    .auto-style6 {
        width: 132px;
        height: 26px;
    }
    .auto-style7 {
        width: 247px;
        height: 26px;
    }
    .auto-style8 {
        height: 26px;
    }
        .auto-style9 {
            width: 132px;
            height: 44px;
        }
        .auto-style10 {
            width: 247px;
            height: 44px;
        }
        .auto-style11 {
            height: 44px;
        }
        .auto-style12 {
            width: 132px;
            height: 22px;
        }
        .auto-style13 {
            width: 247px;
            height: 22px;
        }
        .auto-style14 {
            height: 22px;
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
                        <p>Servicio:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:DropDownList ID="ddlServicio" CssClass="form-control" runat="server">
                </asp:DropDownList>
                        <br />
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <p>Repuesto:</p>
                    </div>
                    <div class="col-sm-8">
                        <asp:DropDownList ID="ddlRepuesto" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRepuesto_SelectedIndexChanged">
                </asp:DropDownList>
                       <br />
                    </div>
                    <div class="col-sm-4">
                        <asp:Button ID="btnMas" CssClass="btn btn-purple" runat="server" OnClick="btnMas_Click" Text="Agregar" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <p>Cantidad:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtCantidad" CssClass="form-control" runat="server" AutoPostBack="True" OnTextChanged="txtCantidad_TextChanged" TextMode="Number"></asp:TextBox>
                        <br>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Valor Neto:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtNeto" CssClass="form-control" runat="server" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
                        <br>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Valor IVA:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtIva" CssClass="form-control" runat="server" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
                        <br>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Total:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtTotal" CssClass="form-control" runat="server" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
                        <br>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-6">
                        <asp:Button ID="btnEditar" CssClass="btn btn-submit" runat="server" OnClick="btnEditar_Click" Text="Editar" />
                    </div>
                    <div class="col-sm-6">
                        <asp:Button ID="btnAgregar" CssClass="btn btn-submit" runat="server" OnClick="btnAgregar_Click" Text="Finalizar" />
                    </div>
                    <div class="col-sm-12">
                        <asp:Label ID="lbMensaje" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="row">
                    
                </div>





            </div>
            <div class="col-sm-4">
                <div class="col-sm-12">
                        <div class="table-responsive">
                    <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Repuesto" HeaderText="Repuesto" SortExpression="Repuesto" />
                        <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:repuestoConnectionString %>" SelectCommand="select t2.descripcion as Repuesto, t1.total as Total, t1.cantidad as Cantidad  from Detalle_Servicio as t1
inner join Repuesto as t2 on t1.id_repuesto = t2.id WHERE ([id_servicio] = @id_servicio)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlServicio" Name="id_servicio" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </div>
                    </div>
            </div>
            
        </div>
    </div>



   
</asp:Content>

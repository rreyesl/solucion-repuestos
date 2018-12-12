<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente/Gerente1.Master" AutoEventWireup="true" CodeBehind="ListarClientes.aspx.cs" Inherits="WebRepuestos.Gerente.ListarClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 124px;
        }
        .auto-style2 {
            width: 158px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10 text-center panel-g">

                <div class="table-responsive">
                    <asp:GridView ID="GridView1" CssClass="table table-hover table-condensed" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" PageSize="5">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" ReadOnly="True" SortExpression="Nombre" />
                                    <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                                    <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                                    <asp:BoundField DataField="rut" HeaderText="rut" ReadOnly="True" SortExpression="rut" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:repuestoConnectionString %>" SelectCommand="select distinct(t4.id), t4.correo, concat(t4.nombre, ' ', t4.apellido)as Nombre,t4.telefono, t4.direccion, concat(parsename(convert(varchar,cast(t4.rut as money),1),2), '-',t4.dv) as rut from Cliente as t4"></asp:SqlDataSource>
                </div>
                
            </div>
            <div class="col-sm-1"></div>
        </div>
    </div>

    
</asp:Content>

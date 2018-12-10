<%@ Page Title="" Language="C#" MasterPageFile="~/GestorInventario/Inventario1.Master" AutoEventWireup="true" CodeBehind="Stock.aspx.cs" Inherits="WebRepuestos.GestorInventario.Stock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6 text-center panel-g">


                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="repuesto" HeaderText="repuesto" SortExpression="repuesto" />
        <asp:BoundField DataField="sucursal" HeaderText="sucursal" SortExpression="sucursal" />
        <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:repuestoConnectionString %>" SelectCommand="select t1.id as id , t2.descripcion as repuesto, t3.nombre as sucursal ,t1.cantidad  from stock as t1
inner join Repuesto as t2 on t1.id_repuesto = t2.id
inner join Sucursal as t3 on t1.id_sucursal = t3.id;"></asp:SqlDataSource>



            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>


    


</asp:Content>

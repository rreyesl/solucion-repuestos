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
        <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
        <asp:BoundField DataField="id_sucursal" HeaderText="id_sucursal" SortExpression="id_sucursal" />
        <asp:BoundField DataField="id_repuesto" HeaderText="id_repuesto" SortExpression="id_repuesto" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Repuestos2ConnectionString2 %>" SelectCommand="SELECT * FROM [Stock]"></asp:SqlDataSource>



            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>


    


</asp:Content>

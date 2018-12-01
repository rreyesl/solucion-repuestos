<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente/Gerente1.Master" AutoEventWireup="true" CodeBehind="ListarClientes.aspx.cs" Inherits="WebRepuestos.Gerente.ListarClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10 text-center panel-g">


                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
            <asp:BoundField DataField="fecha_entrega" HeaderText="fecha_entrega" SortExpression="fecha_entrega" />
            <asp:BoundField DataField="valor_neto" HeaderText="valor_neto" SortExpression="valor_neto" />
            <asp:BoundField DataField="valor_total" HeaderText="valor_total" SortExpression="valor_total" />
            <asp:BoundField DataField="valor_iva" HeaderText="valor_iva" SortExpression="valor_iva" />
            <asp:CheckBoxField DataField="cancelado" HeaderText="cancelado" SortExpression="cancelado" />
            <asp:BoundField DataField="mano_obra" HeaderText="mano_obra" SortExpression="mano_obra" />
            <asp:BoundField DataField="repuesto" HeaderText="repuesto" SortExpression="repuesto" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Repuestos2ConnectionString9 %>" SelectCommand="SELECT [descripcion], [fecha_entrega], [valor_neto], [valor_total], [valor_iva], [cancelado], [mano_obra], [repuesto] FROM [Servicio]"></asp:SqlDataSource>


            </div>
            <div class="col-sm-1"></div>
        </div>
    </div>

    
</asp:Content>

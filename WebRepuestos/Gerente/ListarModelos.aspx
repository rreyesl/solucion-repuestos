<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente/Gerente1.Master" AutoEventWireup="true" CodeBehind="ListarModelos.aspx.cs" Inherits="WebRepuestos.Gerente.ListarModelos" %>
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
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
            <asp:BoundField DataField="Año" HeaderText="Año" SortExpression="Año" />
            <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:repuestoConnectionString %>" SelectCommand="SELECT mo.[id], mo.[nombre], mo.[descripcion], mo.[anio] &quot;Año&quot;, ma.nombre &quot;Marca&quot; FROM [Modelo] mo join marca ma on mo.id_marca = ma.id;"></asp:SqlDataSource>

            </div>
        </div>
    </div>


    </asp:Content>

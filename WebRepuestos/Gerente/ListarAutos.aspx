<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente/Gerente1.Master" AutoEventWireup="true" CodeBehind="ListarAutos.aspx.cs" Inherits="WebRepuestos.Gerente.ListarAutos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8 text-center panel-g">

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="patente" HeaderText="patente" SortExpression="patente" />
            <asp:BoundField DataField="km" HeaderText="km" SortExpression="km" />
            <asp:BoundField DataField="nro_motor" HeaderText="nro_motor" SortExpression="nro_motor" />
            <asp:BoundField DataField="nro_chasis" HeaderText="nro_chasis" SortExpression="nro_chasis" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Repuestos2ConnectionString8 %>" SelectCommand="SELECT [patente], [km], [nro_motor], [nro_chasis] FROM [Auto]"></asp:SqlDataSource>

            </div>
            <div class="col-sm-2"></div>
        </div>
    </div>

    



</asp:Content>

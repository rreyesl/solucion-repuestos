<%@ Page Title="" Language="C#" MasterPageFile="~/Mecanico/Mecanico1.Master" AutoEventWireup="true" CodeBehind="ListaAutos.aspx.cs" Inherits="WebRepuestos.Mecanico.ListaAutos" %>
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
            <asp:BoundField DataField="patente" HeaderText="patente" SortExpression="patente" />
            <asp:BoundField DataField="km" HeaderText="km" SortExpression="km" />
            <asp:BoundField DataField="nro_motor" HeaderText="nro_motor" SortExpression="nro_motor" />
            <asp:BoundField DataField="Modelo" HeaderText="Modelo" SortExpression="Modelo" />
            <asp:BoundField DataField="nro_chasis" HeaderText="nro_chasis" SortExpression="nro_chasis" />
            <asp:BoundField DataField="Dueño" HeaderText="Dueño" ReadOnly="True" SortExpression="Dueño" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Repuestos2ConnectionString2 %>" SelectCommand="
SELECT a.[id], a.[patente], a.[km], a.[nro_motor], m.nombre &quot;Modelo&quot;, a.[nro_chasis], c.nombre+' '+ c.apellido &quot;Dueño&quot;  FROM [Auto] a join cliente c on a.id_cliente = c.id
join Modelo m on a.id_cliente = m.id;"></asp:SqlDataSource>

            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>


    
</asp:Content>

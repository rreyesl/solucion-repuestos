<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="ListarAuto.aspx.cs" Inherits="WebRepuestos.Administrador.ListarAuto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8 text-center panel-g">

                <table class="nav-justified">
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style5">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="patente" HeaderText="patente" SortExpression="patente" />
                                    <asp:BoundField DataField="km" HeaderText="km" SortExpression="km" />
                                    <asp:BoundField DataField="nro_motor" HeaderText="nro_motor" SortExpression="nro_motor" />
                                    <asp:BoundField DataField="id_modelo" HeaderText="id_modelo" SortExpression="id_modelo" />
                                    <asp:BoundField DataField="nro_chasis" HeaderText="nro_chasis" SortExpression="nro_chasis" />
                                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" ReadOnly="True" SortExpression="Nombre" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:repuestoConnectionString %>" SelectCommand="select distinct(t1.id), t1.patente, t1.km, t1.nro_motor, t1.id_modelo, t1.nro_chasis, concat(t2.nombre, ' ', t2.apellido)as Nombre  from Auto as t1 
inner join Cliente as t2 on t1.id_cliente = t2.id
"></asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style5">

                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </div>
            <div class="col-sm-2"></div>
        </div>
    </div>

    
</asp:Content>

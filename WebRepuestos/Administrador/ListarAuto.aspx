<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="ListarAuto.aspx.cs" Inherits="WebRepuestos.Administrador.ListarAuto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8 text-center panel-g">

                <table style="width:100%;">
                    <tr>
                        <td class="auto-style2">Sucursal:</td>
                        <td class="auto-style4">
                            <asp:DropDownList ID="ddlSucursal" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style1">
                            <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style5">

                <asp:GridView ID="gvAutos" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="patente" HeaderText="patente" SortExpression="patente" />
            <asp:BoundField DataField="km" HeaderText="km" SortExpression="km" />
            <asp:BoundField DataField="nro_motor" HeaderText="nro_motor" SortExpression="nro_motor" />
            <asp:BoundField DataField="id_modelo" HeaderText="id_modelo" SortExpression="id_modelo" />
            <asp:BoundField DataField="nro_chasis" HeaderText="nro_chasis" SortExpression="nro_chasis" />
            <asp:BoundField DataField="rut" HeaderText="rut" SortExpression="rut" />
        </Columns>
    </asp:GridView>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Repuestos2ConnectionString8 %>" SelectCommand="select distinct(t1.id), t1.patente, t1.km, t1.nro_motor, t1.id_modelo, t1.nro_chasis, concat(parsename(convert(varchar,cast(t4.rut as money),1),2), '-',t4.dv) as rut  from Servicio as t2 inner join Auto as t1 on t2.id_auto = t1.id inner join Sucursal as t3 on t2.id_sucursal = t3.id inner join Cliente as t4 on t1.id_cliente = t4.id  WHERE (t3.[id] = @id)">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="sucursal" Type="Int32" />
        </SelectParameters>
                </asp:SqlDataSource>

            </div>
            <div class="col-sm-2"></div>
        </div>
    </div>

    
</asp:Content>

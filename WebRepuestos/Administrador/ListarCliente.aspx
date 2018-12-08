<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="ListarCliente.aspx.cs" Inherits="WebRepuestos.Administrador.ListarCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10 text-center panel-g">


                <table style="width:100%;">
                    <tr>
                        <td class="auto-style1">Sucursal:</td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="ddlSucursal" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="btnBuscar" runat="server" CssClass="col-xs-offset-0" OnClick="btnBuscar_Click" Text="buscar" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">
                            <asp:GridView ID="gvClientes" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" ReadOnly="True" SortExpression="Nombre" />
                                    <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                                    <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                                    <asp:BoundField DataField="rut" HeaderText="rut" ReadOnly="True" SortExpression="rut" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Repuestos2ConnectionString9 %>" SelectCommand="select distinct(t4.id), t4.correo, concat(t4.nombre, ' ', t4.apellido)as Nombre,t4.telefono, t4.direccion, concat(parsename(convert(varchar,cast(t4.rut as money),1),2), '-',t4.dv) as rut  from Servicio as t2 inner join Auto as t1 on t2.id_auto = t1.id inner join Sucursal as t3 on t2.id_sucursal = t3.id inner join Cliente as t4 on t1.id_cliente = t4.id where t3.[id] =@id ">
                                <SelectParameters>
                                    <asp:SessionParameter Name="id" SessionField="sucursal" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>


            </div>
            <div class="col-sm-1"></div>
        </div>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente/Gerente1.Master" AutoEventWireup="true" CodeBehind="ListarServicios.aspx.cs" Inherits="WebRepuestos.Gerente.ListarServicios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 140px
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div class="container">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-8 text-center panel-g">


                <table style="width:100%;">
                    <tr>
                        <td class="auto-style1">Sucursal:</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:DropDownList ID="ddlSucursal" runat="server">
                            </asp:DropDownList>
                            <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:GridView ID="gvTodos" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" AllowPaging="True" PageSize="5">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" ReadOnly="True" SortExpression="Nombre" />
                                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                                    <asp:BoundField DataField="Ingreso" HeaderText="Ingreso" ReadOnly="True" SortExpression="Ingreso" />
                                    <asp:BoundField DataField="Entrega" HeaderText="Entrega" ReadOnly="True" SortExpression="Entrega" />
                                    <asp:BoundField DataField="Neto" HeaderText="Neto" ReadOnly="True" SortExpression="Neto" />
                                    <asp:BoundField DataField="IVA" HeaderText="IVA" ReadOnly="True" SortExpression="IVA" />
                                    <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total" />
                                    <asp:BoundField DataField="cancelado" HeaderText="cancelado" ReadOnly="True" SortExpression="cancelado" />
                                    <asp:BoundField DataField="ManodeObra" HeaderText="ManodeObra" ReadOnly="True" SortExpression="ManodeObra" />
                                    <asp:BoundField DataField="repuesto" HeaderText="repuesto" SortExpression="repuesto" />
                                    <asp:BoundField DataField="nombre1" HeaderText="nombre1" SortExpression="nombre1" />
                                    <asp:BoundField DataField="rut" HeaderText="rut" ReadOnly="True" SortExpression="rut" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Repuestos2ConnectionString16 %>" SelectCommand="select distinct(t2.id), concat(t4.nombre, ' ', t4.apellido)as Nombre,t2.descripcion,convert(varchar,t2.fecha_ingreso,103) as Ingreso,convert(varchar,t2.fecha_entrega,103) as Entrega, concat('$ ',parsename(convert(varchar,cast(t2.valor_neto as money),1),2)) as Neto, concat('$ ',parsename(convert(varchar,cast(t2.valor_iva as money),1),2)) as IVA, concat('$ ',parsename(convert(varchar,cast(t2.valor_total as money),1),2)) as Total,case when  t2.cancelado = 1 then 'SI' else 'NO' end as cancelado, concat(t2.mano_obra, '%') as 'ManodeObra',t2.repuesto,
t5.nombre, 
concat(parsename(convert(varchar,cast(t4.rut as money),1),2), '-',t4.dv) as rut  from Servicio as t2 inner join Auto as t1 on t2.id_auto = t1.id 
inner join Sucursal as t3 on t2.id_sucursal = t3.id
inner join Cliente as t4 on t1.id_cliente = t4.id
inner join Estado_Servicio as t5 on t2.id_estado = t5.id "></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:GridView ID="gvServicios" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" PageSize="5">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" ReadOnly="True" SortExpression="Nombre" />
                                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                                    <asp:BoundField DataField="Ingreso" HeaderText="Ingreso" ReadOnly="True" SortExpression="Ingreso" />
                                    <asp:BoundField DataField="Entrega" HeaderText="Entrega" ReadOnly="True" SortExpression="Entrega" />
                                    <asp:BoundField DataField="Neto" HeaderText="Neto" ReadOnly="True" SortExpression="Neto" />
                                    <asp:BoundField DataField="IVA" HeaderText="IVA" ReadOnly="True" SortExpression="IVA" />
                                    <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total" />
                                    <asp:BoundField DataField="cancelado" HeaderText="cancelado" ReadOnly="True" SortExpression="cancelado" />
                                    <asp:BoundField DataField="ManodeObra" HeaderText="ManodeObra" ReadOnly="True" SortExpression="ManodeObra" />
                                    <asp:BoundField DataField="repuesto" HeaderText="repuesto" SortExpression="repuesto" />
                                    <asp:BoundField DataField="nombre1" HeaderText="nombre1" SortExpression="nombre1" />
                                    <asp:BoundField DataField="rut" HeaderText="rut" ReadOnly="True" SortExpression="rut" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Repuestos2ConnectionString10 %>" SelectCommand="select distinct(t2.id), concat(t4.nombre, ' ', t4.apellido)as Nombre,t2.descripcion,convert(varchar,t2.fecha_ingreso,103) as Ingreso,convert(varchar,t2.fecha_entrega,103) as Entrega, concat('$ ',parsename(convert(varchar,cast(t2.valor_neto as money),1),2)) as Neto, concat('$ ',parsename(convert(varchar,cast(t2.valor_iva as money),1),2)) as IVA, concat('$ ',parsename(convert(varchar,cast(t2.valor_total as money),1),2)) as Total,case when  t2.cancelado = 1 then 'SI' else 'NO' end as cancelado, concat(t2.mano_obra, '%') as 'ManodeObra',t2.repuesto,
t5.nombre, 
concat(parsename(convert(varchar,cast(t4.rut as money),1),2), '-',t4.dv) as rut  from Servicio as t2 inner join Auto as t1 on t2.id_auto = t1.id 
inner join Sucursal as t3 on t2.id_sucursal = t3.id
inner join Cliente as t4 on t1.id_cliente = t4.id
inner join Estado_Servicio as t5 on t2.id_estado = t5.id 
 where t3.[id] = @id
">
                                <SelectParameters>
                                    <asp:SessionParameter Name="id" SessionField="sucursal" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>


            </div>
            <div class="col-sm-1"></div>
        </div>
    </div>

    
</asp:Content>

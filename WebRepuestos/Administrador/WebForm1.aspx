<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebRepuestos.Administrador.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:GridView ID="gvDatos" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" ReadOnly="True" SortExpression="Nombre" />
                        <asp:BoundField DataField="Patente" HeaderText="Patente" SortExpression="Patente" />
                        <asp:BoundField DataField="Observación" HeaderText="Observación" SortExpression="Observación" />
                        <asp:BoundField DataField="Ingreso" HeaderText="Ingreso" ReadOnly="True" SortExpression="Ingreso" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Repuestos2ConnectionString4 %>" SelectCommand="select t3.nombre + ' ' +  t3.apellido as Nombre, t2.patente as Patente, t4.observacion as Observación,
  convert(varchar(10), t1.fecha_ingreso, 103) as Ingreso  from Servicio as t1 
inner join Auto as t2 on t1.id_auto = t2.id 
inner join Cliente as t3 on t2.id_cliente = t3.id 
inner join Reporte as t4 on t1.id = t4.id_servicio
order by t1.fecha_ingreso desc;"></asp:SqlDataSource>



       <asp:Button ID="btnExportar" runat="server" OnClick="btnExportar_Click" Text="Exportar" />
    </div>
    </form>
</body>
</html>

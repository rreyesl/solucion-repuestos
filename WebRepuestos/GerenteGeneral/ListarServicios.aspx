<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/GerenteGeneral/GerenteGeneral1.Master" CodeBehind="ListarServicios.aspx.cs" Inherits="WebRepuestos.GerenteGeneral.ListarServicios" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>

    <div class="container">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10 text-center panel-g">


                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                <asp:BoundField DataField="fecha_ingreso" HeaderText="fecha_ingreso" SortExpression="fecha_ingreso" />
                <asp:BoundField DataField="fecha_entrega" HeaderText="fecha_entrega" SortExpression="fecha_entrega" />
                <asp:BoundField DataField="valor_iva" HeaderText="valor_iva" SortExpression="valor_iva" />
                <asp:BoundField DataField="valor_neto" HeaderText="valor_neto" SortExpression="valor_neto" />
                <asp:BoundField DataField="valor_total" HeaderText="valor_total" SortExpression="valor_total" />
                <asp:CheckBoxField DataField="cancelado" HeaderText="cancelado" SortExpression="cancelado" />
                <asp:BoundField DataField="Sucursal" HeaderText="Sucursal" SortExpression="Sucursal" />
                <asp:BoundField DataField="Dueño" HeaderText="Dueño" SortExpression="Dueño" />
                <asp:BoundField DataField="patente" HeaderText="patente" SortExpression="patente" />
                <asp:BoundField DataField="repuesto" HeaderText="repuesto" SortExpression="repuesto" />
                <asp:BoundField DataField="mano_obra" HeaderText="mano_obra" SortExpression="mano_obra" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Repuestos2ConnectionString12 %>" SelectCommand="SELECT s.[id], s.[descripcion], s.[fecha_ingreso], s.[fecha_entrega], s.[valor_iva], 
s.[valor_neto], s.[valor_total], s.[cancelado], su.nombre &quot;Sucursal&quot;, u.nombre&quot;Dueño&quot;, a.patente, 
 s.[repuesto], s.[mano_obra] FROM [Servicio] s join Sucursal su on s.id_usuario = su.id join Usuario u on s.id_usuario = u.id 
 join Auto a on s.id_auto = a.id;"></asp:SqlDataSource>


            </div>
            <div class="col-sm-1"></div>
        </div>
    </div>
    
        
    
    </div>

</asp:Content>





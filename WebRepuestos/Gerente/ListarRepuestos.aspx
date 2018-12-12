<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente/Gerente1.Master" AutoEventWireup="true" CodeBehind="ListarRepuestos.aspx.cs" Inherits="WebRepuestos.Gerente.ListarRepuestos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6 text-center panel-g">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="5">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="sku" HeaderText="sku" SortExpression="sku" />
            <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
            <asp:BoundField DataField="Modelo" HeaderText="Modelo" SortExpression="Modelo" />
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
            <asp:BoundField DataField="valor_neto" HeaderText="valor_neto" SortExpression="valor_neto" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:repuestoConnectionString %>" SelectCommand="SELECT r.[id], r.[sku], r.[descripcion], m.nombre &quot;Modelo&quot;, t.nombre &quot;Tipo&quot;, r.[valor_neto] FROM [Repuesto] r join Modelo m on r.id_modelo = m.id
join Tipo t on r.id_tipo = t.id; "></asp:SqlDataSource>
                </div>
                


            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>

    
</asp:Content>

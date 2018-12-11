<%@ Page Title="" Language="C#" MasterPageFile="~/Clientee/Cliente1.Master" AutoEventWireup="true" CodeBehind="Cotizacion.aspx.cs" Inherits="WebRepuestos.Cliente.Cotizacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 95px;
    }
    .auto-style2 {
        width: 164px;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container container-bg">
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <asp:Panel ID="mensaje1" runat="server">
                <div class="alert alert-success"> 
                    <strong>Correcto!</strong> <asp:Label ID="lbMensaje1" runat="server"></asp:Label>
                </div>
            </asp:Panel>
            <asp:Panel ID="mensaje2" runat="server">
                <div class="alert alert-danger">
                    <strong>Error!</strong>  <asp:Label ID="lbMensaje2" runat="server"></asp:Label>
                </div>
            </asp:Panel>
        </div>
        <div class="col-sm-4"></div>
    </div>
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <div class="col-sm-12">
                <asp:TextBox CssClass="form-control text-center" ID="txtPatente" runat="server" placeholder="Ingrese Patente"></asp:TextBox>
            </div>
            <div class="col-sm-12">
                <asp:Button CssClass="btn btn-block btn-submit" ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
            </div>
        </div>
        <div class="col-sm-4"></div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <br><br>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <div class="table-responsive">
                <asp:GridView CssClass="table" ID="gvServicios" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gvServicios_SelectedIndexChanged" AllowPaging="True" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="descripcion" HeaderText="Descripción" SortExpression="descripcion" />
                        <asp:BoundField DataField="fecha_entrega" HeaderText="Fecha Entrega" SortExpression="fecha_entrega" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="valor_total" HeaderText="Valor Total" SortExpression="valor_total" DataFormatString="${0:N0}" />
                        <asp:BoundField DataField="repuesto" HeaderText="Repuesto" SortExpression="repuesto" />
                        <asp:BoundField DataField="nombre" HeaderText="Estado" SortExpression="estado" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:repuestoConnectionString %>" SelectCommand="SELECT t1.[id], t1.[descripcion], t1.[fecha_entrega], t1.[valor_total], t1.[repuesto], t2.[nombre] FROM [Servicio] as t1 inner join Estado_Servicio as t2 on t1.id_estado = t2.id WHERE (t1.[id_auto] = @id_auto)">
                    <SelectParameters>
                        <asp:SessionParameter Name="id_auto" SessionField="idauto" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            
        </div>
        <div class="col-sm-2"></div>
    </div>

    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <div class="col-sm-12">
                <p><asp:Label ID="lbC" runat="server" Text="Cotizacion:"></asp:Label> <asp:Label ID="lbCotizacion" runat="server"></asp:Label></p>
            </div>
            <div class="col-sm-12">
                <div class="col-sm-6">
                    <asp:Button CssClass="btn btn-submit" ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" />
                </div>
                <div class="col-sm-6">
                    <asp:Button CssClass="btn btn-submit" ID="btnRechazar" runat="server" OnClick="btnRechazar_Click" Text="Recharzar" />
                </div>
            </div>
        </div>

        <div class="col-sm-4"></div>
    </div>
        </div>
    <table style="width: 100%;">
       <asp:Label ID="lbMensaje" runat="server"></asp:Label>
        <asp:Label ID="lbId" runat="server" Visible="False"></asp:Label>
        
        </table>


</asp:Content>

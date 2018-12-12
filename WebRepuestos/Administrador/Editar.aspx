<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="Editar.aspx.cs" Inherits="WebRepuestos.Clientee.Editar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style3 {
        width: 514px;
    }
    .auto-style8 {
        width: 369px;
    }
    .auto-style2 {
        width: 515px;
    }
    .auto-style1 {
        width: 516px;
    }
        .auto-style18 {
            width: 514px;
            height: 22px;
        }
        .auto-style19 {
            width: 369px;
            height: 22px;
        }
        .auto-style20 {
            height: 22px;
        }
        .auto-style21 {
            width: 515px;
            height: 20px;
        }
        .auto-style22 {
            width: 369px;
            height: 20px;
        }
        .auto-style23 {
            width: 516px;
            height: 20px;
        }
        .auto-style24 {
            height: 20px;
        }
        .auto-style25 {
            height: 171px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-sm-12">
            <asp:Panel ID="mensaje1" runat="server">
                    <div class="alert alert-success alert-dismissible ">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
              <strong>Correcto!</strong> <asp:Label ID="lbMensaje1" runat="server"></asp:Label>
            </div>
    </asp:Panel>
        </div>
        <div class="col-sm-12">
             <asp:Panel ID="mensaje2" runat="server">
                         <div class="alert alert-danger alert-dismissible">
                             <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Error!</strong>  <asp:Label ID="lbMensaje2" runat="server"></asp:Label>
</div>

                    </asp:Panel>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6 panel-g">

                <div class="row">
                    <div class="col-sm-12">
                        <p>Patente:</p>
                    </div>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtPatente" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:Button ID="btnBuscar" CssClass="btn btn-purple" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                    </div>
                    <div class="col-sm-12">
                        <br />
                    </div>
                </div>

                <div class="table-responsive">
                    <asp:GridView ID="gvCotizaciones" CssClass="table table-hover table-condensed" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" PageSize="5">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="valor_neto" HeaderText="Valor Neto" SortExpression="valor_neto" />
                        <asp:BoundField DataField="valor_iva" HeaderText="Valor IVA" SortExpression="valor_iva" />
                        <asp:BoundField DataField="valor_total" HeaderText="Valor Total" SortExpression="valor_total" />
                        <asp:BoundField DataField="fecha_ingreso" HeaderText="Fecha Ingreso" SortExpression="fecha_ingreso" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:repuestoConnectionString %>" DeleteCommand="DELETE FROM [Servicio] WHERE [id] = @id" InsertCommand="INSERT INTO [Servicio] ([valor_neto], [valor_iva], [valor_total], [fecha_ingreso]) VALUES (@valor_neto, @valor_iva, @valor_total, @fecha_ingreso)" SelectCommand="SELECT [id], [valor_neto], [valor_iva], [valor_total], [fecha_ingreso] FROM [Servicio] WHERE ([id_auto] = @id_auto)" UpdateCommand="UPDATE [Servicio] SET [valor_neto] = @valor_neto, [valor_iva] = @valor_iva, [valor_total] = @valor_total, [fecha_ingreso] = @fecha_ingreso WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="valor_neto" Type="Decimal" />
                        <asp:Parameter Name="valor_iva" Type="Decimal" />
                        <asp:Parameter Name="valor_total" Type="Decimal" />
                        <asp:Parameter Name="fecha_ingreso" Type="DateTime" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="id_auto" SessionField="idauto" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="valor_neto" Type="Decimal" />
                        <asp:Parameter Name="valor_iva" Type="Decimal" />
                        <asp:Parameter Name="valor_total" Type="Decimal" />
                        <asp:Parameter Name="fecha_ingreso" Type="DateTime" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </div>

                <div class="row">
                    <div class="col-sm-12"><br></div>
                </div>

                <div class="">
                    <div class="table-responsive">
                        <asp:GridView ID="gvRepuestos" CssClass="table table-hover table-condensed" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="gvRepuestos_SelectedIndexChanged" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                        <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                        <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                        <asp:CommandField SelectText="Eliminar" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:repuestoConnectionString %>" SelectCommand="select t1.id, t1.cantidad, t1.total, t2.descripcion
from Detalle_Servicio as t1 inner join Repuesto as t2 on t1.id_repuesto = t2.id 
where t1.id_servicio = @idservicio">
                    <SelectParameters>
                        <asp:SessionParameter Name="idservicio" SessionField="idservicio" />
                    </SelectParameters>
                </asp:SqlDataSource>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <br />
                        <p>Repuestos:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:DropDownList ID="ddlRepuestos" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRepuestos_SelectedIndexChanged">
                </asp:DropDownList>
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Cantidad:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control" AutoPostBack="True" OnTextChanged="txtCantidad_TextChanged" TextMode="Number"></asp:TextBox>
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Valor Unitario:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtValor" runat="server" CssClass="form-control" AutoPostBack="True" OnTextChanged="txtValor_TextChanged" ReadOnly="True"></asp:TextBox>
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Valor Total:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtTotalRepuesto" CssClass="form-control" runat="server" AutoPostBack="True" OnTextChanged="txtValor_TextChanged" ReadOnly="True"></asp:TextBox>
                         <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <asp:Button ID="btnAgregar0" CssClass="btn btn-block btn-submit" runat="server" Text="Agregar" OnClick="btnAgregar0_Click" />
                            
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <br />
                        <p>Valor Neto:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtNeto" CssClass="form-control" runat="server" AutoPostBack="True" OnTextChanged="txtNeto_TextChanged" ReadOnly="True"></asp:TextBox>
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Valor IVA:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtIVA" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <p>Valor Total:</p>
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtTotal" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <asp:Label ID="lbMensaje" runat="server"></asp:Label>
                    </div>
                </div>

            </div>
        </div>
    </div>


    
</asp:Content>

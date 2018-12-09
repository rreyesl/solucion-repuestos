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

    <div class="container">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6 panel-g">


                <table style="width: 100%;">


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
        <tr>
            <td class="auto-style1">Patente:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPatente" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="gvCotizaciones" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" PageSize="5">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="valor_neto" HeaderText="valor_neto" SortExpression="valor_neto" />
                        <asp:BoundField DataField="valor_iva" HeaderText="valor_iva" SortExpression="valor_iva" />
                        <asp:BoundField DataField="valor_total" HeaderText="valor_total" SortExpression="valor_total" />
                        <asp:BoundField DataField="fecha_ingreso" HeaderText="fecha_ingreso" SortExpression="fecha_ingreso" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=Repuestos2;Integrated Security=True" DeleteCommand="DELETE FROM [Servicio] WHERE [id] = @id" InsertCommand="INSERT INTO [Servicio] ([valor_neto], [valor_iva], [valor_total], [fecha_ingreso]) VALUES (@valor_neto, @valor_iva, @valor_total, @fecha_ingreso)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [valor_neto], [valor_iva], [valor_total], [fecha_ingreso] FROM [Servicio] WHERE ([id_auto] = @id_auto)" UpdateCommand="UPDATE [Servicio] SET [valor_neto] = @valor_neto, [valor_iva] = @valor_iva, [valor_total] = @valor_total, [fecha_ingreso] = @fecha_ingreso WHERE [id] = @id">
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
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style25">
                <asp:GridView ID="gvRepuestos" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="gvRepuestos_SelectedIndexChanged" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                        <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                        <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                        <asp:CommandField SelectText="Eliminar" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Repuestos2ConnectionString19 %>" SelectCommand="select t1.id, t1.cantidad, t1.total, t2.descripcion
from Detalle_Servicio as t1 inner join Repuesto as t2 on t1.id_repuesto = t2.id 
where t1.id_servicio = @idservicio">
                    <SelectParameters>
                        <asp:SessionParameter Name="idservicio" SessionField="idservicio" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">
                &nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">Repuestos:</td>
            <td class="auto-style22">
                <asp:DropDownList ID="ddlRepuestos" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRepuestos_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style21">Cantidad:</td>
            <td class="auto-style22">
                <asp:TextBox ID="txtCantidad" runat="server" AutoPostBack="True" OnTextChanged="txtCantidad_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td>Valor Unitario:</td>
            <td>
                <asp:TextBox ID="txtValor" runat="server" AutoPostBack="True" OnTextChanged="txtValor_TextChanged" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Valor Total:</td>
            <td>
                <asp:TextBox ID="txtTotalRepuesto" runat="server" AutoPostBack="True" OnTextChanged="txtValor_TextChanged" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">Valor Neto: </td>
            <td class="auto-style19">
                <asp:TextBox ID="txtNeto" runat="server" AutoPostBack="True" OnTextChanged="txtNeto_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style20">
                </td>
        </tr>
        <tr>
            <td class="auto-style18">Valor IVA:</td>
            <td class="auto-style19">
                <asp:TextBox ID="txtIVA" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style20">
                </td>
        </tr>
        <tr>
            <td class="auto-style3">Valor Total:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtTotal" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22">
                &nbsp;</td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">
                &nbsp;</td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">
                &nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22">
            </td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">
                <%--<asp:Button ID="btnAgregar" CssClass="btn btn-submit" runat="server" Text="Editar" OnClick="btnAgregar_Click" />--%>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbMensaje" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

            </div>
        </div>
    </div>


    
</asp:Content>

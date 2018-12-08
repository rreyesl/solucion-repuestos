<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="DetalleServicio.aspx.cs" Inherits="WebRepuestos.Mecanico.DetalleServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 132px;
    }
    .auto-style2 {
        width: 132px;
        height: 23px;
    }
    .auto-style3 {
        height: 23px;
    }
    .auto-style4 {
        width: 247px;
    }
    .auto-style5 {
        height: 23px;
        width: 247px;
    }
    .auto-style6 {
        width: 132px;
        height: 26px;
    }
    .auto-style7 {
        width: 247px;
        height: 26px;
    }
    .auto-style8 {
        height: 26px;
    }
        .auto-style9 {
            width: 132px;
            height: 44px;
        }
        .auto-style10 {
            width: 247px;
            height: 44px;
        }
        .auto-style11 {
            height: 44px;
        }
        .auto-style12 {
            width: 132px;
            height: 22px;
        }
        .auto-style13 {
            width: 247px;
            height: 22px;
        }
        .auto-style14 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6 panel-g">

                 <table class="nav-justified">

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
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Servicio:</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlServicio" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Repuesto:</td>
            <td class="auto-style7">
                <asp:DropDownList ID="ddlRepuesto" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRepuesto_SelectedIndexChanged" style="height: 22px">
                </asp:DropDownList>
            &nbsp;<asp:Button ID="btnMas" runat="server" OnClick="btnMas_Click" Text="Agregar" />
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style2">Cantidad:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtCantidad" runat="server" AutoPostBack="True" OnTextChanged="txtCantidad_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Valor Neto:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtNeto" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="auto-style3">
                </td>
        </tr>
        <tr>
            <td class="auto-style2">Valor IVA:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtIva" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Total:</td>
            <td class="auto-style13">
                <asp:TextBox ID="txtTotal" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Button ID="btnEditar" runat="server" OnClick="btnEditar_Click" Text="Editar" />
            </td>
            <td class="auto-style10">
                <asp:Button ID="btnAgregar" CssClass="btn btn-submit" runat="server" OnClick="btnAgregar_Click" Text="Finalizar" />
            </td>
            <td class="auto-style11">
                </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="lbMensaje" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Repuesto" HeaderText="Repuesto" SortExpression="Repuesto" />
                        <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Repuestos2ConnectionString8 %>" SelectCommand="select t2.descripcion as Repuesto, t1.total as Total, t1.cantidad as Cantidad  from Detalle_Servicio as t1
inner join Repuesto as t2 on t1.id_repuesto = t2.id WHERE ([id_servicio] = @id_servicio)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlServicio" Name="id_servicio" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>



            </div>
        </div>
    </div>



   
</asp:Content>

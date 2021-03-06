﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Clientee/Cliente1.Master" AutoEventWireup="true" CodeBehind="Cotizacion.aspx.cs" Inherits="WebRepuestos.Cliente.Cotizacion" %>
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
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
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
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:GridView ID="gvServicios" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gvServicios_SelectedIndexChanged" AllowPaging="True" PageSize="5">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Repuestos2ConnectionString2 %>" SelectCommand="SELECT t1.[id], t1.[descripcion], t1.[fecha_entrega], t1.[valor_total], t1.[repuesto], t2.[nombre] FROM [Servicio] as t1 inner join Estado_Servicio as t2 on t1.id_estado = t2.id WHERE (t1.[id_auto] = @id_auto)">
                    <SelectParameters>
                        <asp:SessionParameter Name="id_auto" SessionField="idauto" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lbC" runat="server" Text="Cotizacion:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="lbCotizacion" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" />
            </td>
            <td>
                <asp:Button ID="btnRechazar" runat="server" OnClick="btnRechazar_Click" Text="Recharzar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbMensaje" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbId" runat="server" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente/Gerente1.Master" AutoEventWireup="true" CodeBehind="ListarAutos.aspx.cs" Inherits="WebRepuestos.Gerente.ListarAutos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 19px;
        }
        .auto-style2 {
            height: 19px;
            width: 84px;
        }
        .auto-style3 {
            width: 84px;
        }
        .auto-style4 {
            height: 19px;
            width: 306px;
        }
        .auto-style5 {
            width: 306px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8 text-center panel-g">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" CssClass="table table-hover table-condensed" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" PageSize="5">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="patente" HeaderText="patente" SortExpression="patente" />
                                    <asp:BoundField DataField="km" HeaderText="km" SortExpression="km" />
                                    <asp:BoundField DataField="nro_motor" HeaderText="nro_motor" SortExpression="nro_motor" />
                                    <asp:BoundField DataField="id_modelo" HeaderText="id_modelo" SortExpression="id_modelo" />
                                    <asp:BoundField DataField="nro_chasis" HeaderText="nro_chasis" SortExpression="nro_chasis" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:repuestoConnectionString %>" SelectCommand="select distinct(t1.id), t1.patente, t1.km, t1.nro_motor, t1.id_modelo, t1.nro_chasis from Auto as t1 
"></asp:SqlDataSource>
                </div>
                

            </div>
            <div class="col-sm-2"></div>
        </div>
    </div>

    



</asp:Content>

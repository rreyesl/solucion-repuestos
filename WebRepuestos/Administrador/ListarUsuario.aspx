<%@ Page Language="C#"  MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="ListarUsuario.aspx.cs" Inherits="WebRepuestos.Administrador.ListarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <div class="container">
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8 panel-g">


                    <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="rut" HeaderText="rut" SortExpression="rut" />
                <asp:BoundField DataField="dv" HeaderText="dv" SortExpression="dv" />
                <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" ReadOnly="True" />
                <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                <asp:BoundField DataField="Perfil" HeaderText="Perfil" SortExpression="Perfil" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:Repuestos2ConnectionString6 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [id] = @id" InsertCommand="INSERT INTO [Usuario] ([rut], [dv], [correo], [nombre], [apellido], [telefono], [id_perfil], [direccion], [pass]) VALUES (@rut, @dv, @correo, @nombre, @apellido, @telefono, @id_perfil, @direccion, @pass)" SelectCommand="SELECT u.[id], u.[rut], u.[dv], u.[correo], u.[nombre] + ' ' + u.[apellido] as nombre,
 u.[telefono], u.[direccion], p.nombre &quot;Perfil&quot; FROM [Usuario] u 
 join Perfil p on u.id_perfil = p.id;" UpdateCommand="UPDATE [Usuario] SET [rut] = @rut, [dv] = @dv, [correo] = @correo, [nombre] = @nombre, [apellido] = @apellido, [telefono] = @telefono, [id_perfil] = @id_perfil, [direccion] = @direccion, [pass] = @pass WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="rut" Type="Int32" />
                <asp:Parameter Name="dv" Type="String" />
                <asp:Parameter Name="correo" Type="String" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="apellido" Type="String" />
                <asp:Parameter Name="telefono" Type="Int32" />
                <asp:Parameter Name="id_perfil" Type="Int32" />
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="pass" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="rut" Type="Int32" />
                <asp:Parameter Name="dv" Type="String" />
                <asp:Parameter Name="correo" Type="String" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="apellido" Type="String" />
                <asp:Parameter Name="telefono" Type="Int32" />
                <asp:Parameter Name="id_perfil" Type="Int32" />
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


                </div>
                <div class="col-sm-2"></div>
            </div>
        </div>


        
    
    </div>

</asp:Content>




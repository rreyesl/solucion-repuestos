<%@ Page Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="AgregarAuto.aspx.cs" Inherits="WebRepuestos.Mecanico.AgregarAuto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 432px;
    }
    .auto-style2 {
        width: 431px;
    }
    .auto-style3 {
        width: 430px;
    }
    .auto-style4 {
        width: 182px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="alert alert-danger" style=" display:none">
  <strong>Congirmacion!</strong>  <asp:Label ID="lbMensaje" runat="server"></asp:Label>
</div>

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
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Patente:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPatente" runat="server" Width="117px" AutoPostBack="True" OnTextChanged="txtPatente_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RqPatente" runat="server" ControlToValidate="txtPatente" ErrorMessage="Patente Obligatoria!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">KM:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtKm" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqKM" runat="server" ControlToValidate="txtKm" ErrorMessage="KM Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeKM" runat="server" ControlToValidate="txtKm" ErrorMessage="Digite KM valido!" MinimumValue="0" Type="Integer" SetFocusOnError="True" MaximumValue="999999999"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Numero Motor:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtMotor" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqMotor" runat="server" ControlToValidate="txtMotor" ErrorMessage="N° Motor Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Modelo:</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlModelo" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Numero Chasis:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtChasis" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RqChasis" runat="server" ControlToValidate="txtChasis" ErrorMessage="N° Chasis Oblagatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Cliente:</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlCliente" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="btnAgregar" CssClass="btn btn-submit" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
               <%-- <asp:Label ID="lbMensaje" runat="server"></asp:Label>--%>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>



             </div>
             <div class="col-sm-3"></div>
         </div>
    
    </div>


  
</asp:Content>


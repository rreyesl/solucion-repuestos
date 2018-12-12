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

   

    <div class="row">
        <div class="col-sm-12">
             <div class="alert alert-danger alert-dismissible" style=" display:none">
                 <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Confirmación!</strong>  <asp:Label ID="lbMensaje" runat="server"></asp:Label>
            </div>
        </div>
        <div class="col-sm-12">
            <asp:Panel ID="mensaje1" runat="server">
                <div class="alert alert-success alert-dismissible"> 
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
             <div class="col-sm-4"></div>
             <div class="col-sm-4 panel-g">
                 <div class="row">
                     <div class="col-sm-12">
                         <br />
                         <p>Patente:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:TextBox ID="txtPatente" CssClass="form-control" runat="server" AutoPostBack="True" OnTextChanged="txtPatente_TextChanged"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RqPatente" runat="server" ControlToValidate="txtPatente" ErrorMessage="Patente Obligatoria!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-sm-12">
                         <p>Km:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:TextBox ID="txtKm" CssClass="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RqKM" runat="server" ControlToValidate="txtKm" ErrorMessage="KM Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeKM" runat="server" ControlToValidate="txtKm" ErrorMessage="Digite KM valido!" MinimumValue="0" Type="Integer" SetFocusOnError="True" MaximumValue="999999999"></asp:RangeValidator>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-sm-12">
                         <p>Nro Motor:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:TextBox ID="txtMotor" CssClass="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RqMotor" runat="server" ControlToValidate="txtMotor" ErrorMessage="N° Motor Obligatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-sm-12">
                         <p>Modelo:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:DropDownList ID="ddlModelo" CssClass="form-control" runat="server">
                             
                </asp:DropDownList>
                         <br>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-sm-12">
                         <p>Nro Chasis: </p>
                     </div>
                     <div class="col-sm-12">
                         <asp:TextBox ID="txtChasis" CssClass="form-control" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RqChasis" runat="server" ControlToValidate="txtChasis" ErrorMessage="N° Chasis Oblagatorio!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-sm-12">
                         <p>Cliente:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:DropDownList ID="ddlCliente" CssClass="form-control" runat="server">
                        </asp:DropDownList>
                         <br>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-sm-12">
                         <asp:Button ID="btnAgregar" CssClass="btn btn-block btn-submit" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
                     </div>
                     <div class="col-sm-12">
                          <%-- <asp:Label ID="lbMensaje" runat="server"></asp:Label>--%>
                     </div>
                 </div>

             </div>
             <div class="col-sm-4"></div>
         </div>
    
    </div>


  
</asp:Content>


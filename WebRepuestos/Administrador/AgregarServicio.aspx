<%@ Page Language="C#" MasterPageFile="~/Administrador/Administrador1.Master" AutoEventWireup="true" CodeBehind="AgregarServicio.aspx.cs" Inherits="WebRepuestos.Mecanico.AgregarServicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 516px;
    }
    .auto-style2 {
        width: 515px;
    }
    .auto-style3 {
        width: 514px;
    }
    .auto-style4 {
        width: 512px;
        height: 26px;
    }
    .auto-style5 {
        width: 511px;
        height: 26px;
    }
    .auto-style6 {
        width: 509px;
        height: 26px;
    }
    .auto-style7 {
        width: 507px;
        height: 26px;
    }
    .auto-style8 {
        width: 369px;
    }
    .auto-style9 {
        width: 369px;
        height: 26px;
    }
    .auto-style10 {
        width: 514px;
        height: 21px;
    }
    .auto-style11 {
        width: 369px;
        height: 21px;
    }
    .auto-style12 {
        height: 21px;
    }
    .auto-style13 {
        width: 514px;
        height: 26px;
    }
    .auto-style14 {
        height: 26px;
    }
        .auto-style15 {
            width: 514px;
            height: 22px;
        }
        .auto-style16 {
            width: 369px;
            height: 22px;
        }
        .auto-style17 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
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
                         <p>Descripción:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:TextBox ID="txtDescripcion" CssClass="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RqDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Descripcion Obligatoria!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     </div>
                 </div>

                 <div class="row">
                     <div class="col-sm-12">
                         <p>Repuesto:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:DropDownList ID="ddlRepuesto" CssClass="form-control"  runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRepuesto_SelectedIndexChanged">
                </asp:DropDownList>
                         <br>
                     </div>
                 </div>

                 <div class="row">
                     <div class="col-sm-12">
                         <p>Cantidad:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:TextBox ID="txtCantidad" CssClass="form-control" runat="server" OnTextChanged="txtCantidad_TextChanged" AutoPostBack="True" TextMode="Number"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RqCantidad" runat="server" ControlToValidate="txtCantidad" ErrorMessage="Cantidad Obligatoria!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     </div>
                 </div>

                 <div class="row">
                     <div class="col-sm-12">
                         <p>Fecha de Ingreso:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:Calendar ID="dpIngreso" runat="server" OnSelectionChanged="dpIngreso_SelectionChanged"></asp:Calendar>
                         <br>
                     </div>
                 </div>

                 <div class="row">
                     <div class="col-sm-12">
                         <p>Fecha de Entrega:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:Calendar ID="dpEntrega" runat="server" OnSelectionChanged="dpEntrega_SelectionChanged"></asp:Calendar>
                         <br>
                     </div>
                 </div>

                 <div class="row">
                     <div class="col-sm-12">
                         <p>Valor Neto:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:TextBox ID="txtNeto" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                         <br>
                     </div>
                 </div>

                 <div class="row">
                     <div class="col-sm-12">
                         <p>Valor IVA:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:TextBox ID="txtIVA" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                         <br>
                     </div>
                 </div>

                 <div class="row">
                     <div class="col-sm-12">
                         <p>Valor Total:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:TextBox ID="txtTotal" CssClass="form-control" runat="server" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
                         <br>
                     </div>
                 </div>

                 <div class="row">
                     <div class="col-sm-12">
                         <p>Sucursal:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:DropDownList ID="ddlSucursal" CssClass="form-control" runat="server">
                </asp:DropDownList>
                         <br>
                     </div>
                 </div>

                 <div class="row">
                     <div class="col-sm-12">
                         <p>Vehículo:</p>
                     </div>
                     <div class="col-sm-12">
                         <asp:DropDownList ID="ddlAuto" CssClass="form-control" runat="server">
                </asp:DropDownList>
                         <br>
                     </div>
                 </div>

                 <div class="row">
                     <div class="col-sm-12">
                         <p>Mecánico:</p>
                     </div>
                     <div class="col-sm-12"> 
                         <asp:DropDownList ID="ddlUsuario" CssClass="form-control" runat="server">
                </asp:DropDownList>
                         <br>
                     </div>
                 </div>

                 <div class="row">
                     <div class="col-sm-12">
                         <asp:Button ID="btnAgregar" CssClass="btn btn-block btn-submit" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
                     </div>
                     <div class="col-sm-12">
                          <asp:Label ID="lbMensaje" runat="server"></asp:Label>
                     </div>
                 </div>

             </div>
             <div class="col-sm-4"></div>
         </div>
    
    </div>
</asp:Content>

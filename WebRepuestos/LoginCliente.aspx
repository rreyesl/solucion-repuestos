﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginCliente.aspx.cs" Inherits="WebRepuestos.LoginCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <script src="assets/jquery-3.3.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/style.css">

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4 text-center" style="margin-top: 10%; padding-top: 0px; padding-bottom: 30px; border-radius: 25px; background-color:#f1f1f1">

                    <div class="login-icon">
                        <li class="fa fa-user-circle"></li>
                    </div>

                    <asp:Login ID="Login1" runat="server" CssClass="login-cliente" BackColor="#f1f1f1" BorderColor="" BorderPadding="4" BorderStyle="Solid" BorderWidth="0px" Font-Names="arial" Font-Size="1em" ForeColor="#333333" OnAuthenticate="Login1_Authenticate">
                            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                            <LayoutTemplate>
                                <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                                    <tr>
                                        <td>
                                            <table cellpadding="0">
                                                <tr>
                                                    <td align="center" class="login-title" colspan="2" style="color:#CCCCCC;background-color:Transparent;font-size:0.9em;font-weight:bold;">Iniciar sesión</td>
                                                </tr>
                                                <tr>
                                                    <td align="right">&nbsp;</td>
                                                    <td>
                                                        <asp:TextBox ID="UserName" placeholder="usuario" runat="server" CssClass="form-control" Font-Size="0.8em"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">&nbsp;</td>
                                                    <td>
                                                        <asp:TextBox ID="Password" placeholder="contraseña" runat="server" CssClass="form-control" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                      <%--<asp:CheckBox ID="RememberMe" runat="server" Text="Recordármelo la próxima vez." Visible="False" />--%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2" style="color:Red;">
                                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2">
                                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" CssClass="btn btn-submit" Font-Size="1em" Text="Inicio de sesión" ValidationGroup="Login1" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <LoginButtonStyle CssClass="btn btn-submit" Font-Size="1em" />
                            <TextBoxStyle Font-Size="0.8em" CssClass="form-control" />
                            <TitleTextStyle CssClass="login-title"  BackColor="transparent" Font-Bold="True" Font-Size="0.9em" ForeColor="#CCCCCC" />
                        </asp:Login>

                    <%--<asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" DisplayRememberMe="False">
                    </asp:Login>--%>
                </div>
                <div class="col-sm-4"></div>
                </div>
            </div>
        
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginCliente.aspx.cs" Inherits="WebRepuestos.LoginCliente" %>

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
                <div class="col-sm-4" style="margin-top: 10%; padding-left: 70px; padding-right: 70px; padding-top: 30px; padding-bottom: 30px; border-radius: 25px; background-color:#f1f1f1">
                    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
        </asp:Login>
                </div>
                <div class="col-sm-4"></div>
                </div>
            </div>
        
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log.aspx.cs" Inherits="Login_SqlServer.Log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Log Test</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" ></script>
    <link href="src/css/Log.css" rel="stylesheet" />
</head>
<body class="bg-light">
    <div class="wrapper">
        <div id="formcontent">
            <form id="form1_login" runat="server">
                <div class="form-control">
                    <div class="col-md-6 text-center mb-5">
                        <asp:Label class="h3" cass="heading-section" ID="lbBienvenido" runat="server" Text="Bienvenido/a al sistema"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lbUsuario" runat="server" Text="Usuario"></asp:Label>
                        <asp:TextBox ID="txtusuario" CssClass="form-control" runat="server" placeholder="Nombre del Usuario"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lbcontra" runat="server" Text="Contraseña"></asp:Label>
                        <asp:TextBox ID="txtcontra" TextMode="Password" CssClass="form-control" runat="server" placeholder="Digite su contraseña"></asp:TextBox>
                    </div>
                    <hr />
                    <div class="row">
                        <asp:Label ID="lbError" CssClass="alert-danger" runat="server" Text=""></asp:Label>
                    </div>
                    <br />
                    <div class="row">
                        <asp:Button ID="btnIngre" CssClass="btn btn-success" runat="server" Text="Ingresar" OnClick="BtnIngresar_Click" />
                    </div>
                </div>
            </form>
        </div>
    </div>
   
</body>
</html>

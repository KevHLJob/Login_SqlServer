<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Login_SqlServer.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="src/css/Log.css" rel="stylesheet" />

    <title>Bienvenido</title>
</head>
<body>
    <form id="form_index" class="form-control" runat="server">
        <div>
            <asp:Label ID="lbBienvenida" runat="server" Text="" CssClass="h3"></asp:Label>
        </div>
        <div>
            <asp:Button ID="btnClose" runat="server" Text="Cerrar sesión" CssClass="btn btn-danger" OnClick="BtnCerrar_Click" />
        </div>
    </form>
</body>
</html>

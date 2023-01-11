<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="D15Cnpm7.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LogIn</title>
    <link href="Views/Register/register.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="main">
           <formview class ="form" id="form-1">
            <h3 class="heading">Welcome back</h3>
            <p class="desc">Welcome to summoner's rift ❤️</p>

            <div class="spacer"></div>

            <div class="form-group">
              <asp:Label runat="server" for="email" class="form-label">Email</asp:Label>
              <asp:TextBox
                runat="server"
                id="email"
                name="email"
                type="text"
                placeholder="VD: email@domain.com"
                class="form-control"
              />
              <span class="form-message"></span>
            </div>

            <div class="form-group">
              <asp:Label runat="server" for="password" class="form-label">Mật khẩu</asp:Label>
              <asp:TextBox
                runat="server"
                id="password"
                name="password"
                type="password"
                placeholder="Nhập mật khẩu"
                class="form-control"
              />
              <span class="form-message"></span>
            </div>
            <asp:Button ID="Login" runat="server" Text="Đăng Nhập" CssClass ="form-submit isLogin" OnClick="HandleLogin"/>
            <asp:Button ID ="Regist" runat="server" Text="Đăng ký" CssClass ="form-submit" OnClick="HandleRegist"/>
           </formview>
        </div>
    </form>
    <script src="Views/Register/register.js"></script>
    <script src="Default.js"></script>
    <script>
        Validator({
            form: "#form-1",
            errorSelector: ".form-message",
            rules: [
                Validator.isRequired("#email"),
                Validator.isRequired("#email"),
                Validator.isEmail("#email"),
                Validator.minLength("#password", 6),
            ],
        });
    </script>
</body>
</html>

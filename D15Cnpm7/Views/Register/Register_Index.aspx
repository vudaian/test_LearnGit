<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register_Index.aspx.cs" Inherits="D15Cnpm7.Views.Register.index" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="register.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
           <formview class ="form" id="form-1">
            <h3 class="heading">Thành viên đăng ký</h3>
            <p class="desc">Welcome to summoner's rift ❤️</p>

            <div class="spacer"></div>

            <div class="form-group">
              <asp:Label runat="server" for="fullname" class="form-label">Tên đầy đủ</asp:Label>
              <asp:TextBox
                runat="server"
                id="fullname"
                name="fullname"
                type="text"
                placeholder="VD: T1 Govos"
                class="form-control"
              />
              <span class="form-message"></span>
            </div>

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

            <div class="form-group">
              <asp:Label runat="server" for="password_confirmation" class="form-label"
                >Nhập lại mật khẩu</asp:Label>
              <asp:TextBox
                runat="server"
                id="password_confirmation"
                name="password_confirmation"
                placeholder="Nhập lại mật khẩu"
                type="password"
                class="form-control"
              />
              <span class="form-message"></span>
            </div>
            <asp:Button runat="server" Text="Đăng ký" CssClass ="form-submit" OnClick="handleClick"/>
           </formview>
        </div>
    </form>
    <script src ="register.js"></script>
    <script>
        Validator({
            form: "#form-1",
            errorSelector: ".form-message",
            rules: [
                Validator.isRequired("#fullname"),
                Validator.isEmail("#email"),
                Validator.minLength("#password", 6),
                Validator.inConfirmed(
                    "#password_confirmation",
                    () => {
                        return document.querySelector("#password").value;
                    },
                    "Mật khẩu nhập lại không chính xác !!!"
                ),
            ],
            onSubmit: (data) => {
                console.log(data);
            },
        });
    </script>
</body>
</html>


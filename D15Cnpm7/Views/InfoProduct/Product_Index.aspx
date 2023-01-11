<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product_Index.aspx.cs" Inherits="D15Cnpm7.Views.InfoProduct.Product_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ProDuct</title>
    <link href="~/Views/StyleGlobal/StyleGlobal.css" rel="stylesheet" type="text/css" runat="server"/>
    <link href="Product.css" rel="stylesheet" type="text/css" runat="server"/>
    <script
    src="https://kit.fontawesome.com/b89e135a80.js"
    crossorigin="anonymous"
    ></script>
</head>
<body>
    <form id="form1" runat="server">
        <header id="header">
            <div class="header-container">
                <div class="navbar-wrapper">
                    <div class="navbar-wrapper_contact">
                        <div class="navbar-wrapper_contact-home">
                            <a href ="#">Trang chủ</a>
                        </div>
                        <div class="navbar-wrapper_contact-link">
                            <span>Kết nối</span>
                            <asp:ImageButton 
                                runat="server"
                                CssClass="contact-icon"
                                ImageUrl="~/asstes/Icon/facebook.png"
                                AlternateText="ImageButton 1"
                             />
                            <asp:ImageButton 
                                runat="server"
                                CssClass="contact-icon"
                                ImageUrl="~/asstes/Icon/instagram.png"
                                AlternateText="ImageButton 1"
                             />
                        </div>
                        <div class="navbar-wrapper_spacer"></div>
                        <div class="navbar-wrapper_notice">
                            <div class="navbar-wrapper_notice-first navbar-wrapper-noti">
                                <a href="#">Thông báo</a>
                                <img src="../../asstes/Icon/bell.png"/>
                                <div class="navbar-wrapper-noti_num">
                                    4
                                </div>
                            </div>
                            <div class="navbar-wrapper_notice-first">
                                <a href="#">Trợ giúp</a>
                                <img src="../../asstes/Icon/question.png"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="navbar-container">
                    <div class="navbar-container_logo">
                        <img src="../../asstes/Logo/logo.png"/>
                    </div>
                    
                        
                        <%--<div class="navbar-wrapper_notice-spacer"></div>
                        <asp:ImageButton runat="server" ImageUrl="~/asstes/Icon/search.png"/>--%>
                    </div>
                    <div class="navbar-container_user">
                        <%--<asp:Image runat="server" name = "UserImg" ID="FaceUser"/>
                        <div class="navbar-container_user-info">
                            <asp:Button CssClass="navbar-user_info-element" runat="server" Text="Trang cá nhân" ID="UserInfo" OnClick="UserInfo_Click"/>  
                            <asp:Button CssClass="navbar-user_info-element" runat="server" Text="Giỏ hàng" ID="UserCart" OnClick="UserCart_Click"/>
                            <asp:Button CssClass="navbar-user_info-element" runat="server" Text="Đăng xuất" ID="LogOut" OnClick="LogOut_Click"/>
                        </div>--%>
                    </div>
                </div>
            </div>
        </header>
        <div id="container">
            <div class="container">
                <div class="product_left">
                    <div class="product_img">
                        <asp:Image runat="server" ID="Prod_Face" CssClass="Prod_Face"/>
                    </div>
                </div>
                <div class="product_right">
                    <div class="product_name">
                        <asp:Label runat="server" ID="Prod_name"/>
                    </div>
                    <div class="product_price">
                        <asp:Label runat="server" ID="Prod_price"/>
                    </div>
                    <div class="product_des">
                        <span>Mô tả : </span>
                        <asp:Label runat="server" ID="Prod_des"/>
                    </div>
                    <div class="product_number">
                        <span class="Prev"><i class="fa-solid fa-minus"></i></span>
                        <asp:TextBox runat="server" ID="Prod_num" CssClass="FormNumber" type="number" value ="1"/>
                        <span class="Next"><i class="fa-solid fa-plus"></i></span>
                    </div>
                    <div class="add_cart">
                        <asp:Button runat="server" ID="add_Cart" Text="Thêm vào giỏ hàng" OnClick="Add_Cart_Click"/>
                    </div>
                </div>
            </div>
        </div>
        <footer id="footer">
            <div id="footer_top">
            <div class="footer_top-content">
                <div>
                    <asp:Image runat="server" ImageUrl="https://hiimloser.github.io/Big-Maket/assets/Images/support_img_1.png"/>
                </div>
                <div class="footer_top-content-name">
                    <h4>24/7</h4>
                    <span>Hỗ trợ miễn phí</span>
                </div>
            </div>
            <div class="footer_top-content">
                <div>
                    <asp:Image runat="server" ImageUrl="https://hiimloser.github.io/Big-Maket/assets/Images/support_img_2.png"/>
                </div>
                <div class="footer_top-content-name">
                    <h4>100% hoàn tiền</h4>
                    <span>Bảo hành</span>
                </div>
            </div>
            <div class="footer_top-content">
                <div>
                    <asp:Image runat="server" ImageUrl="https://hiimloser.github.io/Big-Maket/assets/Images/support_img_3.png"/>
                </div>
                <div class="footer_top-content-name">
                    <h4>Miễn phí shipping</h4>
                    <span>Trên 5 đơn hàng</span>
                </div>
            </div>
            
        </div>
            <div id="footer_bottom-top">
                <div>
                    <h4>Về chúng tôi</h4>
                    <ul>
                        <li><a href="#">Giới thiệu</a></li>
                        <li><a href="#">Giao hàng - Đổi trả</a></li>
                        <li><a href="#">Chính sách bảo mật</a></li>
                        <li><a href="#">Liên hệ</a></li>
                    </ul>
                </div>
                <div>
                    <h4>Trợ giúp</h4>
                    <ul>
                        <li><a href="#">Hướng dẫn mua hàng</a></li>
                        <li><a href="#">Hướng dẫn thanh toán</a></li>
                        <li><a href="#">Tài khoản giao dịch</a></li>
                    </ul>
                </div>
                <div>
                    <h4>Kết nối với chúng tôi</h4>
                    <ul class="footer-contact">
                        <li>
                            <div><a href=""><i class="fa-brands fa-facebook-f"></i></a></div>
                            <div><a href="">Facebook</a></div>
                        </li>
                        <li>
                            <div><a href=""><i class="fa-brands fa-google-plus-g"></i></a></div>
                            <div><a href="">Google plus</a></div>
                        </li>
                        <li>
                            <div><a href=""><i class="fa-brands fa-twitter"></i></a></div>
                            <div><a href="">Twitter</a></div>
                        </li>
                        <li>
                            <div><a href=""><i class="fa-brands fa-flickr"></i></a></div>
                            <div><a href="">Flickr</a></div>
                        </li>
                    </ul>
                </div>
                <div>
                    <h4>Hãy đến với chúng tôi</h4>
                </div>
            </div>

            <div id="footer_bottom-bottom">
                <div>
                    <span>
                        Coppyright © 2016 Big Maket. Powered by <a href="">RUNTIME.VN</a>
                    </span>
                </div>
                <div>
                    <img src="./assets/Images/payment-logo.png" alt="" srcset="">
                </div>
            </div>
        </footer>
        <script src="product.js"></script>
    </form>
</body>
</html>

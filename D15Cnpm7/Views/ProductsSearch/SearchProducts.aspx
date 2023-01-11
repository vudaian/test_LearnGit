<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchProducts.aspx.cs" Inherits="D15Cnpm7.Views.ProductsSearch.SearchProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SearchResult</title>
    <link runat="server" href="~/Views/StyleGlobal/StyleGlobal.css" type="text/css" rel="stylesheet"/>
    <link runat="server" href="~/Views/GioHang/GioHang.css" type="text/css" rel="stylesheet"/>
    
</head>
<body>
    <form id="form1" runat="server">
        <headr id="header">
            <div class="header-container">
                <div class="navbar-wrapper">
                    <div class="navbar-wrapper_contact">
                        <div class="navbar-wrapper_contact-home">
                            <a href ="/Views/Home/Home_Index.aspx">Trang chủ</a>
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
                    <div class="navbar-container_search">
                        <asp:TextBox
                            ID="searchText"
                            placeholder="Nhập thông tin sản phẩm" 
                            CssClass="navbar-input_search" 
                            runat="server"
                            BorderStyle="None"
                        />
                        <div class="search_result">
                            <asp:GridView
                                runat="server"
                                ID="gvSearchResult"
                                DataKeyNames="idSP"
                                AutoGenerateColumns="false"
                                Width="100%"
                                CellPadding="4"
                                EnableViewState="false"
                                ForeColor="#eaeaea"
                                GridLines="Both"
                            >
                               <Columns>
                                    <asp:TemplateField
                                        HeaderText="Tên sản phẩm"
                                        HeaderStyle-HorizontalAlign="Center"
                                    >
                                        <ItemTemplate>
                                            <a href="/Views/InfoProduct/Product_Index.aspx?id=<%#Eval("idSP") %>">
                                                 <%#Eval("tensanpham") %>
                                            </a>
                                           
                                        </ItemTemplate>
                                        <ItemStyle  HorizontalAlign="Center"/>
                                    </asp:TemplateField>
                               </Columns>
                            </asp:GridView>              
                        </div>
                        <div class="navbar-wrapper_notice-spacer"></div>
                        <asp:ImageButton runat="server" ImageUrl="~/asstes/Icon/search.png" CssClass="submitSearch"/>
                    </div>
                    <div class="navbar-container_user">
                        
                    </div>
                </div>
            </div>
        </headr>
        <style>
            .title{
                max-width: 1280px;
                margin: 10px auto;
                background-color: white;
                padding: 10px;
            }
            #lbResult{
                font-size:15px;
                margin:5px;
            }
        </style>
        <div id="container">
            <div class="title">
                <span>Kêt quả tìm kiếm cho : "</span>
                <asp:Label runat="server" ID="lbResult"/>
                <span>"</span>
            </div>
            <div class="container">
                <div class="content">
                    <asp:GridView 
                    runat="server" 
                    ID="gvListProducts"
                    DataKeyNames="idSP"
                    AutoGenerateColumns="false"
                    Width="100%"
                    CellPadding="4"
                    EnableViewState="false"
                    ForeColor="#eaeaea"
                    GridLines="Both"
                    >
                        <Columns>
                            <asp:TemplateField
                                HeaderText="Tên sản phẩm"
                                HeaderStyle-HorizontalAlign="Center"
                            >
                                <ItemTemplate>
                                    <a href="/Views/InfoProduct/Product_Index.aspx?id=<%#Eval("idSP") %>">
                                        <%#Eval("tensanpham") %>
                                    </a>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField
                                HeaderText="Hình Ảnh"
                                HeaderStyle-HorizontalAlign="Center"
                            >
                                <ItemTemplate>
                                    <asp:Image CssClass="img-product" runat="server" ImageUrl='<%#Eval("imgUrl") %>'/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField
                                HeaderText="Giá"
                                HeaderStyle-HorizontalAlign="Center"
                            >
                                <ItemTemplate>
                                    <span><%#Eval("gia") %></span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField
                                HeaderText="Số lượng"
                                HeaderStyle-HorizontalAlign="Center"
                            >
                                <ItemTemplate>
                                    <span><%#Eval("mota") %></span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <a href="/Views/InfoProduct/Product_Index.aspx?id=<%#Eval("idSP") %>">Mua</a>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
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
        <script src="../../Scripts/jquery-3.4.1.min.js" type="text/javascript"></script>
        <script type="module" src="../StyleGlobal/SearchResult.js"></script>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListPro_Index.aspx.cs" Inherits="D15Cnpm7.Views.ListProduct.ListPro_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>List Product</title>
    <link href="~/Views/StyleGlobal/StyleGlobal.css" rel="stylesheet" type="text/css" runat="server"/>
    <link href="ListProduct.css" rel="stylesheet" type="text/css" runat="server"/>
    <script
    src="https://kit.fontawesome.com/b89e135a80.js"
    crossorigin="anonymous"
    ></script>
</head>
<body>
    <form id="form1" runat="server">
        <headr id="header">
            <div class="header-container">
                <div class="navbar-wrapper">
                    <div class="navbar-wrapper_contact">
                        <div class="navbar-wrapper_contact-home">
                            <a href ="/Views/Home/Home_Index">Trang chủ</a>
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
                            placeholder="Nhập thông tin sản phẩm" 
                            CssClass="navbar-input_search" 
                            runat="server"
                            BorderStyle="None"
                        />
                        <div class="navbar-wrapper_notice-spacer"></div>
                        <asp:ImageButton runat="server" ImageUrl="~/asstes/Icon/search.png" CssClass="submitSearch"/>
                    </div>
                </div>
            </div>
        </headr>
        <div id="container">
            <div class="container">
                <div class="option">
                    <div class="hide-option">
                        <span>&times;</span>
                    </div>
                    <div class="option-form">
                        <span>ID sản phẩm</span>
                        <asp:TextBox ID="tbID" runat="server" disabled/>
                    </div>
                     <div class="option-form">
                        <span>Tên sản phẩm</span>
                        <asp:TextBox ID="tbName" runat="server"/>
                    </div>
                     <div class="option-form">
                        <span>Link Img</span>
                        <asp:TextBox ID="tbImg" runat="server"/>
                    </div>
                     <div class="option-form">
                        <span>Giá</span>
                        <asp:TextBox ID="tbPrice" runat="server"  type="number" />
                    </div>
                    <div class="option-form">
                        <span>Kiểu thời trang</span>
                        <asp:DropDownList ID="ddlThoiTrang" runat="server"></asp:DropDownList>
                    </div>
                    <div class="option-form">
                        <span>Loại thời trang</span>
                        <asp:DropDownList ID="ddlLoai" runat="server"></asp:DropDownList>
                    </div>
                    <div class="option-form">
                        <span>Mô tả</span>
                        <asp:TextBox ID="tbMoTa" mode="multiline" runat="server"/>
                    </div>
                    <div class="option-submit">
                        <asp:Button ID="btnAddPro" runat="server" Text="Thêm sản phẩm" OnClick="BtnAddPro_Click"/>
                        <asp:Button ID="btnUpdatePro" runat="server" Text="Sửa sản phẩm" OnClick="BtnUpdatePro_Click"/>
                        <asp:Button ID="BtnReset" runat="server" Text="Reset" OnClick="BtnReset_Click"/>
                    </div>
                </div>
                <div class="searchContainer">
                    <h2>Danh sách sản phẩm</h2>
                    <div class="searchBar">
                        <input type="submit" class="add_Cart" value="Chức năng"/>
                    </div>
                </div>
                <div class="content">
                    <asp:GridView 
                        runat="server"
                        ID="gvListProduct"
                        AutoGenerateColumns="false"
                        Width="100%"
                        CellPadding="4"
                        EnableViewState="false"
                        ForeColor="#333"
                        GridLines="Both"
                        CssClass="List-product"
                        DataKeyNames="idSP" 
                        OnRowDeleting="gvListProduct_RowDeleting" OnRowUpdating="gvListProduct_RowUpdating"
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
                             <asp:TemplateField
                                HeaderText="Hình ảnh"
                                HeaderStyle-HorizontalAlign="Center"
                            >
                                <ItemTemplate>
                                    <asp:Image CssClass="img-product" runat="server" ImageUrl='<%#Eval("imgUrl") %>'/>
                                </ItemTemplate>
                                <ItemStyle  HorizontalAlign="Center"/>
                            </asp:TemplateField>
                            <asp:TemplateField
                                HeaderText="Giá"
                                HeaderStyle-HorizontalAlign="Center"
                            >
                                <ItemTemplate>
                                    <%#Eval("gia") %>
                                </ItemTemplate>
                                <ItemStyle  HorizontalAlign="Center"/>
                            </asp:TemplateField>
                            <asp:TemplateField
                                HeaderText="Mô tả"
                                HeaderStyle-HorizontalAlign="Center"
                            >
                                <ItemTemplate>
                                    <%#Eval("mota") %>
                                </ItemTemplate>
                                <ItemStyle  HorizontalAlign="Center"/>
                            </asp:TemplateField>
                            <asp:TemplateField
                                HeaderText=""
                                HeaderStyle-HorizontalAlign="Center"
                            >
                                <ItemTemplate>
                                    <asp:Button 
                                        ID="ADDCART" 
                                        runat="server" 
                                        Text="Xóa" 
                                        CommandName="Delete"
                                        CausesValidation="false"
                                        OnClientClick="return confirm('Bạn có chắc muốn xóa không')"
                                     />
                                    <asp:Button 
                                        ID="UpdatePro" 
                                        runat="server" 
                                        Text="Thay đổi" 
                                        CommandName="Update"
                                        CausesValidation="false"
                                        OnClientClick="return confirm('Bạn có chắc muốn thay đổi không')"
                                     />
                                </ItemTemplate>
                                <ItemStyle  HorizontalAlign="Center"/>
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
        <script src="ListProduct.js"></script>
        <script type="module" src="../StyleGlobal/SearchResult.js"></script>
    </form>
</body>
</html>

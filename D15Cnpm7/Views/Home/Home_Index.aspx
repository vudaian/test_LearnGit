<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home_Index.aspx.cs" Inherits="D15Cnpm7.Views.Home.Home_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HomePage</title>
    <link href="Home.css" rel="stylesheet" type="text/css" runat="server"/>
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
                            ID="searchText"
                            placeholder="Nhập thông tin sản phẩm" 
                            CssClass="navbar-input_search" 
                            runat="server"
                            BorderStyle="None"
                            OnTextChanged="searchText_TextChanged"
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
                        <asp:Image runat="server" name = "UserImg" ID="FaceUser"/>
                        <div class="navbar-container_user-info">
                            <asp:Button CssClass="navbar-user_info-element" runat="server" Text="Trang cá nhân" ID="UserInfo" OnClick="UserInfo_Click"/>  
                            <asp:Button CssClass="navbar-user_info-element" runat="server" Text="Giỏ hàng" ID="UserCart" OnClick="UserCart_Click"/>
                            <asp:Button CssClass="navbar-user_info-element" runat="server" Text="Đăng xuất" ID="LogOut" OnClick="LogOut_Click"/>
                        </div>
                    </div>
                </div>
            </div>
        </headr>
        <div id="container">
            <div class="container-intro">
                <div class="container-intro_left">
                    <div class ="left-title">
                        <i class="fa-solid fa-list"></i>
                        <h3>Danh mục</h3>
                    </div>
                    <div class="left-option" runat="server">
                        <i class="fa-solid fa-globe"></i>
                        <asp:Button runat="server" ID="ProductAll" Text="Tổng hợp" OnClick="ProductAll_Click"/>
                        <i class="fa-solid fa-chevron-right"></i>
                    </div>
                    <div class="left-option" runat="server">
                        <i class="fa-solid fa-person-dress"></i>
                        <asp:Button runat="server" ID="btnFashion" Text="Thời trang" OnClick="btnFashion_Click"/>
                        <i class="fa-solid fa-chevron-right"></i>
                    </div>
                    <div class="left-option" runat="server" >
                        <i class="fa-solid fa-heart"></i>
                        <asp:Button runat="server" ID="btnGirlFashion" Text="Nữ trang"/>
                        <i class="fa-solid fa-chevron-right"></i>
                    </div>
                    <div class="left-option" runat="server" >
                        <i class="fa-regular fa-heart"></i>
                        <asp:Button runat="server" ID="btnCostemic" Text="Mỹ phẩm"/>
                        <i class="fa-solid fa-chevron-right"></i>
                    </div>
                    <div class="left-option" runat="server" >
                        <i class="fa-solid fa-gift"></i>
                        <asp:Button runat="server" ID="btnGiftProduct" Text="Quà tặng"/>
                        <i class="fa-solid fa-chevron-right"></i>
                    </div>
                </div>
                <div class="container-intro_mid"></div>
                <div class="container-intro_right"></div>
            </div>
            <div class ="container-banner"></div>
            <div class="container-content">
                <div class="fashion-wrapper isFashion">
                    <div class="fashion-sidebar">
                        <div class="fashion-title">
                            <i class="fa-solid fa-person"></i>
                            <h3>Thời trang</h3>
                        </div>
                        <div class="fashion-tab-groups">
                            <asp:Panel runat="server" CssClass="fashion-tab" onClick ="">
                                <i class="fa-solid fa-shirt"></i>
                                <span>Áo</span>
                            </asp:Panel>
                            <asp:Panel runat="server" CssClass="fashion-tab" onClick ="">
                                <i class="fa-solid fa-shirt"></i> 
                                <span>Quần</span>
                            </asp:Panel>
                            <asp:Panel runat="server" CssClass="fashion-tab" onClick ="">
                                <i class="fa-brands fa-redhat"></i>
                                <span>Mũ</span>
                            </asp:Panel>
                            <asp:Panel runat="server" CssClass="fashion-tab" onClick ="">
                                <i class="fa-solid fa-bag-shopping"></i>
                                <span>Túi</span>
                            </asp:Panel>
                            </div>
                    </div>
                    <div class="fashion-groupPanel">
                        <asp:Panel runat="server" CssClass ="fashion-panel">
                            <asp:GridView 
                                runat="server"
                                ID="gvProduct_Ao"
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
                                        HeaderText="Mua"
                                        HeaderStyle-HorizontalAlign="Center"
                                    >
                                        <ItemTemplate>
                                            <a href="/Views/InfoProduct/Product_Index.aspx?id=<%#Eval("idSP") %>" class="add_Cart">
                                                 Mua
                                            </a>
                                        </ItemTemplate>
                                        <ItemStyle  HorizontalAlign="Center"/>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                        <asp:Panel runat="server" CssClass ="fashion-panel">
                            <asp:GridView 
                                runat="server"
                                ID="gvProduct_Quan"
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
                                        HeaderText="Mua"
                                        HeaderStyle-HorizontalAlign="Center"
                                    >
                                        <ItemTemplate>
                                            <a href="/Views/InfoProduct/Product_Index.aspx?id=<%#Eval("idSP") %>" class="add_Cart">
                                                 Mua
                                            </a>
                                        </ItemTemplate>
                                        <ItemStyle  HorizontalAlign="Center"/>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                        <asp:Panel runat="server" CssClass ="fashion-panel">
                            <asp:GridView 
                                runat="server"
                                ID="gvProductMu"
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
                                        HeaderText="Mua"
                                        HeaderStyle-HorizontalAlign="Center"
                                    >
                                        <ItemTemplate>
                                            <a href="/Views/InfoProduct/Product_Index.aspx?id=<%#Eval("idSP") %>" class="add_Cart">
                                                 Mua
                                            </a>
                                        </ItemTemplate>
                                        <ItemStyle  HorizontalAlign="Center"/>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                        <asp:Panel runat="server" CssClass ="fashion-panel">
                            <asp:GridView 
                                runat="server"
                                ID="gvProductTui"
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
                                        HeaderText="Mua"
                                        HeaderStyle-HorizontalAlign="Center"
                                    >
                                        <ItemTemplate>
                                            <a href="/Views/InfoProduct/Product_Index.aspx?id=<%#Eval("idSP") %>" class="add_Cart">
                                                 Mua
                                            </a>
                                        </ItemTemplate>
                                        <ItemStyle  HorizontalAlign="Center"/>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                    </div>
                </div>
                <div class="fashion-wrapper isCosmetic">
                    <div class="cosmetic-sidebar">
                        <div class="cosmetic-title">
                            <i class="fa-solid fa-person"></i>
                            <h3>Mỹ phẩm</h3>
                        </div>
                        <div class="cosmetic-tab-groups">
                            <asp:Panel runat="server" CssClass="cosmetic-tab" onClick ="">
                                <i class="fa-solid fa-hand-dots"></i>
                                <span>Kem Dưỡng Da</span>
                            </asp:Panel>
                            <asp:Panel runat="server" CssClass="cosmetic-tab" onClick ="">
                                <i class="fa-regular fa-face-smile-beam"></i>
                                <span>Son môi</span>
                            </asp:Panel>
                            <asp:Panel runat="server" CssClass="cosmetic-tab" onClick ="">
                                <i class="fa-solid fa-droplet"></i>
                                <span>Kem dưỡng ẩm</span>
                            </asp:Panel>
                            <asp:Panel runat="server" CssClass="cosmetic-tab" onClick ="">
                                <i class="fa-solid fa-spray-can-sparkles"></i>
                                <span>Dưỡng tóc</span>
                            </asp:Panel>
                            </div>
                    </div>
                    <div class="cosmetic-groupPanel">
                        <asp:Panel runat="server" CssClass ="cosmetic-panel">
                            <asp:GridView 
                                runat="server"
                                ID="gvProductKDD"
                                AutoGenerateColumns="false"
                                Width="100%"
                                CellPadding="4"
                                EnableViewState="false"
                                ForeColor="#333"
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
                                        HeaderText="Mua"
                                        HeaderStyle-HorizontalAlign="Center"
                                    >
                                        <ItemTemplate>
                                            <a href="/Views/InfoProduct/Product_Index.aspx?id=<%#Eval("idSP") %>" class="add_Cart">
                                                 Mua
                                            </a>
                                        </ItemTemplate>
                                        <ItemStyle  HorizontalAlign="Center"/>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                        <asp:Panel runat="server" CssClass ="cosmetic-panel">
                            <asp:GridView 
                                runat="server"
                                ID="gvProductSon"
                                AutoGenerateColumns="false"
                                Width="100%"
                                CellPadding="4"
                                EnableViewState="false"
                                ForeColor="#333"
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
                                        HeaderText="Mua"
                                        HeaderStyle-HorizontalAlign="Center"
                                    >
                                        <ItemTemplate>
                                            <a href="/Views/InfoProduct/Product_Index.aspx?id=<%#Eval("idSP") %>" class="add_Cart">
                                                 Mua
                                            </a>
                                        </ItemTemplate>
                                        <ItemStyle  HorizontalAlign="Center"/>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                        <asp:Panel runat="server" CssClass ="cosmetic-panel">
                            <asp:GridView 
                                runat="server"
                                ID="gvProductKDA"
                                AutoGenerateColumns="false"
                                Width="100%"
                                CellPadding="4"
                                EnableViewState="false"
                                ForeColor="#333"
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
                                        HeaderText="Mua"
                                        HeaderStyle-HorizontalAlign="Center"
                                    >
                                        <ItemTemplate>
                                            <a href="/Views/InfoProduct/Product_Index.aspx?id=<%#Eval("idSP") %>" class="add_Cart">
                                                 Mua
                                            </a>
                                        </ItemTemplate>
                                        <ItemStyle  HorizontalAlign="Center"/>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                        <asp:Panel runat="server" CssClass ="cosmetic-panel">
                            <asp:GridView 
                                runat="server"
                                ID="gvProductDT"
                                AutoGenerateColumns="false"
                                Width="100%"
                                CellPadding="4"
                                EnableViewState="false"
                                ForeColor="#333"
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
                                        HeaderText="Mua"
                                        HeaderStyle-HorizontalAlign="Center"
                                    >
                                        <ItemTemplate>
                                            <a href="/Views/InfoProduct/Product_Index.aspx?id=<%#Eval("idSP") %>" class="add_Cart">
                                                 Mua
                                            </a>
                                        </ItemTemplate>
                                        <ItemStyle  HorizontalAlign="Center"/>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
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
        <div class="GoToCart">
            <i class="fa-solid fa-cart-shopping"></i>
        </div>
    </form>
    <script type="module" src="Home.js"></script>
    <script type="module" src="../StyleGlobal/SearchResult.js"></script>
    <script src="../../Scripts/jquery-3.4.1.min.js" type="text/javascript"></script>
    <%--<script type="text/javascript">
        $(document).ready(function () {

        });
    </script>--%>
</body>
</html>

create database web_d15cnpm7
use web_d15cnpm7
--drop table
drop table account
drop table products
drop table MucDo
drop table Loai
drop table order_ct
create table account
(
	idAcc  int IDENTITY(1,1) primary key,
	tendaydu nvarchar(100),
	email char(100),
	matkhau char(100),
	linkImg char(100)
)
create table MucDo
(
	idMucDo int primary key,
	tenMucDo nvarchar(100)
)
create table Loai
(
	idLoai int primary key,
	tenLoai nvarchar(100),
)
create table products
(
	idSP int primary key,
	idMucDo int FOREIGN KEY  REFERENCES  MucDo(idMucDo),
	idLoai int FOREIGN KEY  REFERENCES Loai(idLoai),
	tensanpham nvarchar(100),
	imgUrl nvarchar(255),
	gia int,
	soluong int,
	mota nvarchar(255),
)
create table order_ct
(
	idOrCT int IDENTITY(1,1) primary key,
	idAcc int FOREIGN KEY  REFERENCES account(idAcc),
	idSP int FOREIGN KEY  REFERENCES products(idSP),
	tensp nvarchar(255),
	imgUrl  nvarchar(255),
	soluong int,
	gia int,
	thanhtien int,
)
-- account
insert into account values('Phan Trung Kiên','animetplink@gmail.com','matkhau01','../../asstes/Icon/user.png')
-- MucDo
insert into MucDo values(1,N'Quần')
insert into MucDo values(2,N'Áo')
insert into MucDo values(3,N'Mũ')
insert into MucDo values(4,N'Túi')
insert into MucDo values(5,N'Kem dưỡng da')
insert into MucDo values(6,N'Son môi')
insert into MucDo values(7,N'Kem dưỡng ẩm')
insert into MucDo values(8,N'Dưỡng tóc')
-- Loai
insert into Loai values(1,N'thời trang')
insert into Loai values(2,N'Nữ trang')
insert into Loai values(3,N'Mỹ phẩm')
insert into Loai values(4,N'Quà tặng')
-- Product
insert into products values(1,1,1,N'Áo sơ mi nữ','https://hiimloser.github.io/Big-Maket/assets/Images/products/ao-somi-2_master.jpg',280000,0,'qua tuyet voi')
insert into products values(2,1,1,N'Áo thun nữ belike','https://hiimloser.github.io/Big-Maket/assets/Images/products/ao-belike1_master.jpg',95200,0,'qua tuyet voi')
insert into products values(3,1,1,N'Áo dài cách tân','https://hiimloser.github.io/Big-Maket/assets/Images/products/2_44_90_master.jpg',169000,0,'qua tuyet voi')
insert into products values(4,1,1,N'Áo thun','https://dosi-in.com/images/detailed/42/CDL10_1.jpg',200000,0,'qua tuyet voi')
insert into products values(5,1,1,N'Áo thun TEELA','https://cf.shopee.vn/file/14f46de3a546e2d1b05f31b947a8e6b1',179000,0,'qua tuyet voi')
insert into products values(6,1,1,N'Áo thun trắng','https://bizweb.dktcdn.net/100/287/440/files/ao-thun-den-streetwear-nen-mua.png?v=1602830750385',169000,0,'qua tuyet voi')
insert into products values(7,1,1,N'Áo khoác hoodie','https://thoitrangdongphuc.com.vn/image/catalog/hoodie.jpg',169000,0,'qua tuyet voi')
insert into products values(8,1,1,N'Áo khoác hoodie khủng long','https://cf.shopee.vn/file/e9a1464780d98ef4ef9b9c32ce8e02b8_tn',169000,0,'qua tuyet voi')
insert into products values(9,1,1,N'Áo thun nữ','https://sakurafashion.vn/upload/sanpham/large/7573-ao-thun-nu-theu-hinh-mat-meo-o-tay-ao-1.jpg',169000,0,'qua tuyet voi')
insert into products values(10,1,1,N'Áo nữ họa tiết con bò','https://sakurafashion.vn/upload/sanpham/large/36428-ao-nu-hoa-tiet-con-bo-1.jpg',169000,0,'qua tuyet voi')
insert into products values(11,2,1,N'Quần Nam Đẹp','https://hidanz.com/wp-content/uploads/2021/01/quan-jogger-nam-vai-kaki.jpg',169000,0,'qua tuyet voi')
insert into products values(12,2,1,N'Quần jooger nam cá tính','https://247store.vn/uploads/products/20201117/z218220589153910d0c7e93ab1388553077197333f267a.jpg',169000,0,'qua tuyet voi')
insert into products values(13,2,1,N'Quần jooger kaki','https://salt.tikicdn.com/ts/tmp/7b/74/3d/8635e922018e43177af65f49644d1057.JPG',169000,0,'qua tuyet voi')
insert into products values(14,2,1,N'Quần Quý Ông','https://hidanz.com/wp-content/uploads/2020/09/cac-mau-quan-nam-quy-ong-nao-cung-phai-so-huu.jpg',169000,0,'qua tuyet voi')
insert into products values(15,2,1,N'Quần bò nam','https://bucket.nhanh.vn/store/9176/ps/20210608/08062021110630_wdsf.jpg',169000,0,'qua tuyet voi')
insert into products values(16,2,1,N'Quần Nữ baggy','https://thieuhoa.com.vn/wp-content/uploads/2021/10/quan-tay-cho-nguoi-map-5.png',169000,0,'qua tuyet voi')
insert into products values(17,2,1,N'Quần Nữ thun','https://cf.shopee.vn/file/ecd6247c7d7fb35921df984f5a93d42e',169000,0,'qua tuyet voi')
insert into products values(18,2,1,N'Quần bò Nữ','https://cf.shopee.vn/file/5990e680119e2cb0933685d6f54e6d69',169000,0,'qua tuyet voi')
insert into products values(19,2,1,N'Quần short nam','https://cf.shopee.vn/file/487ade9f502b30936ee2a111cf7d685f',169000,0,'qua tuyet voi')
insert into products values(20,2,1,N'Quần short nỉ lật','https://product.hstatic.net/1000360022/product/dsc01787_33b2b2da6df3461e9606019fb3565e05_master.jpg',169000,0,'qua tuyet voi')
insert into products values(21,2,1,N'Quần short uniex','https://cf.shopee.vn/file/ec76ae22ff328c4f4d006b61ca9d05aa',169000,0,'qua tuyet voi')
insert into products values(22,2,1,N'Quần short nữ thể thao','https://salt.tikicdn.com/cache/w1200/ts/product/ac/5f/40/654b50e702f5d85717ec998f5199aeae.jpg',169000,0,'qua tuyet voi')
insert into products values(24,3,1,N'Mũ rơm luffy','https://salt.tikicdn.com/cache/w1200/ts/product/9f/10/07/f43da3b7f9c97eab7b36ea711ddb6429.jpg',169000,0,'qua tuyet voi')
insert into products values(25,3,1,N'Mũ cappie','https://i.ytimg.com/vi/xCIAEAU8344/maxresdefault.jpg',169000,0,'qua tuyet voi')
insert into products values(26,3,1,N'Mũ MLB unisex','https://admin.vuahanghieu.com/upload/product/2020/06/mu-mlb-unisex-los-angeles-dodgers-la-cp77-mau-xanh-navy-5efab3bbc80e8-30062020103835.jpg',169000,0,'qua tuyet voi')
insert into products values(27,3,1,N'Mũ rộng vành leo núi','https://contents.mediadecathlon.com/p1574186/708e90f794ae40837cd608e0c8fa311a/p1574186.jpg?f=650x650&format=auto',169000,0,'qua tuyet voi')
insert into products values(28,3,1,N'Mũ MLB man','https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2019/08/mu-mlb-men-s-new-york-yankees-adjustable-hat-black-5d649b6d51917-27082019095437.jpg',169000,0,'qua tuyet voi')
insert into products values(29,3,1,N'Mũ vành mùa hè','https://image.thanhnien.vn/w1024/Uploaded/2022/kpcvovbs/2021_03_17/fb_img_1615794629199_dljn.jpg',169000,0,'qua tuyet voi')
insert into products values(30,3,1,N'Mũ lá','https://bizweb.dktcdn.net/100/150/438/products/mu-la.png?v=1558436140760',169000,0,'qua tuyet voi')
insert into products values(31,3,1,N'Mũ trekking','https://contents.mediadecathlon.com/p1574186/708e90f794ae40837cd608e0c8fa311a/p1574186.jpg?f=650x650&format=auto',169000,0,'qua tuyet voi')
insert into products values(32,3,1,N'Mũ bennie','https://inhat.vn/wp-content/uploads/2021/03/shop-ban-mu-dep-5.png',169000,0,'qua tuyet voi')
insert into products values(44,3,1,N'Mũ vành cụp nơ','https://i2.wp.com/noli.vn/wp-content/uploads/2019/06/Hoc-cach-moc-mu-vanh-cup-no-lien-cua-tac-gia-nha-nha.jpg?fit=800%2C696&ssl=1',169000,0,'qua tuyet voi')
insert into products values(45,4,1,N'Túi croppion','http://product.hstatic.net/1000347349/product/tui-xach-scorpion-926.149-2_884e9093502e4ca1ac416496ab2d01c2_grande.jpg',169000,0,'qua tuyet voi')
insert into products values(33,4,1,N'Túi đeo vai oval','https://cdn.sablanca.vn/ImageProducts/hb0147/blk/hb0147_blk_1000x1000_4448253845.jpg',169000,0,'qua tuyet voi')
insert into products values(34,4,1,N'Túi xách nữ đẹp','https://www.vascara.com/uploads/cms_productmedia/2022/November/1/443515797-1-copy-2__66570__1667277953-medium@2x.jpg',169000,0,'qua tuyet voi')
insert into products values(35,4,1,N'Túi trung top handle','https://product.hstatic.net/1000003969/product/hong_txt223_3_035a62d9fd2b43bb88126b2bcac31b57_master.jpg',169000,0,'qua tuyet voi')
insert into products values(36,4,1,N'Túi xách vianh','https://product.hstatic.net/1000103112/product/1171954-07a_02_67d81eede857478aa89241bfaed6e630_grande.jpg',169000,0,'qua tuyet voi')
insert into products values(37,4,1,N'Túi đeo chéo alex','https://cdn.shopify.com/s/files/1/1236/1344/files/hook-01_copy_2048x2048.png?v=1642129852',169000,0,'qua tuyet voi')
insert into products values(38,4,1,N'Túi nắp gập','https://cdn.sablanca.vn/ImageProducts/sa0051/wht/sa0051_wht_1000x1000_1739836908.jpg',169000,0,'qua tuyet voi')
insert into products values(39,4,1,N'Túi vascara','https://www.vascara.com/uploads/cms_productmedia/2022/June/13/tot-0084-blk__64276__1655107097-medium@2x.jpg',169000,0,'qua tuyet voi')
insert into products values(40,4,1,N'Túi vải vascara trơn','https://xuongintuivai.com/wp-content/uploads/2020/02/t%C3%BAi-v%E1%BA%A3i-canvas-tr%C6%A1n-7.jpg',169000,0,'qua tuyet voi')
insert into products values(41,4,1,N'Túi xách nữ công sở','https://cdn.sablanca.vn/ImageProducts/bp0066/gry/bp0066_gry_1000x1000_0926540995.jpg',169000,0,'qua tuyet voi')
insert into products values(42,4,1,N'Túi xách dio','https://buocthoitrang.com/wp-content/uploads/2021/03/T%C3%BAi-x%C3%A1ch-Dior-Book-Tote-1.jpg',169000,0,'qua tuyet voi')
insert into products values(43,4,1,N'Túi toe','https://inchi.vn/data/thumbnails/bo-sua---1.jpg',169000,0,'qua tuyet voi')
insert into products values(46,5,3,N'Kem dưỡng Vitamin E','https://images.depxinh.net/products/item.11_2017/7/detail/kem-duong-toan-than-vitamin-e-200ml-1-dep-xinh.jpg',169000,0,'qua tuyet voi')
insert into products values(47,5,3,N'Kem Perfect White','https://drvitamin.vn/wp-content/uploads/2021/10/kem-duong-da-mat-cua-nhat-2.jpg',169000,0,'qua tuyet voi')
insert into products values(48,5,3,N'Intensive Moisture Cream ','https://drvitamin.vn/wp-content/uploads/2021/10/kem-duong-da-mat-cua-nhat-3.jpg',169000,0,'qua tuyet voi')
insert into products values(49,5,3,N'Kem Artistry Skin ','https://media.amway.com.vn/sys-master/images/h52/hac/9191163232286/art_123798_1_amway-WF_Product_588Wx588H',169000,0,'qua tuyet voi')
insert into products values(50,5,3,N'Kem Laroche Posay','https://image.thanhnien.vn/w1024/Uploaded/2022/urwqwc-zl/2022_02_21/mh-3-5359.jpg',169000,0,'qua tuyet voi')
insert into products values(51,6,3,N'Son STYLENANDA','https://media.hasaki.vn/catalog/product/g/o/google-shopping-son-thoi-li-3ce-227-benchmark-mau-cam-do-chay-3-5g-1644639565_img_380x380_64adc6_fit_center.jpg',169000,0,'qua tuyet voi')
insert into products values(52,6,3,N'Son Living Nature','https://livingnature.com.vn/wp-content/uploads/2019/09/son-moi-living-nature-electric-coral-15-limited-edition-lipstick-9.jpg',169000,0,'qua tuyet voi')
insert into products values(53,6,3,N'Son Ngọc Anh','https://nhathuocngocanh.com/wp-content/uploads/2020/11/son_moi-1.jpg',169000,0,'qua tuyet voi')
insert into products values(54,6,3,N'Son YSL Beauty','https://product.hstatic.net/200000230255/product/image_104_jeu_d_attraction_1_son_thoi_7bef808de0194f58a8cbe473ea1f3400_grande.jpg',169000,0,'qua tuyet voi')
insert into products values(55,6,3,N'Son môi Hàn Quốc','https://dailybaoquyen.com/upload/images/son-moi-han-quoc-colorlab-chili-dancer.png',169000,0,'qua tuyet voi')
insert into products values(56,7,3,N'Gel Dưỡng Megaduo ','https://media.hasaki.vn/catalog/product/g/o/google-shopping-gel-duong-megaduo-gel-giam-mun-mo-tham-15g-1660619496_img_358x358_843626_fit_center.jpg',169000,0,'qua tuyet voi')
insert into products values(57,7,3,N'Kem Dưỡng Ẩm Klairs ','https://media.hasaki.vn/catalog/product/g/o/google-shopping-kem-duong-am-klairs-lam-diu-phuc-hoi-da-ban-dem-60ml_img_358x358_843626_fit_center.jpg',169000,0,'qua tuyet voi')
insert into products values(58,7,3,N'Kem Dưỡng Obagi Retinol ','https://media.hasaki.vn/catalog/product/t/o/top_fb_ads_422207968_050722-1656991298_img_358x358_843626_fit_center.jpg',169000,0,'qua tuyet voi')
insert into products values(59,7,3,N'Kem Dưỡng Ẩm Neutrogena ','https://media.hasaki.vn/catalog/product/g/o/google-shopping-kem-duong-am-neutrogena-cung-cap-nuoc-cho-da-50g-1665541347_img_358x358_843626_fit_center.jpg',169000,0,'qua tuyet voi')
insert into products values(60,7,3,N'Kem Dưỡng Skin1004','https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-kem-duong-skin1004-lam-diu-da-chiet-xuat-rau-ma-75ml-1646013905_img_358x358_843626_fit_center.jpg',169000,0,'qua tuyet voi')
insert into products values(61,8,3,N'Dưỡng Tóc Cocoon','https://media.hasaki.vn/catalog/product/p/r/promotions-auto-combo-2-chai-nuoc-duong-toc-cocoon-tinh-dau-buoi-140ml_wybhiJdvWi7jDPHy_img_358x358_843626_fit_center.png',169000,0,'qua tuyet voi')
insert into products values(62,8,3,N'Dầu Dưỡng Tóc LOreal','https://media.hasaki.vn/catalog/product/g/o/google-shopping-dau-duong-toc-l-oreal-tinh-dau-hoa-tu-nhien-100ml-1654683304_img_358x358_843626_fit_center.jpg',169000,0,'qua tuyet voi')
insert into products values(63,8,3,N'Nước Dưỡng Tóc Double Rich','https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-nuoc-duong-toc-double-rich-cham-soc-kho-xo-hu-ton-250ml-1660621664_img_358x358_843626_fit_center.jpg',169000,0,'qua tuyet voi')
insert into products values(64,8,3,N'Dầu Dưỡng Tóc Tsubaki','https://media.hasaki.vn/catalog/product/d/a/dau-duong-toc-tsubaki-ho-tro-phuc-hoi-hu-ton-50ml-1_img_358x358_843626_fit_center.jpg',169000,0,'qua tuyet voi')
insert into products values(65,8,3,N'Xịt Dưỡng Tóc Dr.ForHair','https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-xit-duong-toc-dr-forhair-ho-tro-moc-toc-120ml-1657531186_img_358x358_843626_fit_center.jpg',169000,0,'qua tuyet voi')

insert into order_ct values (1,1,N'Áo sơ mi nữ',280000,3,0)

-- Command
select * from account
select * from order_ct
delete from order_ct where idAcc = 1
select thanhtien from order_ct where idAcc =1
select * from MucDo
select top 1 * from products
select * from order_ct
delete from account where idAcc > 1
delete from products
delete from Loai
delete from MucDo
select * from products
select * from products where idMucDo = 6
select top 10  idSP, tensanpham,imgUrl,gia,mota from products where idMucDo = 6
update account set tendaydu = N'Phan Trung Kiên' where idAcc = 1
select top 3 idSP, tensanpham,imgUrl,gia,mota from products where tensanpham like N'Áo %' 
select top 3 idSP, tensanpham,imgUrl,gia,mota from products where tensanpham like N'Áo %'
select tensanpham ,imgUrl,gia,mota from products where idSP = 1

create trigger tg_thanhtien on order_ct 
after insert as
begin
 update order_ct
 set thanhtien = soluong * gia
end
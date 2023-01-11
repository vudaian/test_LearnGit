using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using D15Cnpm7.ClassList;
using D15Cnpm7.ClassList.ClassElement;

namespace D15Cnpm7.Views.InfoProduct
{
    public partial class Product_Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.Request.QueryString["id"] != null)
            {
                string ID = Page.Request.QueryString["id"].ToString();
                Product pro = HandleProduct.product(ID);
                this.Prod_name.Text = pro.tensanpham.ToString();
                this.Prod_des.Text = pro.mota;
                this.Prod_price.Text = pro.gia;
                this.Prod_Face.ImageUrl = pro.imgUrl.Trim();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void Add_Cart_Click(object sender, EventArgs e)
        {
            Cart cart = new Cart();
            string ID = Page.Request.QueryString["id"].ToString();
            string IDUser = Page.Session["UserId"].ToString();
            NguoiDung users = HandleNguoiDung.GetUserbyID(IDUser);
            Product pro = HandleProduct.product(ID);
            Response.Write(pro.idSP);      
            cart.gia = pro.gia;
            cart.idSP = ID;
            cart.soluong = this.Prod_num.Text;
            cart.idAcc = users.id;
            cart.imgUrl = pro.imgUrl.Trim();
            cart.tensanpham = pro.tensanpham;
            cart.thanhtien = "0";
            HandleCart.Add_Cart(cart);
            Response.Redirect("/Views/GioHang/Cart_Index.aspx");
        }
    }
}
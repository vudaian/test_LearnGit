using D15Cnpm7.ClassList.ClassElement;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using D15Cnpm7.ClassList;

namespace D15Cnpm7.Views.GioHang
{
    public partial class Cart_Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGvCart();
            LoadTotalPrice();
        }

        protected void LoadGvCart()
        {
            string ID = Page.Session["UserId"].ToString();
            List<Cart> list = new List<Cart>();
            list = HandleCart.ListCart(Int32.Parse(ID));
            gvListCart.DataSource = list;
            gvListCart.DataBind();
        }
        protected void LoadTotalPrice()
        {
            string ID = Page.Session["UserId"].ToString();
            int price = HandleCart.TongTien(Int32.Parse(ID));
            lbPrice.Text = price.ToString();
            Total_Payment.Text = price.ToString();
        }

        protected void BtnThanhToan_Click(object sender, EventArgs e)
        {
            string ID = Page.Session["UserId"].ToString();
            HandleCart.ThanhToan(Int32.Parse(ID));
            Response.Redirect("/Views/GioHang/Cart_Index.aspx");
        }

        protected void gvListCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string UserID = gvListCart.DataKeys[e.RowIndex].Value.ToString();
            HandleCart.dele_order(Int32.Parse(UserID));
            LoadGvCart();
            LoadTotalPrice();
        }

    }
}
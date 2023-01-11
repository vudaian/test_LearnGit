using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using D15Cnpm7.ClassList.ClassElement;
using D15Cnpm7.ClassList;

namespace D15Cnpm7.Views.Home
{
    public partial class Home_Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.Session["UserId"] != null)
            {
                string ID = Page.Session["UserId"].ToString();
                NguoiDung users = HandleNguoiDung.GetUserbyID(ID);
                this.FaceUser.ImageUrl = users.linkImg.Trim();
                this.FillGridViewAo();
                this.FillGridViewQuan();
                FillGridViewMu();
                FillGridViewTui();
                FillGridViewKDD();
                FillGridViewSon();
                FillGridViewKDA();
                FillGridViewDT();
                //FillSearchResult();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
            
        }

        private void FillGridViewAo()
        {
            List<Product> list = new List<Product>();
            list = HandleProduct.listProductByLoai(1);
            gvProduct_Ao.DataSource = list;
            gvProduct_Ao.DataBind();
        }
        private void FillGridViewQuan()
        {
            List<Product> list = new List<Product>();
            list = HandleProduct.listProductByLoai(2);
            gvProduct_Quan.DataSource = list;
            gvProduct_Quan.DataBind();
        }
        private void FillGridViewMu()
        {
            List<Product> list = new List<Product>();
            list = HandleProduct.listProductByLoai(3);
            gvProductMu.DataSource = list;
            gvProductMu.DataBind();
        }
        private void FillGridViewTui()
        {
            List<Product> list = new List<Product>();
            list = HandleProduct.listProductByLoai(4);
            gvProductTui.DataSource = list;
            gvProductTui.DataBind();
        }
        private void FillGridViewKDD()
        {
            List<Product> list = new List<Product>();
            list = HandleProduct.listProductByLoai(5);
            gvProductKDD.DataSource = list;
            gvProductKDD.DataBind();
        }
        private void FillGridViewSon()
        {
            List<Product> list = new List<Product>();
            list = HandleProduct.listProductByLoai(6);
            gvProductSon.DataSource = list;
            gvProductSon.DataBind();
        }
        private void FillGridViewKDA()
        {
            List<Product> list = new List<Product>();
            list = HandleProduct.listProductByLoai(7);
            gvProductKDA.DataSource = list;
            gvProductKDA.DataBind();
        }
        private void FillGridViewDT()
        {
            List<Product> list = new List<Product>();
            list = HandleProduct.listProductByLoai(8);
            gvProductDT.DataSource = list;
            gvProductDT.DataBind();
        }
        private void FillSearchResult()
        {
            List<Product> list = HandleProduct.listProductByName("Áo");
            this.gvSearchResult.DataSource = list;
            gvSearchResult.DataBind();
            //List<Product> list = new List<Product>();
            //list = HandleProduct.listProductByLoai(1);
            //gvSearchResult.DataSource = list;
            //gvSearchResult.DataBind();
        }
        protected void navbar_contact_fb(object sender, EventArgs e)
        {

            Response.Redirect("");
        }
        protected void navbar_contact_in(object sender, EventArgs e)
        {

        }

        protected void UserCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Views/GioHang/Cart_Index.aspx");
        }

        protected void LogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default.aspx");
        }

        protected void btnAo_Click(object sender, EventArgs e)
        {

        }

        protected void ProductAll_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Views/ListProduct/ListPro_Index.aspx");
        }

        protected void UserInfo_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Views/UserInfo/UserInfo_Index.aspx");
        }

        protected void btnFashion_Click(object sender, EventArgs e)
        {
            Page.Session["ProdcutList"] = 1;
            Response.Redirect("/Views/ListProduct/ListPro_Index.aspx");
        }

        protected void searchText_TextChanged(object sender, EventArgs e)
        {
            string result = this.searchText.Text;
            List<Product> list = HandleProduct.listProductByName(result);
            this.gvSearchResult.DataSource = list;
            gvSearchResult.DataBind();
        }
    }
}
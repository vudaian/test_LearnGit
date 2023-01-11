using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using D15Cnpm7.ClassList;
using D15Cnpm7.ClassList.ClassElement;

namespace D15Cnpm7.Views.ListProduct
{
    public partial class ListPro_Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DDLLoai();
            DDLKieu();
            ResetData();
            if (Page.Session["ProdcutList"] != null)
            {
                string result = Page.Session["ProdcutList"].ToString();
                LoadDataSession(result);
            }
            else
            {
                LoadDataPro();
            }
        }
        private void LoadDataPro()
        {
            List<Product> list = new List<Product>();
            list = HandleProduct.listProduct();
            gvListProduct.DataSource = list;
            gvListProduct.DataBind();
        }
        private void LoadDataSession(string input)
        {
            List<Product> list = new List<Product>();
            list = HandleProduct.listProductSession(input);
            gvListProduct.DataSource = list;
            gvListProduct.DataBind();
        }

        protected void ADDCART_Click(object sender, EventArgs e)
        {
            
        }

        protected void DDLLoai()
        {
            List<LoaiThoiTrang> list = HandleProduct.LoaiThoiTrang();
            ddlLoai.DataSource = list;
            ddlLoai.DataBind();
            ddlLoai.DataValueField = "ID";
            ddlLoai.DataTextField = "tenLoai";
            ddlLoai.DataBind();
        }

        protected void DDLKieu()
        {
            List<KieuThoiTrang> list = HandleProduct.KieuThoiTrang();
            ddlThoiTrang.DataSource = list;
            ddlThoiTrang.DataBind();
            ddlThoiTrang.DataValueField = "ID";
            ddlThoiTrang.DataTextField = "tenKieu";
            ddlThoiTrang.DataBind();
        }

        protected void gvListProduct_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string UserID = gvListProduct.DataKeys[e.RowIndex].Value.ToString();
            HandleProduct.deleteProduct(Int32.Parse(UserID));
            LoadDataPro();
        }

        protected void BtnAddPro_Click(object sender, EventArgs e)
        {
            Product pro = new Product();
            pro.idSP = tbID.Text;
            pro.tensanpham = tbName.Text;
            pro.gia = tbPrice.Text;
            pro.idMucDo = ddlThoiTrang.SelectedValue;
            pro.idLoai = ddlLoai.SelectedValue;
            pro.mota = tbMoTa.Text;
            pro.soluong = "0";
            pro.imgUrl = tbImg.Text;
            HandleProduct.addProduct(pro);
        }

        protected void BtnUpdatePro_Click(object sender, EventArgs e)
        {
            Product pro = new Product();
            pro.idSP = tbID.Text;
            pro.tensanpham = tbName.Text;
            pro.gia = tbPrice.Text;
            pro.idMucDo = ddlThoiTrang.SelectedValue;
            pro.idLoai = ddlLoai.SelectedValue;
            pro.mota = tbMoTa.Text;
            pro.soluong = "0";
            pro.imgUrl = tbImg.Text;
            HandleProduct.updateProduct(pro);
        }

        protected void gvListProduct_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string UserID = gvListProduct.DataKeys[e.RowIndex].Value.ToString();
            Product pro = HandleProduct.product(UserID);
            tbID.Text = pro.idSP.ToString();
            tbName.Text = pro.tensanpham.ToString();
            tbPrice.Text = pro.gia.ToString();
            ddlThoiTrang.SelectedValue = pro.idMucDo.ToString();
            ddlLoai.SelectedValue = pro.idLoai.ToString();
            tbMoTa.Text = pro.mota.ToString();
            tbImg.Text = pro.imgUrl.ToString();
        }
        private void ResetData()
        {
            List<Product> list = HandleProduct.listProduct();
            tbID.Text = (list.Count + 1).ToString();
            tbName.Text = "";
            tbPrice.Text = "";
            ddlThoiTrang.SelectedValue = "1";
            ddlLoai.SelectedValue = "1";
            tbMoTa.Text = "";
            tbImg.Text = "";
        }
        protected void BtnReset_Click(object sender, EventArgs e)
        {
            ResetData();
        }
    }
}
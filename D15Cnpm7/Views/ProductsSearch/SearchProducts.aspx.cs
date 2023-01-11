using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using D15Cnpm7.ClassList.ClassElement;
using D15Cnpm7.Connetion;
using D15Cnpm7.ClassList;

namespace D15Cnpm7.Views.ProductsSearch
{
    public partial class SearchProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Value = Page.Request.QueryString["value"].ToString();
            displayListProducts(Value);
            this.lbResult.Text = Value;
        }
        protected void displayListProducts(string result)
        {
            List<Product> list = new List<Product>();
            list = HandleProduct.listProductByName(result);
            this.gvListProducts.DataSource = list;
            this.gvListProducts.DataBind();
        }
    }
}
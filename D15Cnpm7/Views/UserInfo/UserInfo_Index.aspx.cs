using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using D15Cnpm7.ClassList.ClassElement;
using D15Cnpm7.ClassList;

namespace D15Cnpm7.Views.UserInfo
{
    public partial class UserInfo_Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Page.Session["UserId"].ToString();
            NguoiDung users = HandleNguoiDung.GetUserbyID(ID);
            this.Value1.Enabled = false;
            this.Value2.Enabled = false;
            this.Value3.Enabled = false;
            this.userImg.ImageUrl = users.linkImg.Trim();
            this.Value1.Text = users.tendaydu.Trim();
            this.Value2.Text = users.email.Trim();
            this.Value3.Text = users.matkhau.Trim();
        }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            string ID = Page.Session["UserId"].ToString();
            NguoiDung users = HandleNguoiDung.GetUserbyID(ID);
            string name = this.Value1.Text;
            string email = this.Value2.Text;
            string password = this.Value3.Text;
            string linkImg = users.linkImg.Trim();
            NguoiDung user = new NguoiDung(ID, name, email, password, linkImg);
            HandleNguoiDung.Update(user);
            this.TextBox4.Text = "Cập nhật thành công";
        }
    }
}
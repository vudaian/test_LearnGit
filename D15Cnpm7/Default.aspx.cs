using D15Cnpm7.ClassList.ClassElement;
using D15Cnpm7.ClassList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace D15Cnpm7
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void HandleLogin(object sender, EventArgs e)
        {
            string email = this.email.Text;
            string password = this.password.Text;
            NguoiDung users = HandleNguoiDung.DangNhap(email, password);
            
            if (users == null)
            {
                Response.Write("<script>alert('Tài khoản hoặc mật khẩu của bạn chưa đúng!!!: ') </script>");
            }
            else
            {
                Page.Session["UserId"] = users.id;
                Response.Write("<script>alert('Đăng nhập tài khoản thành công!!!') </script>");
                Response.Redirect("/Views/Home/Home_Index.aspx");
            }
        }
        protected void HandleRegist(object sender, EventArgs e)
        {
            Response.Redirect("/Views/Register/Register_Index.aspx");
        }
    }
}
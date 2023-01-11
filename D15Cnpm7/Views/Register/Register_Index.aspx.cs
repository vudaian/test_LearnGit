using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using D15Cnpm7.ClassList.ClassElement;
using D15Cnpm7.ClassList;

namespace D15Cnpm7.Views.Register
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void handleClick(object sender, EventArgs e)
        {
            string fullname = this.fullname.Text;
            string email = this.email.Text;
            string password = this.password.Text;
            string linkImg = "../../asstes/Icon/user.png";
            NguoiDung user = new NguoiDung(fullname,email,password,linkImg);
            HandleNguoiDung.DangKy(user);
            Response.Write("<script>alert('Đăng ký tài khoản thành công!!!: ') </script>");
        }
    }
}
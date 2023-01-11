using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace D15Cnpm7.ClassList.ClassElement
{
    public class NguoiDung
    {
        public string id { set; get; }
        public string tendaydu { get; set; }
        public string email { get; set; }
        public string matkhau { get; set; }
        public string linkImg { get; set; }

        public NguoiDung(string fullname, string email,string password,string linkImg)
        {
            this.tendaydu = fullname;
            this.email = email;
            this.matkhau = password;
            this.linkImg = linkImg;
        }
        public NguoiDung(string id,string fullname, string email, string password, string linkImg)
        {
            this.id = id;
            this.tendaydu = fullname;
            this.email = email;
            this.matkhau = password;
            this.linkImg = linkImg;
        }

        public NguoiDung()
        {
        }
    }
}
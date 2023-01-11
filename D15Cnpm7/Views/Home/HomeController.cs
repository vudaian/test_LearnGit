using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using D15Cnpm7.ClassList.ClassElement;
using D15Cnpm7.ClassList;
using D15Cnpm7.Connetion;
using System.Data;

namespace D15Cnpm7.Views.Home
{
    public class HomeController
    {
        public static SQLConnection SQLCon = new SQLConnection();
        public DataSet Show_data()
        {
            DataSet ds = new DataSet();
            return ds;
        }
    }
}
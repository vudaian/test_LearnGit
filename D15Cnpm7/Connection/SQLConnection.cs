using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;

namespace D15Cnpm7.Connetion
{
    public class SQLConnection
    {
        public string strCon;
        public SQLConnection()
        {
            strCon = ConfigurationManager.ConnectionStrings["web_d15cnpm7"].ConnectionString.ToString();
        }
        
        public SqlConnection GetConnection()
        {
            return new SqlConnection(strCon);
        }
    }
}
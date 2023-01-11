//using D15Cnpm7.ClassList.User;
using D15Cnpm7.Connetion;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace D15Cnpm7.Connection
{
    public class ServiceUser
    {
        //public static Users LogIn(string _TaiKhoan , string _MatKhau)
        //{
        //    Users objUser = null;

        //    SqlConnection conn = SQLConnection.GetSqlConnection();
        //    string sql = "select TaiKhoan, MatKhau from [account] where taikhoan='" + _TaiKhoan + "' and matkhau='" + _MatKhau + "'";

        //    SqlCommand sqlCommand = new SqlCommand(sql, conn);
        //    sqlCommand.CommandType = System.Data.CommandType.Text;

        //    conn.Open();
        //    SqlDataReader reader = sqlCommand.ExecuteReader();

        //    if (reader.Read())
        //    {
        //        objUser = new Users();
        //        objUser.taikhoan = Convert.ToString(reader["taikhoan"]);
        //        objUser.matkhau = Convert.ToString(reader["matkhau"]);

        //    }
        //    reader.Close();
        //    SQLConnection.close(conn);
        //    conn.Dispose();
        //    return objUser;
        //}
    }
}
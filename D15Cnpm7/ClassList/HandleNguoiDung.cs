using System;
using System.Configuration;
using System.Data.SqlClient;
using D15Cnpm7.ClassList.ClassElement;
using D15Cnpm7.Connetion;

namespace D15Cnpm7.ClassList
{
    public class HandleNguoiDung
    {
        public static SQLConnection SQLCon = new SQLConnection();
        public static NguoiDung DangNhap(string _Email, string _MatKhau)
        {
            NguoiDung objUser = null;
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "select * from account where email = @email and matkhau = @matkhau";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            sqlCommand.Parameters.AddWithValue("@email", _Email);
            sqlCommand.Parameters.AddWithValue("@matkhau", _MatKhau);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            if (reader.Read())
            {
                objUser = new NguoiDung();
                objUser.id = Convert.ToString(reader["idAcc"]);
                objUser.tendaydu = Convert.ToString(reader["tendaydu"]);
                objUser.email = Convert.ToString(reader["email"]);
                objUser.matkhau = Convert.ToString(reader["matkhau"]);
                objUser.linkImg = Convert.ToString(reader["linkImg"]);
            }
            reader.Close();
            Conn.Close();
            return objUser;
        }

        public static NguoiDung GetUserbyID(string id)
        {
            NguoiDung objUser = null;
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "select * from account where idAcc = @id";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            sqlCommand.Parameters.AddWithValue("@id", Int32.Parse(id));
            SqlDataReader reader = sqlCommand.ExecuteReader();
            if (reader.Read())
            {
                objUser = new NguoiDung();
                objUser.id = Convert.ToString(reader["idAcc"]);
                objUser.tendaydu = Convert.ToString(reader["tendaydu"]);
                objUser.email = Convert.ToString(reader["email"]);
                objUser.matkhau = Convert.ToString(reader["matkhau"]);
                objUser.linkImg = Convert.ToString(reader["linkImg"]);
            }
            reader.Close();
            Conn.Close();
            return objUser;
        }
        public static void DangKy(NguoiDung user)
        {
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "insert into account (tendaydu,email,matkhau,linkImg) values(@tendaydu,@email,@matkhau,@linkImg)";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            sqlCommand.Parameters.AddWithValue("@tendaydu", user.tendaydu);
            sqlCommand.Parameters.AddWithValue("@email", user.email);
            sqlCommand.Parameters.AddWithValue("@matkhau", user.matkhau);
            sqlCommand.Parameters.AddWithValue("@linkImg", user.linkImg.Trim());
            sqlCommand.ExecuteNonQuery();
            Conn.Close();
        }
        public static void Update(NguoiDung user)
        {
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "update account  set tendaydu = @tendaydu,email =@email,matkhau = @matkhau,linkImg = @linkImg where idAcc = @idAcc";
            using(SqlCommand sqlCommand = new SqlCommand(command, Conn))
            {
                sqlCommand.Parameters.AddWithValue("@idAcc", Int32.Parse(user.id));
                sqlCommand.Parameters.AddWithValue("@tendaydu", user.tendaydu);
                sqlCommand.Parameters.AddWithValue("@email", user.email);
                sqlCommand.Parameters.AddWithValue("@matkhau", user.matkhau);
                sqlCommand.Parameters.AddWithValue("@linkImg", user.linkImg);
                sqlCommand.ExecuteNonQuery();
            }
            Conn.Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using D15Cnpm7.ClassList.ClassElement;
using D15Cnpm7.Connetion;

namespace D15Cnpm7.ClassList
{
    public class HandleCart
    {
        public static SQLConnection SQLCon = new SQLConnection();
        public static void Add_Cart(Cart cart)
        {
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "insert into order_ct (idAcc,idSP,tensp,imgUrl,soluong,gia,thanhtien) values(@idAcc,@idSP,@tensp,@imgUrl,@soluong,@gia,@thanhtien)";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            sqlCommand.Parameters.AddWithValue("@idAcc", Int32.Parse(cart.idAcc));
            sqlCommand.Parameters.AddWithValue("@idSP", Int32.Parse(cart.idSP));
            sqlCommand.Parameters.AddWithValue("@tensp", cart.tensanpham);
            sqlCommand.Parameters.AddWithValue("@soluong", Int32.Parse(cart.soluong));
            sqlCommand.Parameters.AddWithValue("@gia", Int32.Parse(cart.gia));
            sqlCommand.Parameters.AddWithValue("@imgUrl",cart.imgUrl);
            sqlCommand.Parameters.AddWithValue("@thanhtien", Int32.Parse(cart.thanhtien));
            sqlCommand.ExecuteNonQuery();
            Conn.Close();
        }

        public static List<Cart> ListCart (int id)
        {
            List<Cart> list = new List<Cart>();
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "select * from order_ct where idAcc = @idAcc";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            sqlCommand.Parameters.AddWithValue("@idAcc", id);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            Cart cart = null;
            while (reader.Read())
            {
                cart = new Cart();
                cart.idSP = Convert.ToString(reader["idSP"]);
                cart.id = Convert.ToString(reader["idOrCT"]);
                cart.tensanpham = Convert.ToString(reader["tensp"]);
                cart.thanhtien = Convert.ToString(reader["thanhtien"]);
                cart.gia = Convert.ToString(reader["gia"]);
                cart.imgUrl = Convert.ToString(reader["imgUrl"]);
                cart.soluong = Convert.ToString(reader["soluong"]);
                list.Add(cart);
            }
            return list;
        }

        public static int TongTien(int id)
        {
            int tongtien = 0;
            int thanhtien = 0;
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "select thanhtien from order_ct where idAcc = @idAcc";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            sqlCommand.Parameters.AddWithValue("@idAcc", id);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                thanhtien = Int32.Parse(Convert.ToString(reader["thanhtien"]));
                tongtien += thanhtien;
            }
            return tongtien;
        }
        public static void ThanhToan(int id)
        {
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "delete from order_ct where idAcc = @idAcc";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            sqlCommand.Parameters.AddWithValue("@idAcc", id);
            sqlCommand.ExecuteNonQuery();
        }
        public static void dele_order(int id)
        {
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "delete from order_ct where idOrCT = @idOrCT";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            sqlCommand.Parameters.AddWithValue("@idOrCT", id);
            sqlCommand.ExecuteNonQuery();
        }
    }
}
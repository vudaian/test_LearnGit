using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using D15Cnpm7.ClassList.ClassElement;
using D15Cnpm7.Connetion;

namespace D15Cnpm7.ClassList
{
    public class HandleProduct
    {
        public static SQLConnection SQLCon = new SQLConnection();
        public static List<Product> listProduct()
        {
            List<Product> list = new List<Product>();
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "select idSP, tensanpham,imgUrl,gia,mota from products";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            Product pro = null;
            while (reader.Read())
            {
                pro = new Product();
                pro.idSP = Convert.ToString(reader["idSP"]);
                pro.tensanpham = Convert.ToString(reader["tensanpham"]);
                pro.imgUrl = Convert.ToString(reader["imgUrl"]);
                pro.gia = Convert.ToString(reader["gia"]);
                pro.mota = Convert.ToString(reader["mota"]);
                list.Add(pro);
            }
            return list;
        }
        public static List<Product> listProductByLoai(int _idMD)
        {
            //HttpContext.Current.Response.Write("id = ");
            //HttpContext.Current.Response.End();
            List<Product> list = new List<Product>();
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "select top 10 idSP, tensanpham,imgUrl,gia,mota from products where idMucDo = @idMucDo ";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            sqlCommand.Parameters.AddWithValue("@idMucDo", _idMD.ToString());
            SqlDataReader reader = sqlCommand.ExecuteReader();
            Product pro = null;
            while (reader.Read())
            {
                pro = new Product();
                pro.idSP = Convert.ToString(reader["idSP"]);
                
                pro.tensanpham = Convert.ToString(reader["tensanpham"]);
                pro.imgUrl = Convert.ToString(reader["imgUrl"]);
                pro.gia = Convert.ToString(reader["gia"]);
                pro.mota = Convert.ToString(reader["mota"]);
                list.Add(pro);
            }
            return list;
        }
        public static List<Product> listProductByName(string _Name)
        {
            List<Product> list = new List<Product>();
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "select idSP, tensanpham,imgUrl,gia,mota from products where tensanpham like N'"+ _Name+" %'";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            Product pro = null;
            while (reader.Read())
            {
                pro = new Product();
                pro.idSP = Convert.ToString(reader["idSP"]);
                pro.tensanpham = Convert.ToString(reader["tensanpham"]);
                pro.imgUrl = Convert.ToString(reader["imgUrl"]);
                pro.gia = Convert.ToString(reader["gia"]);
                pro.mota = Convert.ToString(reader["mota"]);
                list.Add(pro);
            }
            return list;
        }
        public static List<Product> listProductSession(string _idLoai)
        {
            List<Product> list = new List<Product>();
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "select top 10 idSP, tensanpham,imgUrl,gia,mota from products where idLoai = @idLoai ";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            sqlCommand.Parameters.AddWithValue("@idLoai", _idLoai);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            Product pro = null;
            while (reader.Read())
            {
                pro = new Product();
                pro.tensanpham = Convert.ToString(reader["tensanpham"]);
                pro.imgUrl = Convert.ToString(reader["imgUrl"]);
                pro.gia = Convert.ToString(reader["gia"]);
                pro.mota = Convert.ToString(reader["mota"]);
                list.Add(pro);
            }
            return list;
        }
        public static Product product (string id)
        {
            Product pro = null;
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "select idSP,idLoai,idMucDo, tensanpham ,imgUrl,gia,mota from products where idSP = " + id;
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                pro = new Product();
                pro.idSP = Convert.ToString(reader["idSP"]);
                pro.idLoai = Convert.ToString(reader["idLoai"]);
                pro.idMucDo = Convert.ToString(reader["idMucDo"]);
                pro.tensanpham = Convert.ToString(reader["tensanpham"]);
                pro.imgUrl = Convert.ToString(reader["imgUrl"]);
                pro.gia = Convert.ToString(reader["gia"]);
                pro.mota = Convert.ToString(reader["mota"]);
            }
            return pro;
        }
        public static List<KieuThoiTrang> KieuThoiTrang()
        {
            List<KieuThoiTrang> list = new List<KieuThoiTrang>();
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "select * from MucDo";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                KieuThoiTrang item = new KieuThoiTrang();
                item.id = Convert.ToString(reader["idMucDo"]);
                item.tenKieu = Convert.ToString(reader["tenMucDo"]);
                list.Add(item);
            }
            return list;
        }
        public static List<LoaiThoiTrang> LoaiThoiTrang()
        {
            List<LoaiThoiTrang> list = new List<LoaiThoiTrang>();
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "select * from Loai";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                LoaiThoiTrang item = new LoaiThoiTrang();
                item.ID = Convert.ToString(reader["idLoai"]);
                item.tenLoai = Convert.ToString(reader["tenLoai"]);
                list.Add(item);
            }
            return list;
        }

        public static void addProduct(Product prod)
        {
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "insert into products (idSP, idMucDo,idLoai,tensanpham,imgUrl,gia,soluong,mota) values (@idSP,@idMucDo,@idLoai,@tensanpham,@imgUrl,@gia,@soluong,@mota)";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            sqlCommand.Parameters.AddWithValue("@idSP",Int32.Parse( prod.idSP));
            sqlCommand.Parameters.AddWithValue("@idMucDo", Int32.Parse (prod.idMucDo));
            sqlCommand.Parameters.AddWithValue("@idLoai", Int32.Parse(prod.idLoai));
            sqlCommand.Parameters.AddWithValue("@tensanpham", prod.tensanpham);
            sqlCommand.Parameters.AddWithValue("@imgUrl", prod.imgUrl);
            sqlCommand.Parameters.AddWithValue("@gia", Int32.Parse (prod.gia));
            sqlCommand.Parameters.AddWithValue("@soluong", Int32.Parse (prod.soluong));
            sqlCommand.Parameters.AddWithValue("@mota", prod.mota);
            sqlCommand.ExecuteNonQuery();
        }
        public static void deleteProduct (int id)
        {
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "delete products where idSP = @idSP";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            sqlCommand.Parameters.AddWithValue("@idSP", id);
            sqlCommand.ExecuteNonQuery();
        }
        public static void updateProduct (Product prod)
        {
            SqlConnection Conn = SQLCon.GetConnection();
            Conn.Open();
            string command = "update products set  idMucDo = @idMucDo,idLoai = @idLoai,tensanpham = @tensanpham,imgUrl = @imgUrl,gia = @gia,soluong = @soluong,mota = @mota where idSP = @idSP";
            SqlCommand sqlCommand = new SqlCommand(command, Conn);
            sqlCommand.Parameters.AddWithValue("@idSP", Int32.Parse(prod.idSP));
            sqlCommand.Parameters.AddWithValue("@idMucDo", Int32.Parse(prod.idMucDo));
            sqlCommand.Parameters.AddWithValue("@idLoai", Int32.Parse(prod.idLoai));
            sqlCommand.Parameters.AddWithValue("@tensanpham", prod.tensanpham);
            sqlCommand.Parameters.AddWithValue("@imgUrl", prod.imgUrl);
            sqlCommand.Parameters.AddWithValue("@gia", Int32.Parse(prod.gia));
            sqlCommand.Parameters.AddWithValue("@soluong", Int32.Parse(prod.soluong));
            sqlCommand.Parameters.AddWithValue("@mota", prod.mota);
            sqlCommand.ExecuteNonQuery();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication3
{
    public partial class Oprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////object kullanici = Session["kadi"];
            ////Label1.Text = kullanici.ToString();
            //SqlConnection baglanti;
            //SqlCommand komut;

            //string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            //baglanti = new SqlConnection(baglanStr);
            //string usernam = Request.Cookies["UserLog"].Value;

            //komut = new SqlCommand("SELECT * FROM companyProfiles WHERE Cid IN (SELECT userID FROM Users WHERE uName = '" + usernam + "' )", baglanti);
            //baglanti.Open();
            //SqlDataReader oku = komut.ExecuteReader();

            ////  string val = "1";

            //while (oku.Read())
            //{
            //    // val = oku[0].ToString();
            //    TextBox1.Text = oku[1].ToString();
            //    TextBox3.Text = oku[3].ToString();
            //    //     TextBox7.Text = oku[5].ToString();
            //    //  TextBox2.Text = 
            //    //    DropDownList1.Text = oku[3].ToString();
            //    Image9.ImageUrl = oku[4].ToString();
            //    TextBox4.Text = usernam;
            //    TextBox5.Text = oku[2].ToString();
            //    TextBox8.Text = oku[6].ToString();
            //    TextBox6.Text = oku[5].ToString();
            //}


            //baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string usernam = Request.Cookies["UserLog"].Value;
            Label1.Text = usernam;
            if (TextBox2.Text == "")
            {
                Label1.Text = "Please enter your password to advance"; Label1.Visible = true;

            }
            else
            {


                //  TextBox1.Text = FileUpload1.FileName;

                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(Server.MapPath("~/resimler/") + FileUpload1.FileName);

                    // TextBox1.Text = "dosya ok";

                }

                Image9.ImageUrl = "~/resimler/" + FileUpload1.FileName;


                SqlConnection baglanti;
                SqlCommand komut;
                SqlCommand komut2;
                //   SqlCommand komut2;

                string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
                baglanti = new SqlConnection(baglanStr);
                komut = new SqlCommand("UPDATE companyProfiles SET cName=@cname , Address=@adres,  cPhone=@tel , cLogo=@logo, email=@posta WHERE cIntro IS NULL", baglanti);
                komut2 = new SqlCommand("UPDATE Users SET uName=@kuladi , Password=@parola  WHERE userID IN (SELECT TOP 1 userID FROM Users ORDER BY userID DESC)", baglanti);

                // komut = new SqlCommand("EXECUTE cgun @cname, @adres, @kuladi, @tel, @parola, @intro, @logo, @posta", baglanti);
                //  komut2 = new SqlCommand("INSERT INTO Users (uName, Password, uType) VALUES(@kadi, @parola, @tip)", baglanti);
                //  int type = 1;

                //komut2.Parameters.AddWithValue("@kadi", TextBox4.Text);
                //komut2.Parameters.AddWithValue("@parola", TextBox2.Text);
                //komut2.Parameters.AddWithValue("@tip", type);

                komut.Parameters.AddWithValue("@cname", TextBox1.Text);
                komut.Parameters.AddWithValue("@adres", TextBox5.Text);
                komut2.Parameters.AddWithValue("@kuladi", TextBox4.Text);
                komut.Parameters.AddWithValue("@tel", TextBox3.Text);
                komut2.Parameters.AddWithValue("@parola", TextBox2.Text);
               // komut.Parameters.AddWithValue("@intro", TextBox8.Text);
                komut.Parameters.AddWithValue("@logo", "~/resimler/" + FileUpload1.FileName);
                // komut.Parameters.AddWithValue("@kanat", usernam);
                komut.Parameters.AddWithValue("@posta", TextBox6.Text);


                baglanti.Open();


                //  komut2.ExecuteNonQuery();
                komut.ExecuteNonQuery();
                komut2.ExecuteNonQuery();
                //Label2.Text = "Place Successfully Saved";
                //Label2.Visible = true;
                baglanti.Close();

                //    Response.Cookies["UserLog"].Value = TextBox4.Text;



                Label1.Visible = true;



            }



        }
    }
}
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Data.SqlClient;
//using System.Configuration;


//namespace WebApplication3
//{
//    public partial class Oprofile : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            SqlConnection baglanti;
//            SqlCommand komut;

//            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
//            baglanti = new SqlConnection(baglanStr);
//            string usernam = Request.Cookies["UserLog"].Value;

//            komut = new SqlCommand("SELECT * FROM companyProfiles WHERE Cid IN (SELECT userID FROM Users WHERE uName = '" + usernam + "' )", baglanti);
//                        baglanti.Open();
//            SqlDataReader oku = komut.ExecuteReader();

//            //  string val = "1";

//            while (oku.Read())
//            {
//                // val = oku[0].ToString();
//                TextBox1.Text = oku[1].ToString();
//                TextBox3.Text = oku[2].ToString();
//               // TextBox7.Text = oku[5].ToString();
//                //DropDownList1.Text = oku[3].ToString();
//                TextBox4.Text = usernam;
//                TextBox5.Text = oku[7].ToString();
//                TextBox6.Text = oku[6].ToString();
//                //Image8.ImageUrl = oku[4].ToString();
//            }
//            baglanti.Close();
//        }

//        protected void Button1_Click(object sender, EventArgs e)
//        {

//            if (TextBox2.Text == "")
//            {
//                Label1.Text = "Please Enter your Password to save"; Label1.Visible = true;
//            }

//            else
//            {
//                //  TextBox1.Text = FileUpload1.FileName;

//                if (FileUpload1.HasFile)
//                {
//                    FileUpload1.SaveAs(Server.MapPath("~/resimler/") + FileUpload1.FileName);

//                    // TextBox1.Text = "dosya ok";

//                }

//                //Image8.ImageUrl = "~/resimler/" + FileUpload1.FileName;


//                SqlConnection baglanti;
//                SqlCommand komut;
//                //   SqlCommand komut2;

//                string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
//                baglanti = new SqlConnection(baglanStr);

//                komut = new SqlCommand("EXECUTE cgun @adi, @sadi, @bdate,  @kadi, @sifre, @resim, @biy, @epost", baglanti);
//                //  komut2 = new SqlCommand("INSERT INTO Users (uName, Password, uType) VALUES(@kadi, @parola, @tip)", baglanti);
//                //  int type = 1;

//                //komut2.Parameters.AddWithValue("@kadi", TextBox4.Text);
//                //komut2.Parameters.AddWithValue("@parola", TextBox2.Text);
//                //komut2.Parameters.AddWithValue("@tip", type);

//                komut.Parameters.AddWithValue("@adi", TextBox1.Text);
//                komut.Parameters.AddWithValue("@sadi", TextBox3.Text);
//               komut.Parameters.AddWithValue("@bdate", TextBox3.Text);
//        //        komut.Parameters.AddWithValue("@cins", DropDownList1.Text);
//                komut.Parameters.AddWithValue("@kadi", TextBox4.Text);
//                komut.Parameters.AddWithValue("@sifre", TextBox2.Text);
//                komut.Parameters.AddWithValue("@resim", "~/resimler/" + FileUpload1.FileName);

//                komut.Parameters.AddWithValue("@biy", TextBox5.Text);
//                komut.Parameters.AddWithValue("@epost", TextBox6.Text);

//                baglanti.Open();


//                //  komut2.ExecuteNonQuery();
//                komut.ExecuteNonQuery();
//                //Label2.Text = "Place Successfully Saved";
//                //Label2.Visible = true;
//                baglanti.Close();





//                Label1.Visible = true;

//            }
//        }
//    }
//}
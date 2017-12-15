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
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Label1.Visible = false;
            Label1.Text = "*Please Fill All the Fields !";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "")
            {
                Label1.Visible = true;
                Label2.Visible = true;
            }





            //EXECUTE OrgEkle 'asd','asd','asd','asd','asd';

            SqlConnection baglanti;
            SqlCommand komut;
         //   SqlCommand komut2;

            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);

            komut = new SqlCommand("EXECUTE OrgEkle   @CompAdi, @TelNo, @Kuladi, @parola, @eposta ", baglanti);

            //komut2 = new SqlCommand("INSERT INTO Users (uName, Password, uType) VALUES(@kadi, @parola, @tip)", baglanti);
            //int type = 1;

            //komut2.Parameters.AddWithValue("@kadi", TextBox4.Text);
            //komut2.Parameters.AddWithValue("@parola", TextBox2.Text);
            //komut2.Parameters.AddWithValue("@tip", type);

            komut.Parameters.AddWithValue("@Compadi", TextBox1.Text);
            komut.Parameters.AddWithValue("@TelNo", TextBox3.Text);
            komut.Parameters.AddWithValue("@Kuladi", TextBox4.Text);
            komut.Parameters.AddWithValue("@parola", TextBox2.Text);
            komut.Parameters.AddWithValue("@eposta", TextBox6.Text);
            //komut.Parameters.AddWithValue("@adi", TextBox1.Text);
            //komut.Parameters.AddWithValue("@sadi", TextBox3.Text);
            //komut.Parameters.AddWithValue("@mail", TextBox6.Text);



            baglanti.Open();


          //  komut2.ExecuteNonQuery();
            komut.ExecuteNonQuery();
            baglanti.Close();
            // Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "<script>alert('You've Registered Successfully');</script>");

            Server.Transfer("login.aspx", true);

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection baglanti;
            SqlCommand komut;
            SqlCommand komut2;
            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);

            string KA = TextBox4.Text;
         //   string PW = TextBox2.Text;

            komut = new SqlCommand("SELECT * FROM Users WHERE uName='" + KA + "'", baglanti);
            baglanti.Open();
            SqlDataReader oku = komut.ExecuteReader();

            bool r = true;

            if (oku.Read())
            {

                r = false;
            }


            baglanti.Close();












            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "")
            {
                Label1.Text = "Please Fill all fields";
                Label2.Text = "Please Fill all fields";
                Label1.Visible = true;
                Label2.Visible = true;
            }
            else if (TextBox2.Text != TextBox5.Text)
            {
                Label2.Text = "Passwords Do not Match !";
                Label2.Visible = true;
            }
            else if (!r)
            {


                Label1.Text = "Username Already Taken";
                Label2.Text = "Username Already Taken";
                Label1.Visible = true;
                Label2.Visible = true;

            }

            else
            { 
            //EXECUTE OrgEkle 'asd','asd','asd','asd','asd';

            //SqlConnection baglanti;
            //SqlCommand komut;
            ////   SqlCommand komut2;

            //string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            //baglanti = new SqlConnection(baglanStr);

            komut = new SqlCommand("EXECUTE OrgEkle   @CompAdi, @TelNo, @Kuladi, @parola, @eposta ", baglanti);

            //komut2 = new SqlCommand("INSERT INTO Users (uName, Password, uType) VALUES(@kadi, @parola, @tip)", baglanti);
            //int type = 1;

            //komut2.Parameters.AddWithValue("@kadi", TextBox4.Text);
            //komut2.Parameters.AddWithValue("@parola", TextBox2.Text);
            //komut2.Parameters.AddWithValue("@tip", type);

            komut.Parameters.AddWithValue("@Compadi", TextBox1.Text);
            komut.Parameters.AddWithValue("@TelNo", TextBox3.Text);
            komut.Parameters.AddWithValue("@Kuladi", TextBox4.Text);
            komut.Parameters.AddWithValue("@parola", TextBox2.Text);
            komut.Parameters.AddWithValue("@eposta", TextBox6.Text);
            //komut.Parameters.AddWithValue("@adi", TextBox1.Text);
            //komut.Parameters.AddWithValue("@sadi", TextBox3.Text);
            //komut.Parameters.AddWithValue("@mail", TextBox6.Text);



            baglanti.Open();


            //  komut2.ExecuteNonQuery();
            komut.ExecuteNonQuery();
            baglanti.Close();
            // Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "<script>alert('You've Registered Successfully');</script>");

            Server.Transfer("login.aspx", true);
            }
        }
    }
}
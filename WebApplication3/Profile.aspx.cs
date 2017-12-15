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
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  SqlConnection baglanti;
          //  SqlCommand komut;

          //  string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
          //  baglanti = new SqlConnection(baglanStr);
          //  string usernam = Request.Cookies["UserLog"].Value;

          //  komut = new SqlCommand("SELECT * FROM userProfiles WHERE Pid IN (SELECT userID FROM Users WHERE uName = '" + usernam+"' )", baglanti);
          //  baglanti.Open();
          //  SqlDataReader oku = komut.ExecuteReader();

          ////  string val = "1";

          //  while (oku.Read())
          //  {
          //     // val = oku[0].ToString();
          //      TextBox1.Text = oku[1].ToString();
          //      TextBox3.Text = oku[2].ToString();
          //      TextBox7.Text = oku[5].ToString();
          //      DropDownList1.Text = oku[3].ToString();
          //     TextBox4.Text = usernam;
          //      TextBox5.Text = oku[7].ToString();
          //      TextBox6.Text = oku[6].ToString();
          //      Image8.ImageUrl = oku[4].ToString();
          //  }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox2.Text=="")
            {
                Label1.Text = "Please Enter your Password to save"; Label1.Visible = true;
            }

            else
            { 
            //  TextBox1.Text = FileUpload1.FileName;

            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/resimler/") + FileUpload1.FileName);

               // TextBox1.Text = "dosya ok";

            }

             Image8.ImageUrl = "~/resimler/" + FileUpload1.FileName;


            SqlConnection baglanti;
            SqlCommand komut;
            //   SqlCommand komut2;

            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);

            komut = new SqlCommand("EXECUTE Kgun @adi, @sadi, @bdate, @cins, @kadi, @sifre, @resim, @biy, @epost", baglanti);
            //  komut2 = new SqlCommand("INSERT INTO Users (uName, Password, uType) VALUES(@kadi, @parola, @tip)", baglanti);
            //  int type = 1;

            //komut2.Parameters.AddWithValue("@kadi", TextBox4.Text);
            //komut2.Parameters.AddWithValue("@parola", TextBox2.Text);
            //komut2.Parameters.AddWithValue("@tip", type);

            komut.Parameters.AddWithValue("@adi", TextBox1.Text);
            komut.Parameters.AddWithValue("@sadi", TextBox3.Text);
            komut.Parameters.AddWithValue("@bdate", TextBox7.Text);
            komut.Parameters.AddWithValue("@cins", DropDownList1.Text);
            komut.Parameters.AddWithValue("@kadi", TextBox4.Text);
            komut.Parameters.AddWithValue("@sifre", TextBox2.Text);
            komut.Parameters.AddWithValue("@resim", "~/resimler/" + FileUpload1.FileName);

            komut.Parameters.AddWithValue("@biy", TextBox5.Text);
            komut.Parameters.AddWithValue("@epost", TextBox6.Text);

            baglanti.Open();
           

            //  komut2.ExecuteNonQuery();
            komut.ExecuteNonQuery();
            //Label2.Text = "Place Successfully Saved";
            //Label2.Visible = true;
            baglanti.Close();





            Label1.Visible = true;

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}
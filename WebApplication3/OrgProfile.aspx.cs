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
    public partial class OrgProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection baglanti;
            SqlCommand komut;
            SqlCommand komut2;
            //   SqlCommand komut2;

            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);
            komut = new SqlCommand("UPDATE companyProfiles SET cName=@cname , Address=@adres,  cPhone=@tel , cLogo=@logo, email=@posta, cIntro=@intro WHERE userID IN (SELECT TOP 1 userID FROM companyProfiles ORDER BY userID DESC)", baglanti);
            komut2 = new SqlCommand("UPDATE Users SET uName=@kuladi , Password=@parola  WHERE userID IN (SELECT TOP 1 userID FROM Users ORDER BY userID DESC)", baglanti);

            // komut = new SqlCommand("EXECUTE cgun @cname, @adres, @kuladi, @tel, @parola, @intro, @logo, @posta", baglanti);
            //  komut2 = new SqlCommand("INSERT INTO Users (uName, Password, uType) VALUES(@kadi, @parola, @tip)", baglanti);
            //  int type = 1;

            //komut2.Parameters.AddWithValue("@kadi", TextBox4.Text);
            //komut2.Parameters.AddWithValue("@parola", TextBox2.Text);
            //komut2.Parameters.AddWithValue("@tip", type);

            komut.Parameters.AddWithValue("@cname", TextBox1.Text);
            komut.Parameters.AddWithValue("@adres", TextBox2.Text);
            komut2.Parameters.AddWithValue("@kuladi", TextBox7.Text);
            komut.Parameters.AddWithValue("@tel", TextBox3.Text);
            komut2.Parameters.AddWithValue("@parola", TextBox4.Text);
             komut.Parameters.AddWithValue("@intro", TextBox5.Text);
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti;
            SqlCommand komut;

            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);
            string usernam = Request.Cookies["UserLog"].Value;

            komut = new SqlCommand("SELECT * FROM companyProfiles WHERE Cid IN (SELECT userID FROM Users WHERE uName = '" + usernam + "' )", baglanti);
            baglanti.Open();
            SqlDataReader oku = komut.ExecuteReader();

            //  string val = "1";

            while (oku.Read())
            {
                // val = oku[0].ToString();
                TextBox1.Text = oku[1].ToString();
                TextBox3.Text = oku[3].ToString();
                //     TextBox7.Text = oku[5].ToString();
                //  TextBox2.Text = 
                //    DropDownList1.Text = oku[3].ToString();
                Image8.ImageUrl = oku[4].ToString();
                TextBox7.Text = usernam;
                TextBox2.Text = oku[2].ToString();
                TextBox5.Text = oku[6].ToString();
                TextBox6.Text = oku[5].ToString();
            }


            baglanti.Close();
        }
    }
}
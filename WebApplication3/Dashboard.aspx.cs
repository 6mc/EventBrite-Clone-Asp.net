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
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel8.Visible = false;
            //Panel9.Visible = false;
          //  Panel10.Visible = false;
            Label1.Visible = false;
            object kullanici = Session["kadi"];
            string usernam = Request.Cookies["UserLog"].Value;
            if (kullanici == null)
            {
            //    Server.Transfer("login.aspx", true);
            }

            SqlConnection baglanti;
            SqlCommand komut;

            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);
            komut = new SqlCommand("SELECT uType FROM Users WHERE uName='" + usernam + "' ", baglanti);
            baglanti.Open();
            SqlDataReader oku = komut.ExecuteReader();

            string val = "1";

            while (oku.Read())
            {
                val = oku[0].ToString();

                if (val == "1")
                {

                  //  HyperLink9.Text = "EVENT HISTORY";
                    HyperLink9.Visible = false;
                    HyperLink7.NavigateUrl = "Profile.aspx";
                }

            }

            //Session.Add("kadi", kullanici.ToString());

            //Session.Timeout = 50;

            


            baglanti.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel8.Visible = true;
            Label1.Visible = true;
            Label1.Text = "Popular Events in " + TextBox6.Text;
           
            SqlConnection baglanti;
            SqlCommand komut;
            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);

            komut = new SqlCommand("SELECT * FROM Events WHERE eLocation IN (SELECT pName FROM Places WHERE pAdress LIKE '%"+TextBox6.Text+"%') AND eName LIKE '%"+TextBox5.Text+"%' ", baglanti);
            baglanti.Open();
            SqlDataReader oku = komut.ExecuteReader();

            //   string val = "1";
            // Label1.Text = "  ";

         

            int i = 0;
            while (oku.Read())
            {
                Label5.Text = oku[6].ToString();
                Label4.Text = oku[4].ToString();
                Label2.Text= oku[2].ToString();
                Label3.Text= oku[3].ToString();
                Image2.ImageUrl = oku[5].ToString();

            }

            baglanti.Close();

            SqlCommand komut2;

            komut2 = new SqlCommand("SELECT ticketName FROM Tickets WHERE eventID IN (SELECT eventID FROM Events WHERE eName='"+Label2.Text+"') ", baglanti);
            baglanti.Open();
            SqlDataReader oka = komut2.ExecuteReader();

            //   string val = "1";
            // Label1.Text = "  ";



           // int i = 0;
            while (oka.Read())
            {
                DropDownList1.Items.Add(oka[0].ToString());

            }

            baglanti.Close();




        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlConnection baglanti;
            SqlCommand komut;
            SqlCommand komut2;
            SqlCommand komut3;
            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);

            komut = new SqlCommand("INSERT INTO Invoice (ticketID, userID, iDate, totalPrice, tQuantity) VALUES(@ticketID, @userID, @iDate, @totalPrice, @tQuantity)", baglanti);

            int type = 1;

            komut2 = new SqlCommand("SELECT ticketID,ticketPrice FROM Tickets WHERE ticketName='"+DropDownList1.Text +"'", baglanti);
            baglanti.Open();
            SqlDataReader oku = komut2.ExecuteReader();

            int val = 2;
            string vql = "1";
            while (oku.Read())
            {
                val = Convert.ToInt16(oku[0]);
                vql = oku[1].ToString();
            }

            //Session.Add("kadi", kullanici.ToString());

            //Session.Timeout = 50;




            baglanti.Close();
            //string usernam = Request.Cookies["UserLog"].Value;
            //komut3 = new SqlCommand("SELECT userID FROM Users WHERE uName='" + usernam + "'", baglanti);
            //baglanti.Open();
            //SqlDataReader aku = komut3.ExecuteReader();

            //string vale = "1";

            //while (aku.Read())
            //{
            //    vale = oku[0].ToString();

            //}
            //baglanti.Close();


            //komut.Parameters.AddWithValue("@kadi", TextBox4.Text);
            //komut.Parameters.AddWithValue("@parola", TextBox2.Text);
            komut.Parameters.AddWithValue("@ticketID", Convert.ToInt16(val));
            komut.Parameters.AddWithValue("@userID", "2"); 
komut.Parameters.AddWithValue("@iDate", DateTime.Now);
            komut.Parameters.AddWithValue("@totalPrice", Convert.ToInt16(vql)*Convert.ToInt16(TextBox8.Text));
            komut.Parameters.AddWithValue("@tQuantity", Convert.ToInt16(val));



            baglanti.Open();

            komut.ExecuteNonQuery();

            baglanti.Close();





        }

        protected void Button3_Click(object sender, EventArgs e)
        {
         //   SqlConnection baglanti;
         //   SqlCommand komut;
         //   SqlCommand komut2;
         //   SqlCommand komut3;
         //   string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
         //   baglanti = new SqlConnection(baglanStr);

         //   komut = new SqlCommand("INSERT INTO Booking (userID, eventID) VALUES(@userID, @eventID)", baglanti);

         //   int type = 1;

         ////   komut2 = new SqlCommand("SELECT ticketID,ticketPrice FROM Tickets WHERE ticketName='" + DropDownList1.Text + "'", baglanti);
         //   //baglanti.Open();
         //   //SqlDataReader oku = komut.ExecuteReader();

         //   //int val = 2;
         //   //string vql = "1";
         //   //while (oku.Read())
         //   //{
         //   //    val = Convert.ToInt16(oku[0]);
         //   //    vql = oku[1].ToString();
         //   //}

         //   //Session.Add("kadi", kullanici.ToString());

         //   //Session.Timeout = 50;




         //   //baglanti.Close();
         //   //string usernam = Request.Cookies["UserLog"].Value;
         //   //komut2 = new SqlCommand("SELECT userID FROM Users WHERE uName='" + usernam + "'", baglanti);
         //   //baglanti.Open();
         //   //SqlDataReader aku = komut.ExecuteReader();

         //   //string vale = "1";

         //   //while (aku.Read())
         //   //{
         //   //    vale = aku[0].ToString();

         //   //}
         //   //baglanti.Close();

         //   //komut.Parameters.AddWithValue("@userID", vale);
         //   //komut.Parameters.AddWithValue("@eventID", vql);

         //   //komut.Parameters.AddWithValue("@kadi", TextBox4.Text);
         //   //komut.Parameters.AddWithValue("@parola", TextBox2.Text);
         //   //komut.Parameters.AddWithValue("@ticketID", Convert.ToInt16(val));
         //   //komut.Parameters.AddWithValue("@userID", Convert.ToInt16(vale));
         //   //komut.Parameters.AddWithValue("@iDate", DateTime.Now);
         //   //komut.Parameters.AddWithValue("@totalPrice", Convert.ToInt16(vql) * Convert.ToInt16(TextBox8.Text));
         //   //komut.Parameters.AddWithValue("@tQuantity", Convert.ToInt16(val));



         //   baglanti.Open();

         //   komut.ExecuteNonQuery();

         //   baglanti.Close();

        }
    }
}
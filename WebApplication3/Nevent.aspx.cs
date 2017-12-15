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
    public partial class Nevent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
            SqlConnection baglanti;
            SqlCommand komut;

            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);
            komut = new SqlCommand("SELECT * FROM Places ", baglanti);
            baglanti.Open();
            SqlDataReader oku = komut.ExecuteReader();

            //   string val = "1";
           // Label1.Text = "  ";

            int i = 0;
            while (oku.Read())
            {
                //Label1.Text = "<br />" + Label1.Text + oku[i + 1].ToString() + " , " + oku[i + 2].ToString() + " , CAPACİTY: " + oku[i + 3].ToString() + " , OWNER: " + oku[i + 4].ToString() + " , PHONE NUMBER: " + oku[i + 5].ToString() + "<br />";

                DropDownList1.Items.Add(oku[i + 1].ToString());

            }


            baglanti.Close();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
                   }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
         
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            //TextBox17.Text = "";
            //TextBox18.Text = "";
            //TextBox19.Text = "";

            SqlConnection baglanti;
            SqlCommand komut;
            SqlCommand komut2;
            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);
            komut2 = new SqlCommand("SELECT eventID FROM Events WHERE eName='"+TextBox11.Text+"'", baglanti);
            //    komut = new SqlCommand("SELECT * FROM Places ", baglanti);
            //  baglanti.Open();
            baglanti.Open();
            SqlDataReader oku = komut2.ExecuteReader();
           
          //  baglanti.Open();
            string alfa = "";
            while (oku.Read())
            {
                alfa = oku[0].ToString();
                //Label1.Text = "<br />" + Label1.Text + oku[i + 1].ToString() + " , " + oku[i + 2].ToString() + " , CAPACİTY: " + oku[i + 3].ToString() + " , OWNER: " + oku[i + 4].ToString() + " , PHONE NUMBER: " + oku[i + 5].ToString() + "<br />";

            //    DropDownList1.Items.Add(oku[i + 1].ToString());

            }
            //   SqlDataReader oku = komut.ExecuteReader();

            baglanti.Close();
            komut = new SqlCommand("INSERT INTO Tickets (eventID, userID, ticketName, ticketPrice, ticketQuantity) VALUES(@eventID, '2', @ticketName, @ticketPrice, @ticketQuantity)", baglanti);


            komut.Parameters.AddWithValue("@eventID", alfa);
            komut.Parameters.AddWithValue("@ticketName", TextBox17.Text);
            komut.Parameters.AddWithValue("@ticketPrice", TextBox18.Text);
            komut.Parameters.AddWithValue("@ticketQuantity", TextBox19.Text);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();


        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            if (TextBox11.Text == "" || TextBox13.Text == "" || TextBox20.Text == "" || TextBox14.Text == "" || TextBox8.Text == "" )
            {
                Label3.Visible = true;
                Label3.Text ="please fill all the fields";
            }
            else
            { 


            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/resimler/") + FileUpload1.FileName);

                // TextBox1.Text = "dosya ok";

            }

            SqlConnection baglanti;
            SqlCommand komut;
         //   SqlCommand komut2;
            string usernam = Request.Cookies["UserLog"].Value;

           



            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);

            //komut2 = new SqlCommand("SELECT userID FROM Users WHERE uName='" + usernam + "'", baglanti);
            //baglanti.Open();
            //SqlDataReader oku = komut2.ExecuteReader();
            //string alpin = " ";
            //while (oku.Read())
            //{
            //alpin= oku[0].ToString();
            //}

            //baglanti.Close();

            komut = new SqlCommand("INSERT INTO Events (eName, eDate, eLocation, ePicture, eCategory, eDesc, userID) VALUES(@etadi, @etarihi, @etlokantasi, @etresmi, @etTuru, @etBilgisi, '2')", baglanti);


            komut.Parameters.AddWithValue("@etadi", TextBox11.Text);
            komut.Parameters.AddWithValue("@etarihi", TextBox13.Text+" "+TextBox20.Text);
            komut.Parameters.AddWithValue("@etlokantasi", DropDownList1.Text);
            komut.Parameters.AddWithValue("@etresmi", "~/resimler/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@etBilgisi", TextBox8.Text);
            komut.Parameters.AddWithValue("@etTuru", TextBox14.Text);
           // komut.Parameters.AddWithValue("@usadi", alpin);


            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
            }
        }
    }
}
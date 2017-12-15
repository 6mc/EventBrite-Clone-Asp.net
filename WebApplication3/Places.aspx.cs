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
    public partial class Places : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti;
            SqlCommand komut;

            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);
            komut = new SqlCommand("SELECT * FROM Places ", baglanti);
            baglanti.Open();
            SqlDataReader oku = komut.ExecuteReader();

            //   string val = "1";
            Label1.Text = "  ";

            int i = 0;
            while (oku.Read())
            {
                Label1.Text = "<br />" + Label1.Text + oku[i+1].ToString()+" , " +oku[i+2].ToString() + " , CAPACİTY: " + oku[i+3].ToString() + " , OWNER: " + oku[i+4].ToString() + " , PHONE NUMBER: " + oku[i+5].ToString()+ "<br />";



            }


            baglanti.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox11.Text == "" || TextBox12.Text == "" || TextBox13.Text == "" || TextBox14.Text == "" || TextBox15.Text == "")
            {
                Label2.Visible = true;
            }
            else
            { 
            SqlConnection baglanti;
            SqlCommand komut;
         //   SqlCommand komut2;

            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);

            komut = new SqlCommand("INSERT INTO Places (pName, pAdress, pCapacity, pOwner, pOwnerNumber) VALUES(@padi, @padres, @papacity, @psahip, @ptel)", baglanti);

          //  komut2 = new SqlCommand("INSERT INTO Users (uName, Password, uType) VALUES(@kadi, @parola, @tip)", baglanti);
          //  int type = 1;

            //komut2.Parameters.AddWithValue("@kadi", TextBox4.Text);
            //komut2.Parameters.AddWithValue("@parola", TextBox2.Text);
            //komut2.Parameters.AddWithValue("@tip", type);

            komut.Parameters.AddWithValue("@padi", TextBox11.Text);
            komut.Parameters.AddWithValue("@padres", TextBox12.Text);
            komut.Parameters.AddWithValue("@papacity", TextBox13.Text);
            komut.Parameters.AddWithValue("@psahip", TextBox14.Text);
            komut.Parameters.AddWithValue("@ptel", TextBox15.Text);

            baglanti.Open();


          //  komut2.ExecuteNonQuery();
            komut.ExecuteNonQuery();
                Label2.Text = "Place Successfully Saved";
                Label2.Visible = true;
            baglanti.Close();
                // Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "<script>alert('You've Registered Successfully');</script>");

                //    Server.Transfer("login.aspx", true);


            }
        }
    }
}
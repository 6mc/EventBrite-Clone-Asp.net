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
    public partial class support : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection baglanti;
            SqlCommand komut;

            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);


            komut = new SqlCommand("INSERT INTO Users (uName, Password, uType) VALUES(@kadi, @parola, @tip)", baglanti);

            int type = 1;


            //komut.Parameters.AddWithValue("@kadi", TextBox4.Text);
            //komut.Parameters.AddWithValue("@parola", TextBox2.Text);
            //komut.Parameters.AddWithValue("@tip", type);

            baglanti.Open();

            komut.ExecuteNonQuery();

            baglanti.Close(); Server.Transfer("login.aspx", true);
        }
    }
}
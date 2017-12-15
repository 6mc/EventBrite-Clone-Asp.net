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
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Label2.Text = TextBox6.Text;



            SqlConnection baglanti;
            SqlCommand komut;

            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);
            komut = new SqlCommand("SELECT * FROM Events WHERE eName='" + TextBox5.Text + "' OR eLocation='" + TextBox7.Text + "'", baglanti);
            baglanti.Open();
            SqlDataReader oku = komut.ExecuteReader();

            //    string val = "1";

            //while (oku.Read())
            //{
            if (oku.Read())
            {

                //eak;
                Label1.Text = oku[0].ToString();
            }
            else
            {
                Label3.Text = "no events found";
                Label3.Visible = true;
            }
            // }

            baglanti.Close();








        }
    }
}
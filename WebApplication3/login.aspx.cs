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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Response.Cookies["UserLog"].Expires = DateTime.Now.AddDays(-1);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti;
            SqlCommand komut;
            string baglanStr = ConfigurationManager.ConnectionStrings["EventWars"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);

            string KA = TextBox1.Text;
            string PW = TextBox2.Text;
           
            komut = new SqlCommand("SELECT * FROM Users WHERE uName='"+ KA +"' AND Password ='"+PW+"'",baglanti);
            baglanti.Open();
            SqlDataReader oku = komut.ExecuteReader();

           

            if (oku.Read())
            {

                Response.Cookies["UserLog"].Value = TextBox1.Text;
                Response.Cookies["UserLog"].Expires = DateTime.Now.AddDays(1);

                ///        Session.Add("kadi",TextBox1.Text);

                //      Session.Timeout = 50000; 
                //  Label1.Text = "Logged in";
                //    Label1.Visible = true;
                Server.Transfer("Dashboard.aspx", true);
            }

            else
            {
                Label1.Text = "Please Check Your password or username"; Label1.Visible = true;
            }


            //  string kadiiii=KA
            baglanti.Close();
        }
    }
}
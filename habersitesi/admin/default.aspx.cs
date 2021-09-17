using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace habersitesi.admin
{
    public partial class _default : System.Web.UI.Page

    {
        esqbaglantisi baglan = new esqbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {
            Session.Timeout = 120;

            if (txt_kullanici.Text == "betül" & txt_sifre.Text == "123")
            {
                Session.Add("kullaniciAdi", txt_kullanici.Text);
                Response.Redirect("adminpanel.aspx");
            }
            else
            {
                lbl_bilgi.Text = "Kullanıcı Veya Parola Hatalı.";
            }
        }
       

        

        
    }
}
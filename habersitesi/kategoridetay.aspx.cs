using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using habersitesi.admin;
namespace habersitesi
{
    public partial class kategoridetay : System.Web.UI.Page
    {
        esqbaglantisi baglan = new esqbaglantisi();
        string kategoriİD = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriİD = Request.QueryString["kategoriİD"];
            SqlCommand cmdkategori = new SqlCommand("SELECT dbo.Haber.haberBaslik, dbo.Haber.haberOzet, dbo.Haber.haberTarih, dbo.Haber.haberOkunma, dbo.Haber.haberYorumSayisi, dbo.Katagori.kategoriResim, dbo.Katagori.kategoriİD FROM dbo.Haber INNER JOIN dbo.Katagori ON dbo.Haber.kategoriİD = dbo.Katagori.kategoriİD where dbo.Katagori.kategoriİD='"+ kategoriİD +"'", baglan.baglan());
            SqlDataReader drkategori = cmdkategori.ExecuteReader();

            dl_kategori.DataSource = drkategori;
            dl_kategori.DataBind();
        
        
        }
    }
}
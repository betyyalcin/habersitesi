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
    public partial class haberdetay : System.Web.UI.Page
    {
        esqbaglantisi baglan = new esqbaglantisi();
        string haberİD = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            haberİD = Request.QueryString["haberİD"];
            SqlCommand cmdhaber = new SqlCommand("SELECT dbo.Haber.haberBaslik, dbo.Haber.haberIcerik, dbo.Haber.haberİD, dbo.Haber.haberTarih, dbo.Haber.haberOkunma, dbo.Haber.haberYorumSayisi, dbo.Katagori.kategoriResim, dbo.Katagori.kategoriİD FROM dbo.Haber INNER JOIN dbo.Katagori ON dbo.Haber.kategoriİD = dbo.Katagori.kategoriİD where dbo.Haber.haberİD = '"+ haberİD +"'", baglan.baglan());
            SqlDataReader drhaber = cmdhaber.ExecuteReader();

            dl_haber.DataSource = drhaber;
            dl_haber.DataBind();
        }

    }
}
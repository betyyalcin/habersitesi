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
    public partial class _default : System.Web.UI.Page
    {
        esqbaglantisi baglan = new esqbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmdhaber = new SqlCommand("SELECT dbo.Haber.haberBaslik, dbo.Haber.haberOzet, dbo.Haber.haberTarih, dbo.Haber.haberİD, dbo.Haber.haberOkunma, dbo.Haber.haberYorumSayisi, dbo.Katagori.kategoriResim FROM dbo.Haber INNER JOIN dbo.Katagori ON dbo.Haber.kategoriİD = dbo.Katagori.kategoriİD", baglan.baglan());
            SqlDataReader drhabergetir = cmdhaber.ExecuteReader();

            dl_haber.DataSource = drhabergetir;
            dl_haber.DataBind();
        }
    }
}
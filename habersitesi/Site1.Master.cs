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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        esqbaglantisi baglan = new esqbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {

            //slider
            SqlCommand cmdslider = new SqlCommand("select * from Haber", baglan.baglan());
            SqlDataReader drslider = cmdslider.ExecuteReader();

            dl_slider.DataSource = drslider;
            dl_slider.DataBind();

            //duyurular

            SqlCommand cmdduyuru = new SqlCommand("select * from Duyurular",baglan.baglan());
            SqlDataReader drduyuru = cmdduyuru.ExecuteReader();

            dl_duyurular.DataSource = drduyuru;
            dl_duyurular.DataBind();

            //kategoriler.

            SqlCommand cmdkategori = new SqlCommand("select * from Katagori", baglan.baglan());
            SqlDataReader drkategori = cmdkategori.ExecuteReader();

            dl_kategori.DataSource = drkategori;
            dl_kategori.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}
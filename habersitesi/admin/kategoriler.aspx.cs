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
    public partial class kategoriler : System.Web.UI.Page
    {
         esqbaglantisi baglan = new esqbaglantisi();
        string kategoriİD = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriİD = Request.QueryString["kategoriİD"];
            islem = Request.QueryString["islem"];

            if (islem=="sil")
            {
                SqlCommand cmdsil = new SqlCommand("Delete from Katagori where kategoriİD='" + kategoriİD+ "'", baglan.baglan());
                cmdsil.ExecuteNonQuery();
            }

            if (Page.IsPostBack == false)
            {
                pnl_kategoriEkle.Visible = false;
                pnl_kategoriduzenle.Visible = false;

            }
            //kategorileri dataliste çekicem.
            SqlCommand cmdkgetir = new SqlCommand("select * from katagori",baglan.baglan());
            SqlDataReader drkgetir = cmdkgetir.ExecuteReader();

            dl_kategorigetir.DataSource = drkgetir;
            dl_kategorigetir.DataBind();
        }


        protected void btn_eklearti_Click(object sender, EventArgs e)
        {
            pnl_kategoriEkle.Visible = true;
        }

        protected void btn_ekleeksi_Click(object sender, EventArgs e)
        {
            pnl_kategoriEkle.Visible = false;
        }

        protected void txt_adet_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_kategoriekle_Click(object sender, EventArgs e)
        {
            if (fu_kategoriresim.HasFile)
            {
                fu_kategoriresim.SaveAs(Server.MapPath("/kresim/" + fu_kategoriresim.FileName));
                SqlCommand cmdkekle = new SqlCommand("insert into Katagori(kategoriAd,kategoriSira,kategoriResim) values ('"+ txt_kategoriadi.Text +"', '" + txt_sira.Text +"', '/kresim/"+fu_kategoriresim.FileName+"')", baglan.baglan());
                cmdkekle.ExecuteNonQuery();

                Response.Redirect("kategoriler.aspx");
            }
            else
            {
                btn_kategoriekle.Text = "Resi Ekle!";
            }
        }

        protected void btn_kdArti_Click(object sender, EventArgs e)
        {
            pnl_kategoriduzenle.Visible = true;
        }

        protected void btn_kdEksi_Click(object sender, EventArgs e)
        {
            pnl_kategoriduzenle.Visible = false;
        }
    }
}
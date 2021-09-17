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
    public partial class haberler : System.Web.UI.Page
    {
        esqbaglantisi baglan = new esqbaglantisi();
        string haberİD = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            haberİD = Request.QueryString["haberİD"];
            islem = Request.QueryString["islem"]; // sayfalar arası bilgi aktarma

            if (islem == "sil")
            {
                SqlCommand cmdhsil = new SqlCommand("Delete from Haber where haberİD='" + haberİD + "'", baglan.baglan());
                cmdhsil.ExecuteNonQuery();
            }

            if (Page.IsPostBack == false)
            {
                pnl_haberEkle.Visible = false;
                pnl_haberduzenle.Visible = false;
                Pnl_haberDosya.Visible = false;

                // kategorileri getir.
                SqlCommand cmdkgetir = new SqlCommand("Select * from Katagori",baglan.baglan());
                SqlDataReader drkgetir = cmdkgetir.ExecuteReader();

                ddl_kategori.DataTextField = "kategoriAd";
                ddl_kategori.DataTextField = "kategoriİD";

                ddl_kategori.DataSource = drkgetir;
                ddl_kategori.DataBind();

                //haber getir

                SqlCommand cmdhgetir = new SqlCommand("Select * from Haber", baglan.baglan());
                SqlDataReader drhgetir = cmdhgetir.ExecuteReader();

                dl_habergetir.DataSource = drhgetir;
                dl_habergetir.DataBind();

            }
        }

        protected void btn_heeksi_Click(object sender, EventArgs e)
        {
            pnl_haberEkle.Visible = false;
        }

        protected void btn_hearti_Click(object sender, EventArgs e)
        {
            pnl_haberEkle.Visible = true;
        }

        protected void btn_haberekle_Click(object sender, EventArgs e)
        {
            if (fu_slider.HasFile)
            {
                fu_slider.SaveAs(Server.MapPath("/sresim/" + fu_slider.FileName));

                SqlCommand cmdhekle = new SqlCommand("INSERT INTO Haber(haberBaslik,haberOzet,haberIcerik,haberResim,kategoriİD) Values ('"+txt_haberbaslik.Text+"' ,'"+ txt_haberozet.Text +"','"+txt_habericerik +"' ,'/sresim/" + fu_slider.FileName+"' ,'"+ ddl_kategori.SelectedValue +"')", baglan.baglan());
                cmdhekle.ExecuteNonQuery();
                Response.Redirect("haberler");
            }
            else
            {
                btn_haberekle.Text = "Resim Ekle!!";
            }
        }

        protected void btn_hduzenlearti_Click(object sender, EventArgs e)
        {
            pnl_haberduzenle.Visible = true;
        }

        protected void btn_hduzenleeksi_Click(object sender, EventArgs e)
        {
            pnl_haberduzenle.Visible = false;
        }

        protected void btn_darti_Click(object sender, EventArgs e)
        {
            Pnl_haberDosya.Visible = true;
        }

        protected void btn_deksi_Click(object sender, EventArgs e)
        {
            Pnl_haberDosya.Visible = false;
        }

        protected void btn_haberdosyaekle_Click(object sender, EventArgs e)
        {
            if (fu_haberdosya.HasFile)
            {
                fu_haberdosya.SaveAs(Server.MapPath("/dosyalar/" + fu_haberdosya.FileName));
                Response.Redirect("haberler.aspx");
            }
            else
            {

                btn_haberdosyaekle.Text = "Dosya Ekle!!";
            }
        }

        protected void ddl_kategori_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
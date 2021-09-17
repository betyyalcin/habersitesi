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
    public partial class duyurular : System.Web.UI.Page
    {
        esqbaglantisi baglan = new esqbaglantisi();
        string duyurularID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            duyurularID = Request.QueryString["duyurularID"];
            islem = Request.QueryString["islem"];
            if (islem == "sil")
            {
                SqlCommand cmddsil = new SqlCommand("Delete from Duyurular where duyurularID='" + duyurularID + "'",baglan.baglan());
                cmddsil.ExecuteNonQuery();
            }


            if (Page.IsPostBack == false)
            {
                pnl_duyuruEkle.Visible = false;
                pnl_duyuruDuzenle.Visible = false;

                // duyurları getir

                SqlCommand cmddgetir = new SqlCommand("select * from Duyurular", baglan.baglan());
                SqlDataReader drdgetir = cmddgetir.ExecuteReader();

                dl_duyurugetir.DataSource = drdgetir;
                dl_duyurugetir.DataBind();
            
            
            }
        }

        protected void btn_dekleeksi_Click(object sender, EventArgs e)
        {
            pnl_duyuruEkle.Visible = false;
        }

        protected void btn_deklearti_Click(object sender, EventArgs e)
        {
            pnl_duyuruEkle.Visible = true;
        }

        protected void btn_dekle_Click(object sender, EventArgs e)
        {
            SqlCommand cmddekle = new SqlCommand("insert into Duyurular(duyurularBaslik, duyurularIcerik,duyurularResim) Values ('" + txt_dBaslik.Text +"', '" + ckeditor.Text + "','/temalar/duyurular.png')", baglan.baglan());
            cmddekle.ExecuteNonQuery();

            Response.Redirect("duyurular.aspx");
        }

        protected void btn_dArti_Click(object sender, EventArgs e)
        {
            pnl_duyuruDuzenle.Visible = true;
        }

        protected void btn_dEksi_Click(object sender, EventArgs e)
        {
            pnl_duyuruDuzenle.Visible = false;

        }
    }
}
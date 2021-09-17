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
    public partial class kategoriguncelle : System.Web.UI.Page
    {
        esqbaglantisi baglan = new esqbaglantisi();
        string kategoriİD = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriİD = Request.QueryString["kategoriİD"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmdkguncelle = new SqlCommand("select * from katagori where kategoriİD='" + kategoriİD +"'", baglan.baglan());
                SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();


                DataTable dtkguncelle = new DataTable("tablo");
                dtkguncelle.Load(drkguncelle);


                DataRow row = dtkguncelle.Rows[0];
                txt_kadi.Text = row["kategoriAd"].ToString();
                txt_ksira.Text = row["kategoriSira"].ToString();
                txt_kadet.Text = row["kategoriAdet"].ToString();
            }
        }

        protected void btn_kguncelle_Click(object sender, EventArgs e)
        {

            if (fu_kresim.HasFile)
            {
                fu_kresim.SaveAs(Server.MapPath("/kresim/" + fu_kresim.FileName));
                SqlCommand cmdkguncelle=new SqlCommand("Update katagori Set kategoriAd='" + txt_kadi.Text +"', kategoriSira='" + txt_ksira.Text +"', kategoriAdet='"+ txt_kadet.Text +"', kategoriResim='/kresim/"+ fu_kresim.FileName + "' where kategoriİD='" + kategoriİD + "'" , baglan.baglan());
                cmdkguncelle.ExecuteNonQuery();

                Response.Redirect("kategoriler.aspx");
            
            }
            else
            {
                SqlCommand cmdkguncelle = new SqlCommand("Update katagori Set kategoriAd ='" + txt_kadi.Text +"', kategoriSira='" + txt_ksira.Text +"', kategoriAdet ='"+ txt_kadet.Text +"' where kategoriİD='" + kategoriİD +"'" , baglan.baglan());
                cmdkguncelle.ExecuteNonQuery();

                Response.Redirect("kategoriler.aspx");
            }
        }
    }
}
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
    public partial class duyuruguncelle : System.Web.UI.Page
    {
        esqbaglantisi baglan = new esqbaglantisi();
        string duyurularID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            duyurularID = Request.QueryString["duyurularID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmddgetir = new SqlCommand("select * from Duyurular where duyurularID='" + duyurularID +"'",baglan.baglan());
                SqlDataReader drdgetir = cmddgetir.ExecuteReader();

                DataTable dtdgetir = new DataTable();
                dtdgetir.Load(drdgetir);

                DataRow row = dtdgetir.Rows[0];
                txt_duyurubaslik.Text = row["duyurularBaslik"].ToString();
                txt_duyuruicerik.Text = row["duyurularIcerik"].ToString();
            }
        }

        protected void btn_duyuruguncelle_Click(object sender, EventArgs e)
        {
            SqlCommand cmddguncelle = new SqlCommand("update Duyurular Set duyurularBaslik='" + txt_duyurubaslik.Text + "', duyurularIcerik='" + txt_duyuruicerik.Text + "' where duyurularID='" + duyurularID + "'", baglan.baglan());
            cmddguncelle.ExecuteNonQuery();

            Response.Redirect("duyurular.aspx");
        }
    }
}
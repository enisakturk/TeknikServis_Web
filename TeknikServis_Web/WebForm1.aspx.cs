using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeknikServis_Web.Entity;

namespace TeknikServis_Web
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DbTeknikServisEntities db = new DbTeknikServisEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var degerler = db.TBLURUNTAKIP.ToList();
            //Repeater1.DataSource = degerler; ---veri kaynağı olarak deger gönder
            //Repeater1.DataBind(); ---işlemi gerçekleştir
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            var degerler=db.TBLURUNTAKIP.Where(x => x.SERINO == TextBox1.Text);
            Repeater1.DataSource = degerler.ToList();
            Repeater1.DataBind();
        }
    }
}
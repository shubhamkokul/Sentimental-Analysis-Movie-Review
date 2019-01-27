using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void ScrapPage()
    {
        //var getHtmlWeb = new HtmlWeb();
        //var document = getHtmlWeb.Load(TextBox1.Text.Trim());
        //Literal Literal1 = new Literal();
        //Literal1.ID = "Literal1";
        //foreach (HtmlNode para in document.DocumentNode.SelectNodes("//div[@id='tn15content']//p"))
        //{
        //    Literal1.Text += String.Format(@"<p>{0}</p>", para.InnerText);
        //}
        //Panel1.Controls.Add(Literal1);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ScrapPage();
    }
}
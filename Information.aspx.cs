using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using HtmlAgilityPack;
using java.io;
using edu.stanford.nlp.tagger.maxent;
using edu.stanford.nlp.ling;
using com.sun.tools.javac.util;
using java.util;



public partial class _Default : System.Web.UI.Page
{
    String posstring;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //public const string Model =
    //    @"E:\Project 2014-2015\Sentiment Analysis For Movies Review\Movie_Review_app\Bin\english-caseless-left3words-distsim.tagger";

    //private void TagReader(Reader reader)
    //{
    //    var tagger = new MaxentTagger(Model);
    //    //List obj = (List)MaxentTagger.tokenizeText(reader);
    //    foreach (ArrayList sentence in MaxentTagger.tokenizeText(reader).toArray())
    //    {
    //        var tSentence = tagger.tagSentence(sentence);
    //        System.Console.WriteLine(Sentence.listToString(tSentence, false));
    //        posstring = (Sentence.listToString(tSentence, false));
    //        System.Console.WriteLine();
    //    }

    //}

    protected void Button1_Click(object sender, EventArgs e)
    {
        string htmlCode;

        using (WebClient client = new WebClient())
        {
            htmlCode = client.DownloadString("http://www.omdbapi.com/?t=" + TextBox1.Text + "");
        }
        JObject obj = JObject.Parse(htmlCode);
        JArray arr = new JArray(obj);
        if ("False" == arr[0]["Response"].ToString())
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "sas", "<script> alert('Incorrect Movie Name or Movie Not Found');</script>", false);
        }
        else
        {
            var result = arr[0]["imdbID"];
            string uri = String.Format("http://www.imdb.com/title/{0}/reviews", result);
            var getHtmlWeb = new HtmlWeb();
            var document = getHtmlWeb.Load(uri);
            Literal Literal1 = new Literal();
            Literal1.ID = "Literal1";
            foreach (HtmlNode para in document.DocumentNode.SelectNodes("//div[@id='tn15content']//p"))
            {
                int paracount = document.DocumentNode.SelectNodes("//div[@id='tn15content']//p").Count;
                Literal1.Text += String.Format(@"<p>{0}</p>", para.InnerText);
            }
            
            Panel1.Controls.Add(Literal1);
            TextBox2.Text = Literal1.Text;
            string v = TextBox2.Text.Replace("<p>", " ");

            v = v.Replace("</p>", " ");
            v = Regex.Replace(v, "[^a-zA-Z0-9_]+", " ");
            TextBox2.Text = v;
        }

    }


    protected void btnPos_Click(object sender, EventArgs e)
    {
        
    }
}

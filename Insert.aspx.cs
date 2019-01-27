using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;

public partial class Insert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int counter = 0;
        string line;
        // Create Connection Object
        SqlConnection objCon = new SqlConnection("Data Source=.;Initial Catalog=sentiment_analysis;Integrated Security=True");


        // POS	ID	PosScore	NegScore	SynsetTerms	Gloss
        // Read the file and display it line by line.
        System.IO.StreamReader file =
            new System.IO.StreamReader(Server.MapPath("~/Text/SentiWordNet_3.0.0_20130122.txt"));
        while ((line = file.ReadLine()) != null)
        {
            // Split line with tab for getting the cell values
            string[] splitLineCol = line.Split('\t');
            // Add values to db
            if (counter > 0)
            {
                using (SqlCommand obj = new SqlCommand("insert into Sentiwordnet(POS,ID,PosScore,NegScore,SynsetTerms) values(@POS,@ID,@PosScore,@NegScore,@SynsetTerms)",objCon))
                {
                    obj.CommandType = System.Data.CommandType.Text;
                    obj.Parameters.Add("@POS", System.Data.SqlDbType.VarChar).Value = splitLineCol[0];
                    obj.Parameters.Add("@ID", System.Data.SqlDbType.VarChar).Value = splitLineCol[1];
                    obj.Parameters.Add("@PosScore", System.Data.SqlDbType.VarChar).Value = splitLineCol[2];
                    obj.Parameters.Add("@NegScore", System.Data.SqlDbType.VarChar).Value = splitLineCol[3];
                    obj.Parameters.Add("@SynsetTerms", System.Data.SqlDbType.VarChar).Value = splitLineCol[4].Split('#').GetValue(0).ToString();
                    // open Connection
                    objCon.Open();
                    // Uncomment bellow line
                    obj.ExecuteNonQuery();
                    objCon.Close();
                    // Close Connection
                }
            }
            counter++;
        }

        file.Close();
    }

}
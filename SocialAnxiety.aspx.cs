using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Google.Apis.Requests.BatchRequest;
using System.Xml;


namespace licenta_test
{
    public partial class SocialAnxiety : System.Web.UI.Page
    {

        private int[] selectedOptions = new int[10];
        protected void Page_Load(object sender, EventArgs e)
        {
            StartNewQuiz();

        }
        protected void StartNewQuiz()
        {
            if (Session["Index"] == null)
            {
                Session["Index"] = 0;
            }
            if (Session["Points"] == null)
            {
                Session["Points"] = 0;
            }

            int Index = (int)Session["Index"];
            LoadQuestionsAndAnswers(Index);
        }
        protected void LoadQuestionsAndAnswers(int Index)
        {
            string xmlFilePath = @"C:\Users\User\Desktop\website-licenta\Q_SocialAnx.xml";
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(xmlFilePath);

            XmlNodeList questionNodes = xmlDoc.SelectNodes("//question");

            if (questionNodes != null && Index < questionNodes.Count)
            {
                XmlNode questionNode = questionNodes[Index];

                string questionText = questionNode.SelectSingleNode("text").InnerText;
                XmlNodeList optionNodes = questionNode.SelectNodes("options/option");

                if (optionNodes.Count == 4)
                {
                    question.InnerHtml = questionText;

                    a_text.InnerText = optionNodes[0].InnerText;

                    b_text.InnerText = optionNodes[1].InnerText;

                    c_text.InnerText = optionNodes[2].InnerText;

                    d_text.InnerText = optionNodes[3].InnerText;

                    submit.Visible = (Index == questionNodes.Count - 1) ? true : false;
                    next.Visible = (Index != questionNodes.Count - 1) ? true : false;
                }
            }
        }

        protected void ClearOptions()
        {
            a.Checked = false;
            b.Checked = false;
            c.Checked = false;
            d.Checked = false;
        }


        protected void submit_Click(object sender, EventArgs e)
        {
            int Index = (int)Session["Index"];
            int points = (int)Session["Points"];

            if (a.Checked)
            {
                points += 0;
            }
            else if (b.Checked)
            {
                points += 3;
            }
            else if (c.Checked)
            {
                points += 7;
            }
            else if (d.Checked)
            {
                points += 10;
            }

            Session.Remove("Index");
            Session.Remove("Points");

            if (!string.IsNullOrEmpty(Request.QueryString["username"]))
            {
                string username = Request.QueryString["username"];
                Response.Redirect("EndQuiz.aspx?username=" + username + "&points=" + points + "&testType=SocialAnxiety");
            }
            else
            {
                Response.Redirect("EndQuiz.aspx?username=" + null + "&points=" + points + "&testType=SocialAnxiety");
            }

            selectedOptions = new int[10];
            selectedOptions = new int[10];

        }

        protected void next_Click(object sender, EventArgs e)
        {
            int Index = (int)Session["Index"];
            int points = (int)Session["Points"];
            if (a.Checked)
            {
                points += 0;
            }
            else if (b.Checked)
            {
                points += 3;
            }
            else if (c.Checked)
            {
                points += 7;
            }
            else if (d.Checked)
            {
                points += 10;
            }

            Index++;
            Session["Index"] = Index;
            Session["Points"] = points;
            ClearOptions();
            if (Index < 10)
            {
                LoadQuestionsAndAnswers(Index);
            }
        }
    }
}
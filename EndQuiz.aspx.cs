using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace licenta_test
{
    public partial class EndQuiz : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "a5wIauZVZA8AuMsrk92rH1zuGPYN23GcgnwUArjE",
            BasePath = "https://licenta-f7244-default-rtdb.firebaseio.com/"
        };
        IFirebaseClient client;
        protected void Page_Load(object sender, EventArgs e)
        {
            string url = HttpContext.Current.Request.Url.ToString();
            var extractedparamas = HttpUtility.ParseQueryString(new Uri(url).Query);

            string points = extractedparamas["points"];
            scoreLiteral.Text = points.ToString();

        }
      
        protected async void save_Click(object sender, EventArgs e)
        {
            string url = HttpContext.Current.Request.Url.ToString();
            var extractedparamas = HttpUtility.ParseQueryString(new Uri(url).Query);

            string username = extractedparamas["username"];
            string points = extractedparamas["points"];
            string type = extractedparamas["testType"];
            scoreLiteral.Text = points.ToString();
            string lev = null;
            if (username!=null)
            {
                if (scoreLiteral.Text != null)
                {

                        IFirebaseClient client = new FireSharp.FirebaseClient(config);
                        FirebaseResponse res = client.Get("Users/" + username);
                        User existinguser = res.ResultAs<User>();


                    if (existinguser != null)
                    {
                        string key = DateTime.Now.Date.ToShortDateString().Replace("/", "") + "-" + DateTime.Now.ToShortTimeString();

                        FirebaseResponse lastResultIndexResponse = await client.GetAsync("Results/" + username + "/"+ key);
                       
                        
                        if(int.Parse(scoreLiteral.Text) <= 20)
                        {
                            lev ="Normal";
                        }
                        else if(int.Parse(scoreLiteral.Text) > 20 && int.Parse(scoreLiteral.Text) <=50)
                        {
                            lev ="Low";
                        }
                        else if (int.Parse(scoreLiteral.Text) > 50 && int.Parse(scoreLiteral.Text) <= 80)
                        {
                            lev ="Moderate";
                        }
                        else if (int.Parse(scoreLiteral.Text) > 80 && int.Parse(scoreLiteral.Text) <= 100)
                        {
                            lev ="High";
                        }
                        Result newResult = new Result
                        {
                            Type= type.ToString(),
                            Points = scoreLiteral.Text,  
                            Level = lev.ToString(),
                            Date= DateTime.Now.Date.ToShortDateString(),
                            Time= DateTime.Now.ToShortTimeString()

                        };

                        SetResponse saveResponse = await client.SetAsync("Results/" + existinguser.Username.ToString() + "/" + key, newResult);

                        if (saveResponse.StatusCode == System.Net.HttpStatusCode.OK)
                        {                      
                          
                           
                                string errorSavingData = "alert(\"Data has been saved successfully!\");";
                                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", errorSavingData, true);
                           
                        }
                        else
                        {
                            string alert = "alert(\"Data could not be saved!\");";
                            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", alert, true);
                        }
                    }
                            
                }
            }
                    
        }
    }
            
}

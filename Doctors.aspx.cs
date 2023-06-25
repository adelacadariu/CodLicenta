using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;


namespace licenta_test
{
    public partial class Doctors : System.Web.UI.Page
    {
        IFirebaseConfig config_ps = new FirebaseConfig
        {
            AuthSecret = "a5wIauZVZA8AuMsrk92rH1zuGPYN23GcgnwUArjE",
            BasePath = "https://licenta-f7244-default-rtdb.firebaseio.com/"
        };
        IFirebaseClient client_ps;
        protected void Page_Load(object sender, EventArgs e)
        {
            client_ps = new FireSharp.FirebaseClient(config_ps);
            if (client_ps != null)
            {
                
                SavePsychologists();
            }
            else
            {
                string alertDB = "alert(\"Conexiunea a eșuat!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", alertDB, true);
            }

        }

        protected async void SavePsychologists()
        {
            for (int i = 1; i <= 6; i++)
            {
                string panelId = "panel" + i.ToString();
                Panel panel = FindControl(panelId) as Panel;

                if (panel != null)
                {
                    Image image = panel.FindControl("image" + i.ToString()) as Image;
                    Label lblName = panel.FindControl("lblName" + i.ToString()) as Label;
                    Label lblEmail = panel.FindControl("lblEmail" + i.ToString()) as Label;

                    if (!string.IsNullOrEmpty(image.ImageUrl.ToString()) && !string.IsNullOrEmpty(lblName.Text.ToString()) && !string.IsNullOrEmpty(lblEmail.Text.ToString()))
                    {
                        FirebaseResponse response = await client_ps.GetAsync("Psychologists/" + lblName.Text.ToString());
                        Psychologist existingPsychologist = response.ResultAs<Psychologist>();

                        if (existingPsychologist == null)
                        {
                            Psychologist newPsychologist = new Psychologist
                            {
                                Name = lblName.Text.ToString(),
                                ImgUrl = image.ImageUrl.ToString(),
                                Email = lblEmail.Text.ToString(),
                                // Alte proprietăți ale utilizatorului pot fi adăugate aici
                            };

                            SetResponse saveResponse = await client_ps.SetAsync("Psychologists/" + lblName.Text.ToString(), newPsychologist);
                        }
                    }
                }
            }
        }
    }
}


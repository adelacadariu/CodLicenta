using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace licenta_test
{
    public partial class Index : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "a5wIauZVZA8AuMsrk92rH1zuGPYN23GcgnwUArjE",
            BasePath = "https://licenta-f7244-default-rtdb.firebaseio.com/"
        };
        IFirebaseClient client;

        protected async void Page_Load(object sender, EventArgs e)
        {
           
            client = new FireSharp.FirebaseClient(config);
            if (client != null)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["username"]))
                {
                    string username = Request.QueryString["username"];

                    IFirebaseClient client = new FireSharp.FirebaseClient(config);

                    // Accesați baza de date Firebase pentru a obține numele și adresa de email corespunzătoare username-ului
                    FirebaseResponse response = client.Get("Users/" + username);
                    User existinguser = response.ResultAs<User>();

                    // Verificați dacă s-a găsit un psiholog corespunzător în baza de date Firebase
                    if (existinguser != null)
                    {
                        // Setează valorile în controalele TextBox din formular
                        Name.Text = existinguser.Name.ToString(); ;
                        Email.Text = existinguser.Email.ToString();
                    }

                }
                else
                {
                    

                }
                LoadPsychologists();
            }
            else
            {
                string alertDB = "alert(\"Conexiunea a eșuat!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", alertDB, true);
            }
        }
        protected async void LoadPsychologists()
        {
            List<string> psychologistNames = await GetPsychologistNamesFromFirebase();

            foreach (string name in psychologistNames)
            {
                dropdownList.Items.Add(new ListItem(name));
            }
        }

        protected async Task<List<string>> GetPsychologistNamesFromFirebase()
        {
            
            IFirebaseClient client = new FireSharp.FirebaseClient(config);

            FirebaseResponse response = await client.GetAsync("Psychologists");
            Dictionary<string, Psychologist> psychologistsDict = response.ResultAs<Dictionary<string, Psychologist>>();

            List<string> psychologistNames = psychologistsDict.Values.Select(p => p.Name.ToString()).ToList();

            return psychologistNames;
        }
        protected async void submit_Click(object sender, EventArgs e)
        {
            
            if (!string.IsNullOrEmpty(Name.Text) && !string.IsNullOrEmpty(Email.Text) && !string.IsNullOrEmpty(Phone.Text) && !string.IsNullOrEmpty(book_date.Text) && !string.IsNullOrEmpty(book_time.Text) && !string.IsNullOrEmpty(dropdownList.SelectedValue.ToString()))
            {
                FirebaseResponse response = await client.GetAsync("Appointments/" + Name.Text);
                App existingApp = response.ResultAs<App>();

                if (existingApp == null || (existingApp.Date.ToString()!=book_date.Text && existingApp.Time.ToString()!=book_time.Text))
                {
                    App newApp = new App
                    {
                        Name = Name.Text,
                        Phone = Phone.Text,
                        Email = Email.Text,
                        Date= book_date.Text,
                        Time = book_time.Text,
                        Doctor = dropdownList.SelectedValue.ToString(),
                        // Alte proprietăți ale utilizatorului pot fi adăugate aici
                    };
                    if (ValidateEmailFormat(Email.Text)) {
                        SetResponse saveResponse = await client.SetAsync("Appointments/" + Name.Text, newApp); 
                    }
                    if (response.StatusCode == System.Net.HttpStatusCode.OK)
                    {
                        // Rezervarea a fost salvată cu succes
                        string alert = "alert(\"Appointment was done successfully!\");";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", alert, true);

                        // Resetați formularul
                        Name.Text = string.Empty;
                        Email.Text = string.Empty;
                        Phone.Text = string.Empty;
                        book_date.Text = string.Empty;
                        book_time.Text = string.Empty;
                        dropdownList.SelectedIndex = 0;
                    }
                    else
                    {
                        // Rezervarea a eșuat
                        string alert = "alert(\"Appointment failed!\");";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", alert, true);
                    }





                }
                else
                {
                    // Programarea există deja
                    string existingUserScript = "alert(\"You already have an appointment on the selected date and time!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", existingUserScript, true);
                }
            }
            else
            {
                // Câmpurile trebuie completate
                string emptyFieldsScript = "alert(\"Please fill out all fields!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", emptyFieldsScript, true);
            }


        }
        protected bool ValidateEmailFormat(string email)
        {
            // Expresie regulată pentru validarea formatului adresei de email
            string emailPattern = @"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$";

            // Verifică dacă adresa de email respectă formatul specificat
            bool isValid = Regex.IsMatch(email, emailPattern);

            return isValid;
        }
    }
}
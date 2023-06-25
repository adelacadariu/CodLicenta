using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FireSharp.Config;
using FireSharp.Interfaces;
using System.Data;
using FireSharp.Response;
using licenta_test;
using System.Net.PeerToPeer;
using System.Net;
using System.Text.RegularExpressions;

namespace licenta_test
{
    public partial class Register : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "a5wIauZVZA8AuMsrk92rH1zuGPYN23GcgnwUArjE",
            BasePath = "https://licenta-f7244-default-rtdb.firebaseio.com/"
        };
        IFirebaseClient client;
        //pt afisarea in GridView a datelor
        DataTable dt = new DataTable();
        ///conectarea la Baza de date
        protected void Page_Load(object sender, EventArgs e)
        {
            client = new FireSharp.FirebaseClient(config);
            if (client != null)
                FirebaseConnection2.Text = "Conexiunea la baza de date a fost realizata cu succes!";
            else
                FirebaseConnection2.Text = "Conexiune esuata.";
            
        }

        protected async void bRegister_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Username2.Text) && !string.IsNullOrEmpty(Password2.Text) && !string.IsNullOrEmpty(Email.Text))
            {
                FirebaseResponse response = await client.GetAsync("Users/" + Username2.Text);
                User existingUser = response.ResultAs<User>();

                if (existingUser == null)
                {
                    User newUser = new User
                    {
                        Username = Username2.Text,
                        Parola = Password2.Text,
                        Email = Email.Text,
                        Name = Name.Text,
                        Role= "admin"
                    };
                    if (ValidateEmailFormat(Email.Text))
                    {
                        SetResponse saveResponse = await client.SetAsync("Users/" + Username2.Text, newUser);
                        if (saveResponse.StatusCode == HttpStatusCode.OK)
                        {
                            Response.Redirect("Index.aspx?username=" + Username2.Text);
                        }
                        else
                        {
                            string saveErrorScript = "alert(\"Error saving data!\");";
                            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", saveErrorScript, true);
                        }
                    }
                    else
                    {
                        string invalidEmail = "alert(\"Invalid email!\");";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", invalidEmail, true);
                    }  
                }
                else
                {
                    string existingUserScript = "alert(\"User already exists!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", existingUserScript, true);
                }
            }
            else
            {
                // Câmpurile utilizator, email și parolă trebuie completate
                string emptyFieldsScript = "alert(\"Vă rugăm completați utilizatorul, email-ul și parola!\");";
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
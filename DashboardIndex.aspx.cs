using FireSharp.Config;
using FireSharp.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.PeerToPeer;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace licenta_test
{
    public partial class DasboardIndex : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "a5wIauZVZA8AuMsrk92rH1zuGPYN23GcgnwUArjE",
            BasePath = "https://licenta-f7244-default-rtdb.firebaseio.com/"
        };
        IFirebaseClient client;
        protected void Page_Load(object sender, EventArgs e)
        {
            client = new FireSharp.FirebaseClient(config);
            string username = Request.QueryString["username"];
            if (!IsAuthenticated())
            {
                Response.Redirect("Login.aspx?username=" + username);
            }
            LoadPastFutureAppointments(username);
            CountMessages(username);
            LoadUsername(username);
            CountQuizzez(username);
        }
        protected void CountQuizzez(string username)
        {
            int resultsNR = 0;
            var userResponse = client.Get("Users/" + username);
            var user = userResponse.ResultAs<User>();
            if (user != null)
            {

                var response = client.Get("Results/" + username);
                var results = response.ResultAs<Dictionary<string, Result>>();
                foreach (var result in results)
                {
                    resultsNR++;
                }
            }
            quizzesLiteral.Text = resultsNR.ToString();
        }
    

        protected void CountMessages(string username)
        {
            int messagesNr = 0;
            var userResponse = client.Get("Users/" + username);
            var user = userResponse.ResultAs<User>();
            if (user != null)
            {
                var response = client.Get("Messages");
                var messages = response.ResultAs<Dictionary<string, Message>>();
                foreach (var message in messages)
                {
                    if(message.Value.ToEmail.ToString()==user.Email.ToString())
                    {
                        messagesNr++;
                    }
                }
                messagesLiteral.Text = messagesNr.ToString();
            }
        }
        protected void LoadPastFutureAppointments(string username)
        {
            int pastApp = 0, futureApp=0;
            var userResponse = client.Get("Users/" + username);
            var user = userResponse.ResultAs<User>();
            if (user != null)
            {
                var response = client.Get("Appointments/"+ user.Username.ToString());
                var appointments = response.ResultAs<Dictionary<string, App>>();
                
                // Parcurgeți fiecare înregistrare din colecție și adăugați datele în tabel
                foreach (var appointment in appointments)
                {
                    var dateTimeComparation = CompareDateTime(appointment.Value.Date.ToString(), appointment.Value.Time.ToString());
                    if (appointment.Value.Email.ToString() == user.Email.ToString() && dateTimeComparation >0)
                    {
                        pastApp++;
                    }
                    else if (appointment.Value.Email.ToString() == user.Email.ToString() && dateTimeComparation <0)
                        futureApp++;
                }
                pastAppLiteral.Text = pastApp.ToString();
                futureAppLiteral.Text = futureApp.ToString();
            }
        }
        public int CompareDateTime(string date, string time)
        {
            DateTime specifiedDateTime = DateTime.Parse(date + " " + time);
            DateTime currentDateTime = DateTime.Now;
            DateTime appDate = DateTime.Parse(date);
            DateTime appTime = DateTime.Parse(time);
             return currentDateTime.CompareTo(specifiedDateTime);
           
        }

        public DateTime CombineDateTime(DateTime date, TimeSpan time)
        {
            DateTime combinedDateTime = date.Date + time;
            return combinedDateTime;
        }


        protected void LoadUsername(string username)
        {
            var userResponse = client.Get("Users/" + username);
            var user = userResponse.ResultAs<User>();
            if (user != null)
            {
                nameLiteral.Text = user.Name.ToString();
            }
        }
        private bool IsAuthenticated()
        {
            string username = Request.QueryString["username"];
            // Verifică dacă username-ul există și nu este null
            if (!string.IsNullOrEmpty(username))
            {
                // Verifică aici în baza de date sau în alt sistem dacă username-ul este valid
                // Returnează true dacă username-ul este valid și autentificarea este reușită
                return true;
            }
            return false;
        }
    }
}
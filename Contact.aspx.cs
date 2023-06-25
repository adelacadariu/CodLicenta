using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using Newtonsoft.Json.Linq;
using System.IO;

namespace licenta_test
{
    public partial class Contact : System.Web.UI.Page
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
            if (client != null)
            {

            }
        }



        protected async void sendMessageButton_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(nameTextBox.Text) && !string.IsNullOrEmpty(TextBoxToEmail.ToString()) && !string.IsNullOrEmpty(EmailFromTextBox.ToString()) && !string.IsNullOrEmpty(messageTextBox.Text) && !string.IsNullOrEmpty(subjectTextBox.Text))
            {
                FirebaseResponse response = await client.GetAsync("Messages/" + nameTextBox.Text);
                Message existingMess = response.ResultAs<Message>();

                if (existingMess == null || (existingMess.Subject.ToString() != subjectTextBox.Text && existingMess.Mess.ToString() != messageTextBox.Text))
                {
                    Message newMess = new Message
                    {
                        Name = nameTextBox.Text,
                        ToEmail = TextBoxToEmail.Text,
                        FromEmail = EmailFromTextBox.Text,
                        Subject = subjectTextBox.Text,
                        Mess = messageTextBox.Text,

                        // Alte proprietăți ale utilizatorului pot fi adăugate aici
                    };
                    if (ValidateEmailFormat(TextBoxToEmail.Text) && ValidateEmailFormat(EmailFromTextBox.Text))
                    {
                        //SendEmail(nameTextBox.Text, TextBoxToEmail.Text, EmailFromTextBox.Text, subjectTextBox.Text, messageTextBox.Text);

                        SetResponse saveResponse = await client.SetAsync("Messages/" + nameTextBox.Text, newMess);
                    }
                    if (response.StatusCode == System.Net.HttpStatusCode.OK)
                    {
                        // Rezervarea a fost salvată cu succes
                        string alert = "alert(\"Message saved successfully!\");";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", alert, true);

                        // Resetați formularul
                        nameTextBox.Text = string.Empty;
                        TextBoxToEmail.Text = string.Empty;
                        EmailFromTextBox.Text = string.Empty;
                        subjectTextBox.Text = string.Empty;
                        messageTextBox.Text = string.Empty;
                    }
                    else
                    {
                        // Mesajul a eșuat
                        string alert = "alert(\"Sending the message failed!\");";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", alert, true);
                    }
                }
                else
                {
                    // Programarea există deja
                    string existingUserScript = "alert(\"You have already sent the same message to the same email address!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", existingUserScript, true);
                }
            }
            else
            {
                // Câmpurile trebuie completate
                string emptyFieldsScript = "alert(\"Vă rugăm completați toate campurile!\");";
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
        protected void SendEmail(string senderName, string senderEmail, string recipientEmail, string subject, string message)
        {

            var fromAddress = new MailAddress("adelamariacadariu@gmail.com", "Adela Cadariu");
            var toAddress = new MailAddress("adelacadariu@yahoo.com", "Adela");
            const string fromPassword = "";
            string subj = subject;
            string body = message;
            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                Timeout = 20000
            };
            using (var mess = new MailMessage(fromAddress, toAddress)
            {
                Subject = subj,
                Body = body
            })
            {
                smtp.Send(mess);
            }
        } 
    }         
}
   


            
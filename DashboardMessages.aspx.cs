using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.PeerToPeer;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace licenta_test
{
    public partial class DashboardMessages : System.Web.UI.Page
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
            string mail=GetEmailForUsername(username);
            LoadDataFromFirebase(mail);
            LoadUsername(username);
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
        public string GetEmailForUsername(string username)
        {
            var userResponse = client.Get("Users/" + username);
            var user = userResponse.ResultAs<User>();
            if (user != null && user.Email != null)
            {
                    return user.Email.ToString();
            }
                return null;
        }
        
        protected  void LoadDataFromFirebase(string mail)
        {
            var response = client.Get("Messages");
            var messages = response.ResultAs<Dictionary<string, Message>>();

            foreach (var message in messages)
            {
                if (message.Value.ToEmail.ToString() == mail)
                {
                    var name = message.Value.Name;
                    var from = message.Value.FromEmail;
                    var subject = message.Value.Subject;
                    var mess = message.Value.Mess;

                    var row = new TableRow();
                    row.Cells.Add(new TableCell() { Text = name.ToString() });
                    row.Cells.Add(new TableCell() { Text = from.ToString() });
                    row.Cells.Add(new TableCell() { Text = subject.ToString() });
                    row.Cells.Add(new TableCell() { Text = mess.ToString() });

                    messagesTable.Rows.Add(row);
                }
            }
        } 
    }
}
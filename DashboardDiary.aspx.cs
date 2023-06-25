using FireSharp.Config;
using FireSharp.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace licenta_test
{
    public partial class DashboardDiary : System.Web.UI.Page
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
            LoadDataFromFirebase(username);
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
        protected void LoadDataFromFirebase(string username)
        {
            var response = client.Get($"Journals/{username}/");
            var entries = response.ResultAs<Dictionary<string, Journal>>();
            int index = 1;
            foreach (var entry in entries)
            {
                var id = index;
                var title = entry.Value.Title;
                var text = entry.Value.Text;

                var row = new TableRow();
                row.Cells.Add(new TableCell() { Text = id.ToString() });
                row.Cells.Add(new TableCell() { Text = title });
                row.Cells.Add(new TableCell() { Text = text });

                messagesTable.Rows.Add(row);
                index++;
            }
        }
    }
}
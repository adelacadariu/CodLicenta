using FireSharp.Config;
using FireSharp.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.PeerToPeer;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace licenta_test
{
    public partial class DashboardQuizzes : System.Web.UI.Page
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
            GetUser(username);
            LoadResults();
          
        }
        protected void LoadResults()
        {
            var config = new FirebaseConfig
            {
                AuthSecret = "a5wIauZVZA8AuMsrk92rH1zuGPYN23GcgnwUArjE",
                BasePath = "https://licenta-f7244-default-rtdb.firebaseio.com/"
            };
            var client = new FireSharp.FirebaseClient(config);

            string username = Request.QueryString["username"];
            var userResponse = client.Get("Users/" + username);
            var user = userResponse.ResultAs<User>();
            var response = client.Get($"Results/{username}/");
            var results = response.ResultAs<Dictionary<string, Result>>();
            var id=1;
            foreach (var result in results)
            {
                
                var points = result.Value.Points;
                var type = result.Value.Type;
                var level = result.Value.Level ;
                var date = result.Value.Date;
                var time = result.Value.Time;
                
                var row = new TableRow();
                row.Cells.Add(new TableCell() { Text = id.ToString() });
                row.Cells.Add(new TableCell() { Text = points.ToString() });
                row.Cells.Add(new TableCell() { Text = level.ToString() });
                row.Cells.Add(new TableCell() { Text = type.ToString() });
                row.Cells.Add(new TableCell() { Text = date.ToString() });
                row.Cells.Add(new TableCell() { Text = time.ToString() });
                var selectCell = new TableCell();
                var checkBox = new CheckBox();

                selectCell.Controls.Add(checkBox);
                row.Cells.Add(selectCell);
                resultsTable.Rows.Add(row);
                id++;
            }

        }
        protected void GetUser(string username)
        {
            var userResponse = client.Get("Users/" + username);
            var user = userResponse.ResultAs<User>();
            if (user != null)
            {
                nameLiteral.Text = user.Name.ToString();
            }
        }

        protected async void removeButton_Click(object sender, EventArgs e)
        {
            var config = new FirebaseConfig
            {
                AuthSecret = "a5wIauZVZA8AuMsrk92rH1zuGPYN23GcgnwUArjE",
                BasePath = "https://licenta-f7244-default-rtdb.firebaseio.com/"
            };
            var client = new FireSharp.FirebaseClient(config);
            int rowsCount = resultsTable.Rows.Count - 1;
            for (int i = rowsCount - 1; i >= 0; i--)
            {
                TableRow row = resultsTable.Rows[i];
                TableCell selectCell = row.Cells[row.Cells.Count - 1];

                if (selectCell.Controls.Count > 0 && selectCell.Controls[0] is CheckBox checkBox && checkBox.Checked)
                {
                    string username = Request.QueryString["username"];
                    var userResponse = client.Get("Users/" + username);
                    var user = userResponse.ResultAs<User>();

                    string id = row.Cells[4].Text.Replace("/", "") + "-" + row.Cells[5].Text;
                    await client.DeleteAsync("Results/" + user.Username.ToString() + "/" + id);
                    resultsTable.Rows.Remove(row);
                }

            }

        }
    }
}
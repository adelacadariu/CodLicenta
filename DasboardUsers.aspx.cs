using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.PeerToPeer;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace licenta_test
{
    public partial class DasboardUsers : System.Web.UI.Page
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
            LoadAllUsers();
            
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
        protected void LoadAllUsers()
        {
            var config = new FirebaseConfig
            {
                AuthSecret = "a5wIauZVZA8AuMsrk92rH1zuGPYN23GcgnwUArjE",
                BasePath = "https://licenta-f7244-default-rtdb.firebaseio.com/"
            };
            var client = new FireSharp.FirebaseClient(config);
           
            var response = client.Get("Users");
            var users = response.ResultAs<Dictionary<string, User>>();

            foreach (var user in users)
            {
                var name = user.Value.Name;
                var email = user.Value.Email;
                var username = user.Value.Username;
                var password = user.Value.Parola;
                var role = user.Value.Role;

                var row = new TableRow();
                row.Cells.Add(new TableCell() { Text = name.ToString() });
                row.Cells.Add(new TableCell() { Text = email.ToString() });
                row.Cells.Add(new TableCell() { Text = username.ToString() });
                row.Cells.Add(new TableCell() { Text = password.ToString() });
                row.Cells.Add(new TableCell() { Text = role.ToString() });

                var selectCell = new TableCell();
                var checkBox = new CheckBox();

                selectCell.Controls.Add(checkBox);
                row.Cells.Add(selectCell);
                usersTable.Rows.Add(row);
            }
            if (Session["RowsNr"] == null)
            {
                Session["RowNr"] = usersTable.Rows.Count-1;
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
            int rowsCount = usersTable.Rows.Count - 1;
            for (int i = rowsCount - 1; i >= 0; i--)
            {
                TableRow row = usersTable.Rows[i];
                TableCell selectCell = row.Cells[row.Cells.Count - 1];

                if (selectCell.Controls.Count > 0 && selectCell.Controls[0] is CheckBox checkBox && checkBox.Checked)
                {
                    
                    string userId = row.Cells[2].Text; 

                   
                    await client.DeleteAsync("Users/" + userId);

                   
                    usersTable.Rows.Remove(row);
                }
            }
        }
     

        protected void editButton_Click(object sender, EventArgs e)
        {
           
            int rowsCount = usersTable.Rows.Count - 1;
            for (int i = rowsCount - 1; i >= 0; i--)
            {
                TableRow row = usersTable.Rows[i];
                TableCell selectCell = row.Cells[row.Cells.Count - 1];

                if (selectCell.Controls.Count > 0 && selectCell.Controls[0] is CheckBox checkBox)
                {
                    if (checkBox.Checked)
                    {
                        for (int j = 0; j < row.Cells.Count - 1; j++)
                        {
                            TableCell cell = row.Cells[j];
                            string cellText = cell.Text;

                            TextBox textBox = new TextBox();
                            textBox.Text = cellText;
                            cell.Controls.Clear();
                            cell.Controls.Add(textBox);
                        }
                    }
                }
            }
        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            TableRow newRow = new TableRow();

            TableCell nameCell = new TableCell();
            TableCell emailCell = new TableCell();
            TableCell usernameCell = new TableCell();
            TableCell passwordCell = new TableCell();
            TableCell roleCell = new TableCell();
            TableCell selectCell = new TableCell();
           
            TextBox nameTextBox = new TextBox();
            TextBox emailTextBox = new TextBox();
            TextBox usernameTextBox = new TextBox();
            TextBox passwordTextBox = new TextBox();
            TextBox roleTextBox = new TextBox();
            CheckBox selectCheckBox = new CheckBox();
         
            nameCell.Controls.Add(nameTextBox);
            emailCell.Controls.Add(emailTextBox);
            usernameCell.Controls.Add(usernameTextBox);
            passwordCell.Controls.Add(passwordTextBox);
            roleCell.Controls.Add(roleTextBox);
            selectCell.Controls.Add(selectCheckBox);

            newRow.Cells.Add(nameCell);
            newRow.Cells.Add(emailCell);
            newRow.Cells.Add(usernameCell);
            newRow.Cells.Add(passwordCell);
            newRow.Cells.Add(roleCell);
            newRow.Cells.Add(selectCell);
            
            usersTable.Rows.Add(newRow);
        }
      
        protected void saveButton_Click(object sender, EventArgs e)
        {
            Button saveButton = (Button)sender;
            TableCell saveCell = (TableCell)saveButton.Parent;
            TableRow row = (TableRow)saveCell.Parent;

            for (int i = 0; i < row.Cells.Count - 1; i++)
            {
                TableCell cell = row.Cells[i];
                TextBox textBox = (TextBox)cell.Controls[0];
                string updatedValue = textBox.Text;
                cell.Controls.Clear();
                cell.Text = updatedValue;
            }
            row.Cells.Remove(saveCell);
        }

        protected async void b_save_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Username.Text) && !string.IsNullOrEmpty(Password.Text) && !string.IsNullOrEmpty(Email.Text) && !string.IsNullOrEmpty(Name.Text) && !string.IsNullOrEmpty(Role.Text))
            {
                IFirebaseClient client = new FireSharp.FirebaseClient(config);


                FirebaseResponse response = await client.GetAsync("Users/" + Username.Text);
                User existingUser = response.ResultAs<User>();

                if (existingUser == null)
                {
                    User newUser = new User
                    {
                        Username = Username.Text,
                        Parola = Password.Text,
                        Email = Email.Text,
                        Name = Name.Text,
                        Role = Role.Text
                    };

                    SetResponse saveResponse = await client.SetAsync("Users/" + Username.Text, newUser);

                    Name.Text = string.Empty;
                    Email.Text = string.Empty;
                    Username.Text = string.Empty;
                    Password.Text = string.Empty;
                    Role.Text = string.Empty;
                }
                else
                {
                    string existingUserScript = "alert(\"User already exists!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", existingUserScript, true);
                }
            }
        }
    }
}
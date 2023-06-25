using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.PeerToPeer;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace licenta_test
{
    public partial class DashboardPsychologists : System.Web.UI.Page
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
            LoadPsychologists();
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
        protected void LoadPsychologists()
        {
            var config = new FirebaseConfig
            {
                AuthSecret = "a5wIauZVZA8AuMsrk92rH1zuGPYN23GcgnwUArjE",
                BasePath = "https://licenta-f7244-default-rtdb.firebaseio.com/"
            };
            var client = new FireSharp.FirebaseClient(config);

            var response = client.Get("Psychologists");
            var psychologists = response.ResultAs<Dictionary<string, Psychologist>>();

            foreach (var psychologist in psychologists)
            {
                var name = psychologist.Value.Name;
                var email = psychologist.Value.Email;
                var img = psychologist.Value.ImgUrl;
                

                var row = new TableRow();
                row.Cells.Add(new TableCell() { Text = name.ToString() });
                row.Cells.Add(new TableCell() { Text = email.ToString() });
                row.Cells.Add(new TableCell() { Text = img.ToString() });
              
                var selectCell = new TableCell();
                var checkBox = new CheckBox();

                selectCell.Controls.Add(checkBox);
                row.Cells.Add(selectCell);
                psychologistsTable.Rows.Add(row);
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
            int rowsCount = psychologistsTable.Rows.Count - 1;
            for (int i = rowsCount - 1; i >= 0; i--)
            {
                TableRow row = psychologistsTable.Rows[i];
                TableCell selectCell = row.Cells[row.Cells.Count - 1];

                if (selectCell.Controls.Count > 0 && selectCell.Controls[0] is CheckBox checkBox && checkBox.Checked)
                {
                    // Obțineți ID-ul utilizatorului pe baza valorii dintr-o celulă specifică
                    string id = row.Cells[0].Text; // Presupunând că coloana name este prima celulă

                    // Ștergeți utilizatorul din Firebase folosind ID-ul
                    await client.DeleteAsync("Psychologists/" + id);

                    // Eliminați rândul din tabel
                    psychologistsTable.Rows.Remove(row);
                }
            }
        }

        protected void editButton_Click(object sender, EventArgs e)
        {
            int rowsCount = psychologistsTable.Rows.Count - 1;
            for (int i = rowsCount - 1; i >= 0; i--)
            {
                TableRow row = psychologistsTable.Rows[i];
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
            TableCell imgCell = new TableCell();
            TableCell selectCell = new TableCell();
            TextBox nameTextBox = new TextBox();
            TextBox emailTextBox = new TextBox();
            TextBox imgTextBox = new TextBox();
            CheckBox selectCheckBox = new CheckBox();

           
            nameCell.Controls.Add(nameTextBox);
            emailCell.Controls.Add(emailTextBox);
            imgCell.Controls.Add(imgTextBox);
            selectCell.Controls.Add(selectCheckBox);
            newRow.Cells.Add(nameCell);
            newRow.Cells.Add(emailCell);
            newRow.Cells.Add(imgCell);
           
            newRow.Cells.Add(selectCell);
        
            psychologistsTable.Rows.Add(newRow);
        }


        protected async void b_save_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(ImgURL.Text) && !string.IsNullOrEmpty(Name.Text) && !string.IsNullOrEmpty(Email.Text))
            {
                IFirebaseClient client = new FireSharp.FirebaseClient(config);
                FirebaseResponse response = await client.GetAsync("Psychologists/" + Name.Text.ToString());
                Psychologist existingPsychologist = response.ResultAs<Psychologist>();

                if (existingPsychologist == null)
                {
                    Psychologist newPsychologist = new Psychologist
                    {
                        Name = Name.Text.ToString(),
                        ImgUrl = ImgURL.Text.ToString(),
                        Email = Email.Text.ToString(),
                        // Alte proprietăți ale utilizatorului pot fi adăugate aici
                    };

                    SetResponse saveResponse = await client.SetAsync("Psychologists/" + Name.Text.ToString(), newPsychologist);
                }
            }
        }
    }
}
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Net.PeerToPeer;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace licenta_test
{
    public partial class DashboardAppointments : System.Web.UI.Page
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
            LoadAppointments();
            GetUser(username);
            Name.Enabled = false;
            Email.Enabled = false;
            Doctor.Enabled = false;
            Phone.Enabled = false;
            Date.Enabled = false;
            Time.Enabled = false;
            removeButton.Enabled = true;
            cancelButton.Enabled = true;
            modifyButton.Enabled = true;

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
        protected void LoadAppointments()
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

            var response = client.Get("Appointments/" + user.Username.ToString());
            var appointments = response.ResultAs<Dictionary<string, App>>();

            foreach (var appointment in appointments)
            {
                var name = appointment.Value.Name;
                var email = appointment.Value.Email;
                var doctor = appointment.Value.Doctor;
                var phone = appointment.Value.Phone;
                var date = appointment.Value.Date;
                var time = appointment.Value.Time;
                DateTime dateAndTime = DateTime.Parse(appointment.Value.Date + " " + appointment.Value.Time);
                var status = appointment.Value.Status;

                var row = new TableRow();
                if (status.ToString() == "cancelled")
                {
                    row.ForeColor = Color.Red;
                }
                if (DateTime.Now > dateAndTime)
                {
                    row.ForeColor = Color.Green;
                }
                row.Cells.Add(new TableCell() { Text = name.ToString() });
                row.Cells.Add(new TableCell() { Text = email.ToString() });
                row.Cells.Add(new TableCell() { Text = doctor.ToString() });
                row.Cells.Add(new TableCell() { Text = phone.ToString() });
                row.Cells.Add(new TableCell() { Text = date.ToString() });
                row.Cells.Add(new TableCell() { Text = time.ToString() });
                var selectCell = new TableCell();
                var checkBox = new CheckBox();

                selectCell.Controls.Add(checkBox);
                row.Cells.Add(selectCell);
                appointmentsTable.Rows.Add(row);
            }
        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            int rowsCount = appointmentsTable.Rows.Count - 1;
            for (int i = rowsCount - 1; i >= 0; i--)
            {
                TableRow row = appointmentsTable.Rows[i];
                TableCell selectCell = row.Cells[row.Cells.Count - 1];

                if (selectCell.Controls.Count > 0 && selectCell.Controls[0] is CheckBox checkBox)
                {
                    if (checkBox.Checked)
                    {
                        row.ForeColor = Color.Red;
                        checkBox.Checked = false;
                    }
                }
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
            int rowsCount = appointmentsTable.Rows.Count - 1;
            for (int i = rowsCount - 1; i >= 0; i--)
            {
                TableRow row = appointmentsTable.Rows[i];
                TableCell selectCell = row.Cells[row.Cells.Count - 1];

                if (selectCell.Controls.Count > 0 && selectCell.Controls[0] is CheckBox checkBox && checkBox.Checked)
                {
                    string username = Request.QueryString["username"];
                    var userResponse = client.Get("Users/" + username);
                    var user = userResponse.ResultAs<User>();

                    string id = row.Cells[4].Text.Replace("/", "") + "-" + row.Cells[5].Text;
                    await client.DeleteAsync("Appointments/" + user.Username.ToString() + "/" + id);
                    appointmentsTable.Rows.Remove(row);
                }

            }
        }

        protected void modifyButton_Click(object sender, EventArgs e)
        {
            Name.Enabled = true;
            Email.Enabled = true;
            Doctor.Enabled = true;
            Phone.Enabled = true;
            removeButton.Enabled = false;
            cancelButton.Enabled = false;
            modifyButton.Enabled = false;
            int rowsCount = appointmentsTable.Rows.Count - 1;
            for (int i = rowsCount - 1; i >= 0; i--)
            {
                TableRow row = appointmentsTable.Rows[i];
                TableCell selectCell = row.Cells[row.Cells.Count - 1];

                if (selectCell.Controls.Count > 0 && selectCell.Controls[0] is CheckBox checkBox)
                {
                    if (checkBox.Checked)
                    {
                        Name.Text = row.Cells[0].Text;
                        Email.Text = row.Cells[1].Text;
                        Doctor.Text = row.Cells[2].Text;
                        Phone.Text = row.Cells[3].Text;
                        Date.Text = row.Cells[4].Text;
                        Time.Text = row.Cells[5].Text;
                    }
                }
            }
        }

       

        protected async void b_save_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Name.Text) && !string.IsNullOrEmpty(Email.Text) && !string.IsNullOrEmpty(Doctor.Text) && !string.IsNullOrEmpty(Phone.Text))
            {
                if (!string.IsNullOrEmpty(Request.QueryString["username"]))
                {
                    string username = Request.QueryString["username"];

                    IFirebaseClient client = new FireSharp.FirebaseClient(config);


                    FirebaseResponse res = client.Get("Users/" + username);
                    User existinguser = res.ResultAs<User>();
                    string key = DateTime.Now.Date.ToShortDateString().Replace("/", "") + "-" + DateTime.Now.ToShortTimeString();

                    if (existinguser != null)
                    {
                        FirebaseResponse response = await client.GetAsync("Appointments/" + existinguser.Username.ToString() + "/" + key);

                        App existingApp = response.ResultAs<App>();


                        App newApp = new App
                        {
                            Name = Name.Text,
                            Phone = Phone.Text,
                            Email = Email.Text,
                            Date = DateTime.Now.Date.ToShortDateString(),
                            Time = DateTime.Now.ToShortTimeString(),
                            Doctor = Doctor.Text,
                            Status = "in progress",

                        };



                        SetResponse saveResponse = await client.SetAsync("Appointments/" + existinguser.Username.ToString() + "/" + key, newApp);

                        if (response.StatusCode == System.Net.HttpStatusCode.OK)
                        {
                           
                            Name.Text = string.Empty;
                            Email.Text = string.Empty;
                            Phone.Text = string.Empty;
                            Doctor.Text = string.Empty;
                            Date.Text = string.Empty;
                            Time.Text = string.Empty;
                        }
                      
                    }
                    else
                    {
                        string existingUserScript = "alert(\"You already have an appointment on the selected date and time!\");";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", existingUserScript, true);
                    }
                }
            }
        }

    }
    
}
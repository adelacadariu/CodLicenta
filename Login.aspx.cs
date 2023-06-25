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

namespace licenta_test
{
    public partial class Login : System.Web.UI.Page
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
                FirebaseConnection.Text = "Conexiunea la baza de date a fost realizata cu succes!";
            else
                FirebaseConnection.Text = "Conexiune esuata.";

        }

        protected async void b_login_Click(object sender, EventArgs e)
        {
            if (Username.Text.ToString() != "")
            {
                FirebaseResponse raspuns = await client.GetAsync("Users/" + Username.Text);
                User obj = raspuns.ResultAs<User>();
                if (obj == null)
                {
                    string not_found = "alert(\"The user entered was not found!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", not_found, true);
                }
                else
                {
                    if (Password.Text.ToString() == obj.Parola.ToString())
                    {
                        Response.Redirect("Index.aspx?username=" + Username.Text);
                    }
                    else if (Password.Text.ToString() != obj.Parola.ToString())
                    {
                        string wrong_password = "alert(\"Incorrect password!\");";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", wrong_password, true);
                    }
                }
            } 
            else
            {
                string empty_field = "alert(\"Please enter a user!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", empty_field, true);
            }
        }
    }
}

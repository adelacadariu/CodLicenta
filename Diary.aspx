<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeBehind="Diary.aspx.cs" Inherits="licenta_test.Diary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  
    <link rel="stylesheet" href="diary/style.css" />
   
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.13.1/css/all.css"
      integrity="sha384-xxzQGERXS00kBmZW/6qxqJPyxW3UR0BPsL4c8ILaIWXva5kFi7TxkIIaMiKtqV1Q"
      crossorigin="anonymous"
    />
    
    <link
      href="https://fonts.googleapis.com/css2?family=Space+Mono:ital,wght@0,400;0,700;1,400;1,700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Panic-Off!</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="homebutton">
        <a href="Index.aspx?username=<%= Request.QueryString["username"] %>"><i class="fa fa-home"></i></a>
        </div>
    <header><h1 class="title">My Personal Journal</h1>
    </header>
   
    <section class="section journal-section">
      <div class="container">
        <div class="container-row container-row-journal">
          <div class="container-item container-item-journal">
            <form id="entryForm" >
              <label for="entry-title" class="journal-label">Entry Title</label>
                <asp:TextBox ID="entryTitleTextBox" runat="server" CssClass="entry-text-title" placeholder="Name of entry ✏️"></asp:TextBox>

              <label for="entry" class="journal-label">Today's Entry</label>
                <asp:TextBox ID="entryTextBox" runat="server" TextMode="MultiLine" CssClass="entry-text-box" placeholder="What's on your mind today? 💭"></asp:TextBox>

              <asp:Button ID="submitButton" runat="server" Text="Submit" CssClass="btn-main entry-submit-btn" OnClick="submitButton_Click" />

            </form>
          </div>
        </div>
      </div>
    </section>


    <section class="section sectionEntryResults" id="entryResultsSection">
      <div class="container">
        <div class="container-row entryResultRow"></div>
      </div>
    </section>

    <script src="diary/script.js"></script>
  
    </form>
</body>
</html>

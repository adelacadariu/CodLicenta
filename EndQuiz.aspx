<%@ Page Language="C#" Async="true"  AutoEventWireup="true" CodeBehind="EndQuiz.aspx.cs" Inherits="licenta_test.EndQuiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Congrats!</title>
    <link rel="stylesheet" href="quiz\app.css" />
</head>
<body>
    <form id="endForm" runat="server">
        <div class="container">
      <div id="end" class="flex-center flex-column">
         <h1 style="font-size:35px"><asp:Literal ID="scoreLiteral" Text="0" runat="server"></asp:Literal></h1>
        
        <form>
             <asp:Button ID="SaveScore" runat="server" Text="Save" type="submit" value="Make an appointment" class="btn" OnClick="save_Click"/>
        </form>
        <a class="btn" href="Quiz.aspx?username=<%= Request.QueryString["username"] %>"">Play Again</a>
        <a class="btn" href="Index.aspx?username=<%= Request.QueryString["username"] %>">Go Home</a>
      </div>
    </div>
    <script src="quiz/end.js"></script>
    </form>
</body>
</html>

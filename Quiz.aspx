<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="licenta_test.Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
      <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.13.1/css/all.css"
      integrity="sha384-xxzQGERXS00kBmZW/6qxqJPyxW3UR0BPsL4c8ILaIWXva5kFi7TxkIIaMiKtqV1Q"
      crossorigin="anonymous"
    />
    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css2?family=Space+Mono:ital,wght@0,400;0,700;1,400;1,700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Panic-Off!</title>
    <link rel="stylesheet" href="quiz/app.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="btn" style="margin:30px">
            <a href="Index.aspx?username=<%= Request.QueryString["username"] %>"><i class="fa fa-home" style="font-size:30px"></i></a>
        </div>
       <div class="container">
        
      <div id="home" class="flex-center flex-column">
        <h1>Quick Quiz</h1>
        <a class="btn" href="Anxiety.aspx?username=<%= Request.QueryString["username"] %>">Anxiety</a>
        <a class="btn" href="SocialAnxiety.aspx?username=<%= Request.QueryString["username"] %>">Social Anxiety</a>
        <a class="btn" href="Depression.aspx?username=<%= Request.QueryString["username"] %>">Depression</a>
      </div>
    </div>
    </form>
</body>
</html>

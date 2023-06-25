<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Breathe.aspx.cs" Inherits="licenta_test.Breathe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="breathe/stylebr.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Panic-Off!</title>
</head>
<body>
    <form id="form1" runat="server">
       <div class="homebutton">
      <a href="Index.aspx?username=<%= Request.QueryString["username"] %>"><i class="fa fa-home"></i></a>
      </div>
    <h1 style="margin-bottom:90px; text-align:center; font-size:70px;color:black"></h1>

    <div class="container" id="container">
      <div class="circle"></div>

      <p id="text"></p>

      <div class="pointer-container">
        <span class="pointer"></span>
      </div>

      <div class="gradient-circle"></div>
    </div>

    <script src="breathe/script.js"></script>
    </form>
</body>
</html>

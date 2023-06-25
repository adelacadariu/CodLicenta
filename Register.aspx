<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="Register.aspx.cs" Inherits="licenta_test.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="auth/style.css" />
    <title>Sign in & Sign up Form</title>
</head>
<body>
    <form runat="server" id="f1">
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">

          <form  class="sign-in-form">
            <h2 class="title">Sign up</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
               <asp:TextBox id="Username2" runat="server" type="text" aria-describedby="usernameHelp"
                                                placeholder="Enter Username" />
            </div>
              <div class="input-field">
              <i class="fas fa-user"></i>
               <asp:TextBox id="Name" runat="server" type="text" aria-describedby="usernameHelp"
                                                placeholder="Enter Name" />
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
               <asp:TextBox id="Email" runat="server" type="email" placeholder="Email"/>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <asp:TextBox id="Password2" runat="server" type="password" placeholder="Password" />
            </div>
            <asp:Button href="Login.aspx" id="bRegister" Text="Sign up" runat="server" type="submit" class="btn" value="Sign up" OnClick="bRegister_Click" />
            
          </form>
          
        </div>
      </div>

       <div class="panels-container">
        
        <div class="panel left-panel">
          <div class="content">
            <h3>One of us ?</h3>
            <p>
              
            </p>
            <a href="Login.aspx"  class="btn transparent" id="sign-in-btn">
              Sign in
            </a>
          </div>
          <img src="auth/img/Stress.svg" class="image" alt="" />
        </div>
      </div>
    </div>

     <div>
       <center><asp:Label ID="FirebaseConnection2" runat="server"></asp:Label></center>
     </div>

    <script src="auth/app.js"></script>
</form>        
</body>
</html>

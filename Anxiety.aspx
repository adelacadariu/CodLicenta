<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeBehind="Anxiety.aspx.cs" Inherits="licenta_test.Anxiety" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Anxiety Quiz</title>
     <link rel="stylesheet" href="quiz/game.css" />
    <link rel="stylesheet" href="quiz/app.css" />
</head>
<body>
    <form id="quizForm" runat="server">
 <div class="quiz-container" style="width:500px;height:400px" id="quiz" runat="server">
    <div class="quiz-header" >
        <h2 id="question" runat="server" style="font-size:25px"><asp:Literal ID="questionLiteral" runat="server"></asp:Literal></h2>
    <div class="quiz-header" style="padding-top:20px">
         <div>
            <div style="padding-left:15px">
                <asp:RadioButton ID="a" CssClass="answer" GroupName="answer" runat="server" />
                <label for="a" id="a_text" style="font-size:20px;" runat="server"><asp:Literal ID="aLiteral" runat="server"></asp:Literal></label>
            </div>
            <div style="padding-left:15px">
                <asp:RadioButton ID="b" CssClass="answer" GroupName="answer" runat="server" />
                <label for="b" id="b_text" style="font-size:20px" runat="server"><asp:Literal ID="bLiteral" runat="server"></asp:Literal></label>
            </div>
            <div style="padding-left:15px">
                <asp:RadioButton ID="c" CssClass="answer" GroupName="answer" runat="server" />
                <label for="c" id="c_text" style="font-size:20px" runat="server"><asp:Literal ID="cLiteral"  runat="server"></asp:Literal></label>
            </div>
            <div style="padding-left:15px">
                <asp:RadioButton ID="d" CssClass="answer" GroupName="answer" runat="server" />
                <label for="d" id="d_text" style="font-size:20px" runat="server"><asp:Literal ID="dLiteral" runat="server"></asp:Literal></label>
            </div>
            </div>
        <asp:Button ID="submit" Text="Submit" style="margin-top:15px; padding-left: 15px" runat="server" OnClick="submit_Click" />
     <asp:Button ID="next" Text="Next" style="margin-top:15px; padding-left:15px" runat="server" OnClick="next_Click" />
    </div>
    
    </div>
    
</div>

    </form>
</body>
</html>

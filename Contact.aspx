<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="Contact.aspx.cs" Inherits="licenta_test.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
     
<head runat="server">
    <title>Panic-OFF! - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Great+Vibes&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <form id="form1" runat="server">
      
        <div class="py-1 bg-black top">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
	    		<div class="col-lg-12 d-block">
		    		<div class="row d-flex">
		    			<div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <span class="text">0733463487</span>
					    </div>
					   
					    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right justify-content-end">
						    <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
						    <span class="text">adelacadariu@email.com</span>
					    </div>
				    </div>
			    </div>
		    </div>
		  </div>
    </div>
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">Panic-OFF!</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	        	<li class="nav-item "><a href="Index.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">Home</a></li>
	        	
	        	<li class="nav-item"> <a href="Videos.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">Videos</a></li>
	        	<li class="nav-item"><a href="Doctors.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">Psychologists</a></li>
	          <li class="nav-item active">  <a href="Contact.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">Contact</a></li>
	          <li class="nav-item cta"> <a href="Appointment.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">Book a session</a></li>
            <li class="nav-item cta"><a href="Quiz.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">QUIZ</a></li>
            <li class="nav-item cta"> <a href="Breathe.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">BREATHE</a></li>
			<li class="nav-item cta"><a href="Diary.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">
				<img src="images/diary.png" style="height: 30px; width:30px">
			</a></li>
            
	        </ul>
          <i> <a href="Login.aspx" class="fa fa-sign-in" style="font-size:36px" ></a> </i>
           <i>
			<asp:HyperLink ID="signOutLink" runat="server" CssClass="fa fa-sign-out" style="font-size:36px" NavigateUrl="Index.aspx" ></asp:HyperLink>
		</i>
          <i> <a href="#" class="fa fa-user" style="font-size:36px"></a></i>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/back16.png'); height: 800px;" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center mb-4">
            <h1 class="mb-2 bread">Contact</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Contact us <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section ftco-no-pt ftco-no-pb contact-section">
			<div class="container">
				<div class="row d-flex align-items-stretch no-gutters">
					<div class="col-md-6 pt-5 px-2 pb-2 p-md-5 order-md-last">
						<h2 class="h4 mb-2 mb-md-5 font-weight-bold">Contact Us</h2>
						<form action="#">
            <div class="form-group">
                <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control" placeholder="Your Name"></asp:TextBox>
            </div>
                            <div class="form-group">
                <asp:TextBox ID="EmailFromTextBox" runat="server" CssClass="form-control" placeholder="From"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TextBoxToEmail" runat="server" CssClass="form-control" placeholder="To"></asp:TextBox>
                 
                
            </div>
            <div class="form-group">
                <asp:TextBox ID="subjectTextBox" runat="server" CssClass="form-control" placeholder="Subject"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="messageTextBox" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Message"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="sendMessageButton" runat="server" Text="Send Message" CssClass="btn btn-primary py-3 px-5" OnClick="sendMessageButton_Click" />
            </div>

            </form>
					</div>
					<div class="col-md-6 d-flex align-items-stretch">
						<div id="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d44545.13523501539!2d21.199349349728934!3d45.74972350083402!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x474567af6a4297d7%3A0xf65c4e3c78acf69f!2sScopu%20Sebastijan%20Cabinet%20Individual%20de%20Psihologie!5e0!3m2!1sro!2sro!4v1686860068610!5m2!1sro!2sro" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
						</div>
					</div>
				</div>
			</div>
		</section>
		
   
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>

  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    </form>
</body>
</html>

<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="licenta_test.Doctors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Panic-OFF!</title>
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
	        	<li class="nav-item active"><a href="Doctors.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">Psychologists</a></li>
	          <li class="nav-item">  <a href="Contact.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">Contact</a></li>
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
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url(images/back4.png); height: 800px;" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center mb-4">
            <h1 class="mb-2 bread">Doctors</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Doctors <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section bg-light">
			<div class="container">
				<div class="row">
          <asp:Panel runat="server" ID="panel1" class="col-md-4 ftco-animate">
            <div class="blog-entry">
             <asp:Image runat="server" ID="image1" ImageUrl="images/ps1.jpg" class="block-20" />
              <div class="text pt-3 pb-4 px-4">
                <div class="meta">
                    
                  <div><a href="#">Psychologist</a></div>
                </div>
                <asp:Label runat="server" ID="lblName1" Text="Emira White" class="heading"></asp:Label>
                <p class="clearfix">
                  <asp:Label runat="server" ID="lblEmail1" Text="emirawhite@gmail.com" class="float-left read"></asp:Label>
                     
                </p>
              </div>
            </div>
          </asp:Panel>
          <asp:Panel runat="server" ID="panel2" class="col-md-4 ftco-animate">
            <div class="blog-entry">
               <asp:Image runat="server" ID="image2" ImageUrl="images/ps2.jpg" class="block-20" />
              <div class="text pt-3 pb-4 px-4">
                <div class="meta">
                    
                  <div><a href="#">Psychologist</a></div>
                </div>
                <asp:Label runat="server" ID="lblName2" Text="Avena Adams" class="heading"></asp:Label>
                <p class="clearfix">
                  <asp:Label runat="server" ID="lblEmail2" Text="avena_adams@gmail.com" class="float-left read"></asp:Label>
                     
                </p>
              </div>
            </div>
          </asp:Panel>
         <asp:Panel runat="server" ID="panel3" class="col-md-4 ftco-animate">
            <div class="blog-entry">
              <asp:Image runat="server" ID="image3" ImageUrl="images/ps3.jpg" class="block-20" />
              <div class="text pt-3 pb-4 px-4">
                <div class="meta">
                    
                  <div><a href="#">Psychologist</a></div>
                </div>
                   <asp:Label runat="server" ID="lblName3" Text="Jason Miller" class="heading"></asp:Label>
                <p class="clearfix">
                    <asp:Label runat="server" ID="lblEmail3" Text="jsmiller@gmail.com" class="float-left read"></asp:Label>
                   
                </p>
              </div>
            </div>
          </asp:Panel>
         <asp:Panel runat="server" ID="panel4" class="col-md-4 ftco-animate">
            <div class="blog-entry">
              <asp:Image runat="server" ID="image4" ImageUrl="images/ps4.jpg" class="block-20" />
              <div class="text pt-3 pb-4 px-4">
                <div class="meta">
                 
                  <div><a href="#">Psychologist</a></div>
                </div>
                  <asp:Label runat="server" ID="lblName4" Text="Loriana Russel" class="heading"></asp:Label>
                <p class="clearfix">
                    <asp:Label runat="server" ID="lblEmail4" Text="lorirussel@gmail.com" class="float-left read"></asp:Label>
                     
                </p>
              </div>
            </div>
          </asp:Panel>
          <asp:Panel runat="server" ID="panel5" class="col-md-4 ftco-animate">
            <div class="blog-entry">
              <asp:Image runat="server" ID="image5" ImageUrl="images/ps5.jpg" class="block-20" />
              <div class="text pt-3 pb-4 px-4">
                <div class="meta">
                    
                  <div><a href="#">Psychologist</a></div>
                </div>
                  <asp:Label runat="server" ID="lblName5" Text="Deborah Edwards" class="heading"></asp:Label>
                <p class="clearfix">
                    <asp:Label runat="server" ID="lblEmail5" Text="deb_edwards@gmail.com" class="float-left read"></asp:Label>
                    
                
                </p>
              </div>
            </div>
          </asp:Panel> 
          <asp:Panel runat="server" ID="panel6" class="col-md-4 ftco-animate">
            <div class="blog-entry">
              <asp:Image runat="server" ID="image6" ImageUrl="images/ps6.jpg" class="block-20" />
              <div class="text pt-3 pb-4 px-4">
                <div class="meta">
                    
                  <div><a href="#">Psychologist</a></div>
                </div>
                  <asp:Label runat="server" ID="lblName6" Text="Noemy Thompson" class="heading"></asp:Label>
                <p class="clearfix">
                    <asp:Label runat="server" ID="lblEmail6" Text="noemythmp@gmail.com" class="float-left read"></asp:Label>
            
                </p>
              </div>
            </div>
          </asp:Panel>
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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
    
    </form>
</body>
</html>
 
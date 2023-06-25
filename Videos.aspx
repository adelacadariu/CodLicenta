<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Videos.aspx.cs" Inherits="licenta_test.Videos" %>

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
	        	<li class="nav-item active"><a href="Index.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">Home</a></li>
	        	
	        	<li class="nav-item"> <a href="Videos.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">Videos</a></li>
	        	<li class="nav-item"><a href="Doctors.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">Psychologists</a></li>
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
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url(images/back7.png); height: 800px;" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center mb-4">
            <h1 class="mb-2 bread">Videos</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Videos <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>


		<section class="ftco-section">
    	<div class="container">
        <div class="ftco-search">
					<div class="row">
            <div class="col-md-12 nav-link-wrap">
	            <div class="nav nav-pills d-flex text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
	              <a class="nav-link ftco-animate active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Sleep</a>

	              <a class="nav-link ftco-animate" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Meditate</a>

	              <a class="nav-link ftco-animate" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">Music</a>

	              <a class="nav-link ftco-animate" id="v-pills-4-tab" data-toggle="pill" href="#v-pills-4" role="tab" aria-controls="v-pills-4" aria-selected="false">Pilates</a>

	              <a class="nav-link ftco-animate" id="v-pills-5-tab" data-toggle="pill" href="#v-pills-5" role="tab" aria-controls="v-pills-5" aria-selected="false">Breathe</a>

	              <a class="nav-link ftco-animate" id="v-pills-6-tab" data-toggle="pill" href="#v-pills-6" role="tab" aria-controls="v-pills-6" aria-selected="false">Panic Attacks</a>

	            </div>
	          </div>
	          <div class="col-md-12 tab-wrap">
	            
	            <div class="tab-content" id="v-pills-tabContent">

	              <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="day-1-tab">
	              	<div class="row no-gutters d-flex align-items-stretch">
					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel1_1" runat="server">
												<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/iPLkdxbJV3o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
											</asp:Panel>

											<div class="tm-media-body">
												<asp:Label ID="Title1_1" runat="server" CssClass="tm-text-primary">Guided Sleep Meditation & Deep Relaxation</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
					             <div class="tm-media">
									 <asp:Panel ID="Panel1_2" runat="server">
									<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/8TDcGYmEgyM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
										 </asp:Panel>
                    <div class="tm-media-body">
                        <asp:Label ID="Title1_2" runat="server" CssClass="tm-text-primary"> GUIDED SLEEP MEDITATION TALKDOWN</asp:Label>
                        <p class="tm-mb-20 tm-text-small">
                             
                        </p>
                        <span class="tm-text-secondary tm-media-span tm-text-small">
                           
                        </span>
                        <hr class="tm-hr tm-mr">
                    </div>
                </div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel1_3" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/kLF8MswWO0c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title1_3" runat="server" CssClass="tm-text-primary">Guided Sleep Meditation for Insomnia</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

								<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel1_4" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/W_lkK7lJZWc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title1_4" runat="server" CssClass="tm-text-primary">Sleep Hypnosis: Guided Sleep Meditation</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel1_5" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/aEqlQvczMJQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												<</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title1_5" runat="server" CssClass="tm-text-primary">10-Minute Meditation For Sleep</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

								<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										
										<div class="tm-media">
											
												<asp:Panel ID="Panel1_6" runat="server">
												<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/iPLkdxbJV3o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
											</asp:Panel>

											<div class="tm-media-body">
												<asp:Label ID="Title1_6" runat="server" CssClass="tm-text-primary">Get Back to Sleep </asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel1_7" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/odvdQvJ4GYk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title1_7" runat="server" CssClass="tm-text-primary">Sleep Talk Down Guided Sleep Meditation</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel1_8" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/WKL4GeErHWw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title1_8" runat="server" CssClass="tm-text-primary">Sleep Meditation Guided Body Scan</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>
					        	
					        </div>
	              </div>

	              <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-day-2-tab">
	              	<div class="row no-gutters d-flex align-items-stretch">
					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel2_1" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/eosXbWiOOlw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title2_1" runat="server" CssClass="tm-text-primary">Fill Yourself with Morning Energy</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel2_2" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/kuIyko7z2vY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title2_2" runat="server" CssClass="tm-text-primary">Morning Meditation</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel2_3" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/P1w3j3D5LEc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title2_3" runat="server" CssClass="tm-text-primary">Clear Your Mind in the Morning</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel2_4" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/oe3lP6Hvino" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title2_4" runat="server" CssClass="tm-text-primary">Morning Guided Meditation</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel2_5" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/-0pBgI6yuwI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title2_5" runat="server" CssClass="tm-text-primary">Starting Your Day with a Clear Mind</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel2_6" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/ENYYb5vIMkU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
											</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title2_6" runat="server" CssClass="tm-text-primary">10-Minute Meditation To Start Your Day</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel2_7" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/BtGn4JipFFc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title2_7" runat="server" CssClass="tm-text-primary">A Great Morning Meditation to Ease into Your Day</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel2_8" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/AQM6fmEINaE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title2_8" runat="server" CssClass="tm-text-primary">Morning Meditation for a Good Day</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>
					        </div>
	              </div>

	              <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-day-3-tab">
	              	<div class="row no-gutters d-flex align-items-stretch">
					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel3_1" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/bYLHvs4W25c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title3_1" runat="server" CssClass="tm-text-primary">Anti - Anxiety Cleanse Music</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel3_2" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/IT2W1k_JB3Y" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title3_2" runat="server" CssClass="tm-text-primary">Relaxing Music</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel3_3" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/0cR65B1E724" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title3_3" runat="server" CssClass="tm-text-primary"> Relaxing music relieves stress and anxiety</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

								<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel3_4" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/Lju6h-C37hE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title3_4" runat="server" CssClass="tm-text-primary">"Boost Your Aura" Attract Positive Energy Music</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel3_5" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/6_tho2o8A2k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title3_5" runat="server" CssClass="tm-text-primary">10 Min Meditation Music</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>    	

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel3_6" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/nFkD6ByQQ1M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title3_6" runat="server" CssClass="tm-text-primary">Calming music for nerves</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>
					        </div>
	              </div>

	              <div class="tab-pane fade" id="v-pills-4" role="tabpanel" aria-labelledby="v-pills-day-4-tab">
	              	<div class="row no-gutters d-flex align-items-stretch">
					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel4_1" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/tYddPTEfS_8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title4_1" runat="server" CssClass="tm-text-primary">10 Minutes Stress Relief Exercises </asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel4_2" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/8TuRYV71Rgo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title4_2" runat="server" CssClass="tm-text-primary">10 Minute Yoga Stress and Anxiety</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel4_3" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/1JZWIGT2EaM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title4_3" runat="server" CssClass="tm-text-primary">1 HOUR PILATES CLASS FOR STRESS, ANXIETY, & DEPRESSION</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel4_4" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/LpQIVumcHNY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title4_4" runat="server" CssClass="tm-text-primary">20 Minutes Gentle Pilates Flow for Anxiety and Stress Relief</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel4_5" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/sTANio_2E0Q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title4_5" runat="server" CssClass="tm-text-primary">20 min Full Body STRETCH/YOGA for STRESS & ANXIETY Relief</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel4_6" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/IMB-7y1lfqs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title4_6" runat="server" CssClass="tm-text-primary">Gentle Pilates For Stress Relief | 25 Minutes To Be Gentle With Yourself</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>
					        </div>
	              </div>

	              <div class="tab-pane fade" id="v-pills-5" role="tabpanel" aria-labelledby="v-pills-day-5-tab">
	              	<div class="row no-gutters d-flex align-items-stretch">
					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel5_1" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/1Dv-ldGLnIY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title5_1" runat="server" CssClass="tm-text-primary">4-7-8 Calm Breathing Exercise</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>
								
					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel5_2" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/YqNeA6fYWLM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title5_2" runat="server" CssClass="tm-text-primary">Breathing Exercises</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel5_3" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/8vkYJf8DOsc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title5_3" runat="server" CssClass="tm-text-primary">Breathing Exercises To Stop A Panic Attack Now</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>
								
					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel5_4" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/_A0udZPwHxs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title5_4" runat="server" CssClass="tm-text-primary">5 Minute Breathing Technique To Reduce Stress & Anxiety</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel5_5" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/w92YFPm0cUM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title5_5" runat="server" CssClass="tm-text-primary">Breathing Exercises to Reduce Stress & Anxiety</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel5_6" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/Lysn2Zoio8Y" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title5_6" runat="server" CssClass="tm-text-primary"> 2:1 Breathing Technique to release stress</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>
					        </div>
	              </div>

	              <div class="tab-pane fade" id="v-pills-6" role="tabpanel" aria-labelledby="v-pills-day-6-tab">
	              	<div class="row no-gutters d-flex align-items-stretch">
					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel6_1" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/vhJDovKxams" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title6_1" runat="server" CssClass="tm-text-primary">Stop Panic Attacks Now - Guided Visualisation</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

								<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel6_2" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/uLFN3cJ9Nyw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title6_2" runat="server" CssClass="tm-text-primary">Guided Meditation for Anxiety and Panic Attacks</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel6_3" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/MiZNu5Fp_ZU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title6_3" runat="server" CssClass="tm-text-primary">Anxiety Panic Attack Meditation</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel6_4" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/tYznSpKXFm4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title6_4" runat="server" CssClass="tm-text-primary">HYPNOSIS for PANIC ATTACKS</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel6_5" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/Et8j1LK0GU0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title6_5" runat="server" CssClass="tm-text-primary">15 Minute Panic and Anxiety Attack Talk Down</asp:Label>
												
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>

					        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
					        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
										<div class="tm-media">
											<asp:Panel ID="Panel6_6" runat="server">
											<iframe style="max-width:100%;height:auto" src="https://www.youtube.com/embed/9DA380fzy7o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
												</asp:Panel>
											<div class="tm-media-body">
												<asp:Label ID="Title6_6" runat="server" CssClass="tm-text-primary">Binaural Anxiety Attack and Panic Attack Talk Down</asp:Label>
												<p class="tm-mb-20 tm-text-small">
													 
												</p>
												<span class="tm-text-secondary tm-media-span tm-text-small">
												   
												</span>
												<hr class="tm-hr tm-mr">
											</div>
										</div>
					            </div>
					        	</div>
					        </div>
	              </div>
	            </div>
	          </div>
	        </div>
        </div>
    	</div>
    </section>
		


  <!-- loader -->
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

<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="Index.aspx.cs" Inherits="licenta_test.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Panic-OFF! </title>
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
	        	<li class="nav-item"><a href="Doctors.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">Doctors</a></li>
	          <li class="nav-item">  <a href="Contact.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">Contact</a></li>
	          <li class="nav-item cta"> <a href="Appointment.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">Book a session</a></li>
            <li class="nav-item cta"><a href="Quiz.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">QUIZ</a></li>
            <li class="nav-item cta"> <a href="Breathe.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">BREATHE</a></li>
			<li class="nav-item cta"><a href="Diary.aspx?username=<%= Request.QueryString["username"] %>" class="nav-link">
				<img src="images/diary.png" style="height: 30px; width:30px">
			</a></li>
            
	        </ul>
          <i> <a href="Login.aspx" class="fa fa-sign-in" style="font-size:36px" ></a> </i>
          <i> <a href="Index.aspx" class="fa fa-sign-out" style="font-size:36px"></a></i>
          <i> <a href="DashboardIndex.aspx?username=<%= Request.QueryString["username"] %>" class="fa fa-user" style="font-size:36px"></a></i>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="home-slider owl-carousel js-fullheight">
      <div class="slider-item js-fullheight" style="background-image: url(images/back.png);" >
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text js-fullheight justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-12 col-sm-12 text-center ftco-animate">
            	<span class="subheading">Panic-OFF!</span>
              <h1 class="mb-4">If you fell life sinking, try positive thinking!</h1>
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item js-fullheight" style="background-image: url(images/back.png);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text js-fullheight justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-12 col-sm-12 text-center ftco-animate">
            	<span class="subheading">Panic-OFF!</span>
              <h1 class="mb-4">Free Yourself From Daily Worry</h1>
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item js-fullheight" style="background-image: url(images/back.png);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-12 col-sm-12 text-center ftco-animate">
            	<span class="subheading">Panic-OFF!</span>
              <h1 class="mb-4">Break Free From Panic Attacks Fast</h1>
            </div>

          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container-fluid">
    		<div class="row">
    			<div class="col-md-12">
    				<div class="featured">
    					<div class="row">
    						<div class="col-md-3">
    							<div class="featured-menus ftco-animate">
			              <div class="menu-img img" style="background-image: url(images/sleep.png);"></div>
			              <div class="text text-center">
		                  <h3>Sleep</h3>
				              <!--<p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>-->
			              </div>
			            </div>
    						</div>
    						<div class="col-md-3">
    							<div class="featured-menus ftco-animate">
			              <div class="menu-img img" style="background-image: url(images/Stress.png);"></div>
			              <div class="text text-center">
		                  <h3>Stress</h3>
				               <!--<p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>-->
			              </div>
			            </div>
    						</div>
    						<div class="col-md-3">
    							<div class="featured-menus ftco-animate">
			              <div class="menu-img img" style="background-image: url(images/yoga.png);"></div>
			              <div class="text text-center">
		                  <h3>Meditate</h3>
				               
			              </div>
			            </div>
    						</div>
    						<div class="col-md-3">
    							<div class="featured-menus ftco-animate">
			              <div class="menu-img img" style="background-image: url(images/anxiety.png);"></div>
			              <div class="text text-center">
		                  <h3>Anxiety</h3>
				             
			              </div>
			            </div>
    						</div>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>
	

		<section class="ftco-section ftco-wrap-about">
			<div class="container">
				<div class="row">
					<div class="col-md-7 d-flex">
						<div class="img img-1 mr-md-2" style="background-image: url(images/home_img1.jpg);"></div>
						<div class="img img-2 ml-md-2" style="background-image: url(images/home_img2.jpg);"></div>
					</div>
					<div class="col-md-5 wrap-about pt-5 pt-md-5 pb-md-3 ftco-animate">
	          <div class="heading-section mb-4 my-5 my-md-0">
	          	<span class="subheading">About</span>
	            <h2 class="mb-4">Mental Health</h2>
	          </div>
	          <p>Mental health includes our emotional, psychological, and social well-being. It affects how we think, feel, and act. It also helps determine how we handle stress, relate to others, and make healthy choices. Mental health is important at every stage of life, from childhood and adolescence through adulthood.</p>
						<pc class="time"> 
							<span><strong>  </strong></span>
							<span><a href="#"></a></span>
						</p>
					</div>
				</div>
			</div>
		</section>

		
		<section class="ftco-section ftco-counter img ftco-no-pt" id="section-counter">
    	<div class="container">
    		<div class="row d-md-flex">
    			<div class="col-md-9">
    				<div class="row d-md-flex align-items-center">
		          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="300">0</strong>
		                <span>Types </span>
		              </div>
		            </div>
		          </div>
		         
		          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="7">0</strong>
		                <span>General signs</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="5">0</strong>
		                <span>Top Mental Illness</span>
		              </div>
		            </div>
		          </div>
				  <div class="col-md-6 col-lg-3 mb-4 mb-lg-0 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="6">0</strong>
		                <span>Top Types of Treatment </span>
		              </div>
		            </div>
		          </div>
	          </div>
          </div>
          <div class="col-md-3 text-center text-md-left">
          	<p>"Slow breathing is like an anchor in the midst of an emotional storm: the anchor won't make the storm go away, but it will hold you steady until it passes." — Russ Harris</p>
          </div>
        </div>
    	</div>
    </section>

		<section class="ftco-section bg-light">
			<div class="container">
				<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-12 text-center heading-section ftco-animate">
          	<span class="subheading">Services</span>
            <h2 class="mb-4">Our Services</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4 d-flex align-self-stretch ftco-animate text-center">
            <div class="media block-6 services d-block">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span ><img src="images/pilates.png" style="height: 35px;width:35px"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">MEDITATE</h3>
                <p>  </p>
              </div>
            </div>      
          </div>
          <div class="col-md-4 d-flex align-self-stretch ftco-animate text-center">
            <div class="media block-6 services d-block">
              <div class="icon d-flex justify-content-center align-items-center">
				<span ><img src="images/boy.png" style="height: 35px;width:35px"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">SLEEP</h3>
                <p>  </p>
              </div>
            </div>    
          </div>
          <div class="col-md-4 d-flex align-self-stretch ftco-animate text-center">
            <div class="media block-6 services d-block">
              <div class="icon d-flex justify-content-center align-items-center">
				<span ><img src="images/music-therapy.png" style="height: 35px;width:35px"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">MUSIC</h3>
                <p>  </p>
              </div>
            </div>      
          </div>
		  <div class="col-md-4 d-flex align-self-stretch ftco-animate text-center">
            <div class="media block-6 services d-block">
              <div class="icon d-flex justify-content-center align-items-center">
				<span ><img src="images/yoga (1).png" style="height: 35px;width:35px"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">MOVE</h3>
                <p>  </p>
              </div>
            </div>      
          </div>
		  <div class="col-md-4 d-flex align-self-stretch ftco-animate text-center">
            <div class="media block-6 services d-block">
              <div class="icon d-flex justify-content-center align-items-center">
				<span ><img src="images/calm.png" style="height: 35px;width:35px"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">THERAPEUTIC EXERCISES</h3>
                <p>  </p>
              </div>
            </div>      
          </div>
		  <div class="col-md-4 d-flex align-self-stretch ftco-animate text-center">
            <div class="media block-6 services d-block">
              <div class="icon d-flex justify-content-center align-items-center">
				<span ><img src="images/journalism.png" style="height: 35px;width:35px"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">DIARY</h3>
                <p>  </p>
              </div>
            </div>      
          </div>
        </div>
			</div>
		</section>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row no-gutters justify-content-center mb-5 pb-2">
          <div class="col-md-12 text-center heading-section ftco-animate">
          	<span class="subheading">Guided</span>
            <h2 class="mb-4">Meditations</h2>
          </div>
        </div>

        <div class="row no-gutters d-flex align-items-stretch">
        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
              <div class="menu-img img" style="background-image: url(images/back11.png);"></div>
              
              <div class="text d-flex align-items-center">
								<div>
	              	<div class="d-flex">
		                <div class="one-half">
		                  <h3>Anxiety and Panic Attacks</h3>
		                </div>
		                
		              </div>
		              <p><span>Meditation</span>, <span>Breathing</span>, <span>Mindfulness</span>, <span>Counting breaths</span></p>
		              <p><a href="https://youtu.be/uLFN3cJ9Nyw" class="btn btn-primary">View now</a></p>
					  <div class="one-forth">
						<span class="price">10 min</span>
					  </div>
	              </div>
              </div>
            </div>
        	</div>
        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
              <div class="menu-img img" style="background-image: url(images/back2.png);"></div>
              <div class="text d-flex align-items-center">
								<div>
	              	<div class="d-flex">
		                <div class="one-half">
		                  <h3>Social Anxiety</h3>
		                </div>
		                
		              </div>
		              <p><span>Mindfulness</span>, <span>Acceptance</span>, <span>Social Anxiety</span></p>
		              <p><a href="https://youtu.be/gvlKzSusC9o" class="btn btn-primary">View now</a></p>
					  <div class="one-forth">
						<span class="price">16 min</span>
					  </div>
	              </div>
              </div>
            </div>
        	</div>

        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
              <div class="menu-img img order-md-last" style="background-image: url(images/back5.jpg);"></div>
              <div class="text d-flex align-items-center">
								<div>
	              	<div class="d-flex">
		                <div class="one-half">
		                  <h3>Anxiety & OCD</h3>
		                </div>
		                
		              </div>
		              <p><span>Sleep </span>, <span>Meditation</span></p>
		              <p><a href="https://youtu.be/yZ4aNCPFC7o" class="btn btn-primary">View now</a></p>
					  <div class="one-forth">
						<span class="price">2 h</span>
					  </div>
	              </div>
              </div>
            </div>
        	</div>
        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
              <div class="menu-img img order-md-last" style="background-image: url(images/back12.png);"></div>
              <div class="text d-flex align-items-center">
								<div>
	              	<div class="d-flex">
		                <div class="one-half">
		                  <h3>Hypnosis for Social Anxiety</h3>
		                </div>
		               
		              </div>
		              <p><span>Shyness</span>, <span>Social anxiety</span></p>
		              <p><a href="https://youtu.be/q-AzgjYQrzo" class="btn btn-primary">View now</a></p>
					  <div class="one-forth">
						<span class="price">1 h</span>
					  </div>
	              </div>
              </div>
            </div>
        	</div>

        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
              <div class="menu-img img" style="background-image: url(images/back13.png);"></div>
              <div class="text d-flex align-items-center">
								<div>
	              	<div class="d-flex">
		                <div class="one-half">
		                  <h3>GUIDED MEDITATION</h3>
		                </div>
		                
		              </div>
		              <p><span>Anxiety</span>, <span>PTSD</span>, <span>Panic</span>, <span>Stress</span></p>
		              <p><a href="https://youtu.be/YzRUEmqDJd8" class="btn btn-primary">View now</a></p>
					  <div class="one-forth">
						<span class="price">19 min</span>
					  </div>
	              </div>
              </div>
            </div>
        	</div>

        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
              <div class="menu-img img" style="background-image: url(images/back27.jpg);"></div>
              <div class="text d-flex align-items-center">
								<div>
	              	<div class="d-flex">
		                <div class="one-half">
		                  <h3>GUIDED MEDITATION</h3>
		                </div>
		                
		              </div>
		              <p><span>Easy Anxiety</span>, <span>Worry</span></p>
		              <p><a href="https://youtu.be/JnnS2-8t59c" class="btn btn-primary">View now</a></p>
					  <div class="one-forth">
						<span class="price">15 min</span>
					  </div>
	              </div>
              </div>
            </div>
        	</div>
        </div>
    	</div>
    </section>
    
		<section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-12 text-center heading-section ftco-animate">
          	<span class="subheading">Psychologist</span>
            <h2 class="mb-4">Our Psychologists</h2>
          </div>
        </div>	
				<div class="row">
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img" style="background-image: url(images/ps1.jpg);"></div>
							<div class="text pt-4">
								<h3>Emira White</h3>
								<span class="position mb-2">Psychologist</span>
								<div class="faded">
									<ul class="ftco-social d-flex">
		                
		              </ul>
	              </div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img" style="background-image: url(images/ps2.jpg);"></div>
							<div class="text pt-4">
								<h3>Avena Adams</h3>
								<span class="position mb-2">Psychologist</span>
								<div class="faded">
									<ul class="ftco-social d-flex">
		               
		              </ul>
	              </div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img" style="background-image: url(images/ps3.jpg);"></div>
							<div class="text pt-4">
								<h3>Jason Miller</h3>
								<span class="position mb-2">Psychologist</span>
								<div class="faded">
									<ul class="ftco-social d-flex">
		          
		              </ul>
	              </div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img" style="background-image: url(images/ps4.jpg);"></div>
							<div class="text pt-4">
								<h3>Loriana Russel</h3>
								<span class="position mb-2">Psychologist</span>
								<div class="faded">
									<ul class="ftco-social d-flex">
		               
		              </ul>
	              </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="ftco-section img" style="background-image: url(images/back20.jpg)" data-stellar-background-ratio="0.5">
			<div class="container">
				<div class="row d-flex">
          <div class="col-md-7 ftco-animate makereservation p-4 px-md-5 pb-md-5">
          	<div class="heading-section ftco-animate mb-5 text-center">
	          	<span class="subheading">Book a session</span>
	            <h2 class="mb-4">Make an appointment</h2>
	          </div>
            <form action="#">
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Name</label>
					  <asp:TextBox id="Name" runat="server" type="text" class="form-control" placeholder="Your Name" />
                    
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Email</label>
					  <asp:TextBox id="Email" runat="server" type="text" class="form-control" placeholder="Your Email" />
                   
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Phone</label>
                    <asp:TextBox id="Phone" runat="server" type="text" class="form-control" placeholder="Phone"/>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Date</label>
                    <asp:TextBox runat="server" type="text" class="form-control" id="book_date" placeholder="Date"/>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Time</label>
                    <asp:TextBox runat="server" type="text" class="form-control" id="book_time" placeholder="Time"/>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Doctor</label>
                    <div class="select-wrap one-third">
                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                      <asp:DropDownList ID="dropdownList" runat="server" CssClass="form-control">
					</asp:DropDownList>

                    </div>
                  </div>
                </div>
                <div class="col-md-12 mt-3">
                  <div class="form-group text-center">
                    <asp:Button ID="Submit" runat="server" Text="Make an appointment" type="submit" value="Make an appointment" class="btn btn-primary py-3 px-5" OnClick="submit_Click"/>
                  </div>
                </div>
              </div>
            </form>
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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    </form>
</body>
</html>

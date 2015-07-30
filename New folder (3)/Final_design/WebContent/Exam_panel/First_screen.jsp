<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<title>Genpact Quiz Portal</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />


 <link rel="stylesheet" href="css/style2.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js?ver=1.4.2"></script>
    <script src="js/login.js"></script>
	
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
<!--start-smoth-scrolling-->
</head>
<body>
	<!--start-header-->
	<div class="header" id="home">
		<div class="container">
			<div class="head">
			
				<a href="index.html"><img src="images/logo.png" alt=""/></a>
			
			  <a href="#" id="loginButton"><span>Login</span><em></em></a>
                <div style="clear:both"></div>
                <div id="loginBox">                
                    
                     <form method="post" action="Valid_user.jsp" id="loginForm">
                        <fieldset id="body">
                            <fieldset>
                                <label for="email">UserName</label>
                                <input type="text" name="Username" id="email" require/>
                            </fieldset>
                            <fieldset>
                                <label for="password">Password</label>
                                <input type="password" name="password" id="password" require/>
                            </fieldset>
                            <input type="submit" id="login" value="Sign in" />
                        </fieldset>
                        <span><a href="../Login_Form.jsp">New Sign_Up?</a></span>
                    </form>
                </div>
				<div class="clearfix"></div>
			</div>
			</div>
			
			
			
		</div>	
	<!-- script-for-menu -->
	<!-- script-for-menu -->
		<script>
			$("span.menu").click(function(){
				$(" ul.navig").slideToggle("slow" , function(){
				});
			});
		</script>
	<!-- script-for-menu -->
	<!--start-banner-->
	<div class="specials">
		<div class="container">
			
		</div>
	</div>
	<!--end-banner-->
	<!---start-date-piker---->
		<link rel="stylesheet" href="css/jquery-ui.css" />
		
	<!---/End-date-piker---->
	<!--<div class="additional">-->
		<div class="container">	
			<div class="additional-top heading">
			<br><br>
				<center><h3>OUR SERVICES</h3></center>
			</div>
			<div class="additional-bottom">
				<div class="col-md-4 add-left">
					<h4>Business Consulting</h4>
					<p>Move Quickly From Vision To Value .Our  team integrates and adapts with the needs of your organization using proven methods, standards and approaches</p>
					
					<ul>
						<li>Rapid Regulatory Changes Create Constant Challenge.</li>
						<li>Experts At Managing And Maintaining Your Data.</li>
						<li>Derivatives / Post Trade Services That Work</li>
					</ul>
				</div>
				<div class="col-md-4 add-left">
					<h4>Financial Markets Solutions</h4>
					<p>Our Financial Markets Solutions are aligned to this goal. We deliver value to our clients by addressing the above challenges in the industry & Transformation: by taking out costs, restructuring .</p>
					<ul>
						<li>Business Outcome Based Advisory Services.</li>
						<li>Business Function Management Services.</li>
						<li>Reference Data Advisory Services.</li>
					</ul>
				</div>
				<div class="col-md-4 add-left">
					<h4>Application Development </h4>
					<p>A global leader in application development, management and maintenance, Headstrong creates high-quality applications scaled to meet your needs while reducing your costs.</p>
					<ul>
						<li>Application development & Application transformation.</li>
						<li>Enterprise package implementation and migration.</li>
						<li>Business process outsourcing.</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>	
	<!--</div>-->
	<!--start-how-->
	
		<div class="special">
		<div class="container">
			<div class="special-main">
				<div class="col-md-6 special-left heading">
					<!--<h3>OUR FOCUS & Approach</h3>-->
				</div>
				<div class="col-md-6 special-left">
					<p>We’re dedicated to the financial services industry. Our experts focus on the industryâ€™s unique issues to deliver real value and create your competitive advantage. We believe in high-touch account management centered on your needs at all times, during change, during growth and during streamlining.</p>
					<P></P>
				
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	
	
	<!--end-how-->
	<!--start-about-->
	<div class="about">
		<div class="container">
			<div class="about-top heading">
				<h3>ABOUT US</h3>
			</div>
			<div class="about-bottom">
				<p>Genpact (NYSE: G) stands for “generating business impact.” We design, transform, and run intelligent business operations including those that are complex and specific to a set of chosen industries. The result is advanced operating models that foster growth and manage cost, risk, and compliance across a range of functions such as finance and procurement, financial services account servicing, claims management, regulatory affairs, and industrial asset optimization. Our hundreds of long-term clients include more than one-fourth of the Fortune Global 500 – and of those, over 10 are in the top 25.</p>
				<p>Much of today’s conversation regarding new social, mobile, analytics, and cloud technologies (SMAC) is misleading. The debate should focus on the ability to reimagine processes through the use of technology and analytics. </p>
				
			</div>
		</div>
	</div>
	<!--end-about-->

	<!--FlexSlider-->
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
    $(function(){
      SyntaxHighlighter.all();
    });
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
		});
		</script>
	</div>
			<!--End-slider-script-->
	<!--start-footer-->
	<div class="footer">
		<div class="container">
		
			<div class="touch-bottom">
				<ul>
					<li><a href="https://www.facebook.com/ProudToBeGenpact"><span class="fb"> </span></a></li>
					<li><a href="https://twitter.com/genpact_ltd"><span class="twit"> </span></a></li>
					<li><a href="#"><span class="google"> </span></a></li>
				</ul>
			</div>
			<div class="footer-top">
				<p class="footer-class">Copyright © Genpact 2015. All Rights Reserved. Privacy | Terms & Conditions </p>
			</div>
		</div>
	
		
	</div>
	<!--end-footer-->
</body>
</html>
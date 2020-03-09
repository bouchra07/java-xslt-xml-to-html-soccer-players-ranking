<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">

	<xsl:template match="/">
		<html>
	<head>
		<style>
			.post-date{ text-align:center; color:#FFF; font-weight:50; font-size:14px; line-height:18px; text-transform:uppercase; display:block; background-color:#c94c4c; width:50px; height:50px; position:absolute; left:0; top:0; padding-top:25px; z-index:50}
			.post-date span{ font-size:15px; line-height:0px; display:block}
			
		</style>
		

	<meta charset="utf-8"></meta>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"></meta>
	<title>Players Ranking List</title>
	<meta name="viewport" content="width=device-width, initial-scale=1"></meta>
	

	

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet"></link>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css"></link>
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css"></link>
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css"></link>
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css"></link>

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css"></link>

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.min.css"></link>

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css"></link>
	<link rel="stylesheet" href="css/owl.theme.default.min.css"></link>

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css"></link>


	<script src="js/modernizr-2.6.2.min.js"></script>
	
		</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<!-- <div class="page-inner"> -->
		<nav class="gtco-nav" role="navigation">
			<div class="gtco-container">
				
				<div class="row">
					<div class="col-sm-4 col-xs-12">
						<div id="gtco-logo"><a href="Players.html">FIFA17 <em>.</em></a></div>
					</div>
					<div class="col-xs-8 text-right menu-1">
						<ul>
							
							<li><a href="https://www.easports.com/fifa/fifa-17-player-ratings-top-50#3to1">Website</a></li>
						</ul>	
					</div>
				</div>
				
			</div>
		</nav>
		
		<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/fifa4.jpg)">
			<div class="overlay"></div>
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-12 col-md-offset-0 text-left">
						<div class="row row-mt-15em">
	
							<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
								<span class="intro-text-small">FIFA17</span>
								<h1>TOP Players</h1>	
							</div>
							
						</div>
						
					</div>
				</div>
			</div>
		</header>
	
	<div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>TOP Best Players </h2>
					<p>Based on their performances over the last 365 days in league and cup competitions, these are the 6 top-rated players in FIFA 17 and FIFA 17 Ultimate Team™.</p>
				</div>
			</div>
			<div class="row">


				
			<xsl:for-each select="Players/Player">
			<xsl:sort select="rank"/>
				<div  class="col-lg-4 col-md-4 col-sm-6">
					<a style="height:80%;"  class="fh5co-card-item" data-toggle="modal">
					<xsl:attribute name="data-target">#<xsl:value-of select='modal' /></xsl:attribute>
						<figure>
							<div class="post-date">
								<span><xsl:value-of select="rank" /></span>
							</div>
							<div class="overlay"><i class="ti-plus"></i></div>
										<img alt="Image" class="img-responsive"><xsl:attribute name="src">images/<xsl:value-of select='picture' /></xsl:attribute></img>
						</figure>
						<div class="fh5co-text">
							<h2><xsl:value-of select="Name" /></h2>
							<p><xsl:value-of select="details" /></p>
							<p><span class="btn btn-primary">Details</span></p>
						</div>
					</a>
					<div class="  modal fade" >
					<xsl:attribute name="id"><xsl:value-of select='modal' /></xsl:attribute>
						<div class="modal-dialog">
						  <div  class="fh5co-card-item modal-content">
					  
							<!-- Modal Header -->
							
					  	
				<div class="col-md-8 col-md-offset-2 text-center">
				<br></br>
					<h2>Player's Details </h2>
				</div>
		
							<!-- Modal body -->
							<div class=" modal-body">
								<div class="row card text-center border border-light p-5" >
									<div class="col-lg-6 col-md-6 col-sm-6">
										<figure class="col-md-8 col-md-offset-2 text-center">
										<img style=" height:100%" alt="Image" class="img-responsive"><xsl:attribute name="src">images/<xsl:value-of select='picturemodal' /></xsl:attribute></img>
											
										</figure>
									</div>
									
									
						
									<div class="col-lg-6 col-md-6 col-sm-6">
									<br></br>
										<table class="col-md-8 col-md-offset-2 text-center">
											<tr>
												<th>
													Name
												</th>
											</tr>
											<tr>
												<td class="text-left"> <xsl:value-of select="Name" /></td>
											</tr>
											<tr>
												<th>
													Date of Birth
												</th>
											</tr>
											<tr>
												<td class="text-left"><xsl:value-of select="Age" /></td>
											</tr>

											<tr><th>Team</th></tr>
											<tr><td class="text-left"><xsl:value-of select="Team" /></td></tr>

											<tr><th>Preferred foot</th></tr>
											<tr><td class="text-left"><xsl:value-of select="foot" /></td></tr>

										</table>
									</div>

									
									
								</div>
							</div>
					  
						  </div>
						</div>
					  </div>
				</div>
				</xsl:for-each>
				<!--here-->
				

			</div>
		</div>
	</div>
	
	<div>
	<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h1>For additional information please visit Fifa's offical website <strong><a href="https://www.easports.com/fifa/fifa-17-player-ratings-top-50#3to1">here</a></strong> </h1>
				</div>
			</div>
	</div>
	
	
	
	

		<footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">
			

			<div class="row copyright">
				<div class="col-md-12">
					<p class="pull-left">
						<small class="block"> 2020 </small> 
						<small class="block">Designed by Bouchra Ouahabi Alhassani</small>
					</p>
					<p class="pull-right">
						<ul class="gtco-social-icons pull-right">
							<li><a href="https://www.facebook.com/profile.php?id=100010130739454"><i class="icon-facebook"></i></a></li>
							<li><a href="https://www.linkedin.com/in/bouchra-ouahabi-alhassani/"><i class="icon-linkedin"></i></a></li>
						</ul>
					</p>
				</div>
			</div>

		</div>
	</footer>
	

	
	<!-- </div> -->

	</div>


	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>

	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	
	<!-- Datepicker -->
	<script src="js/bootstrap-datepicker.min.js"></script>
	

	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>

	</xsl:template>
</xsl:stylesheet>
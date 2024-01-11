<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminedit.aspx.cs" Inherits="ONEXSYS.adminedit" %>

<!doctype html>
<html lang="en">
  <head>
  	<title>ADMIN LOGIN</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="cssH/style.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h1 class="heading-section">WELCOME ADMIN</h1>
				</div>
			</div>
		</div>
		
		<div class="container-fluid px-md-5">
			<div class="row justify-content-between">
				<div class="col-md-8 order-md-last">
					<div class="row">
						<div class="col-md-6 text-center">
							<a class="navbar-brand" href="adminedit.aspx">GO <span>ANALYZE</span></a>
						</div>
						<div class="col-md-6 d-md-flex justify-content-end mb-md-0 mb-3">
							<form action="#" class="searchform order-lg-last">
			          <div class="form-group d-flex">
			           <%-- <input type="text" class="form-control pl-3" placeholder="Search">--%>
			            <a href="HPAGE.aspx" class="btn btn-default wow fadeInUp" data-wow-offset="50" data-wow-delay="0.6s">HOME</a>
			          </div>
			        </form>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex">
					<div class="social-media">
		    		<p class="mb-0 d-flex">
		    			<%--<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
		    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
		    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
		    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>--%>
		    		</p>
	        </div>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container-fluid">
	    
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <%--<span class="fa fa-bars"></span> Menu--%>
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav m-auto">
	        	<%--<li class="nav-item active"><a href="#" class="nav-link">Home</a></li>--%>
	        	<%--<li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">EDIT</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
              	<a class="dropdown-item" href="#">DBMS</a>
                <a class="dropdown-item" href="#">C LANGUAGE</a>
                <a class="dropdown-item" href="#">PYTHON</a>
                <a class="dropdown-item" href="#">HTML</a>
              </div>
            </li>--%>
				<li class="nav-item"><a href="SETP.aspx" class="nav-link">SET PAPER</a></li>
	        	<li class="nav-item"><a href="preview.aspx" class="nav-link">PREVIEW</a></li>
				<li class="nav-item"><a href="DELP.aspx" class="nav-link">DELETE PAPER </a></li>
	        	<%--<li class="nav-item"><a href="report.aspx" class="nav-link">VIEW RESULTS</a></li>--%>
	          <li class="nav-item"><a href="LOG_IN.aspx" class="nav-link">LOGOUT</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

	</section>

		
			<p align ="top"><center><img src="pics/portfolio-img2.jpg" height="900" width="1500" /></center></p>
		

		  <footer id="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <p class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s">
                        Go Analyze &copy; Copyright 2022. Designed By Nandini Das</p>
                    </div>
                </div>
            </div>
        </footer>

	<script src="jsh/jquery.min.js"></script>
  <script src="jsh/popper.js"></script>
  <script src="jsh/bootstrap.min.js"></script>
  <script src="jsh/main.js"></script>

	</body>
</html>


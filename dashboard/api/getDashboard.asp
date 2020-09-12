<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<meta name="description" content="Smarthr - Bootstrap Admin Template">
	<meta name="keywords"
		content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
	<meta name="author" content="Dreamguys - Bootstrap Admin Template">
	<meta name="robots" content="noindex, nofollow">
	<title>Dashboard</title>
<!-- custom testbackground start-->
<style>
	.card-title {
		font-size: 15px;
		font-family: "roboto", sans-serif;
		font-weight: 500;
		color: #212229;
	}

	.tabs-div .tab-content {
		background-color: #A34FFE;
	}

	/*------ Card -------*/
	.card {
		position: relative;
		display: -ms-flexbox;
		display: flex;
		-ms-flex-direction: column;
		flex-direction: column;
		min-width: 0;
		border-radius: 3px;
		background-color: #fff;
		word-wrap: break-word;
		border: 1px solid #e2ebf7 !important;
		box-shadow: 0 0 3px rgba(31, 30, 47, .05);
		margin-bottom: 10px;
	}

	.card>hr {
		margin-right: 0;
		margin-left: 0;
	}

	.card>.list-group:first-child .list-group-item:first-child {
		border-top-left-radius: 3px;
		border-top-right-radius: 3px;
	}

	.card>.list-group:last-child .list-group-item:last-child {
		border-bottom-right-radius: 7px;
		border-bottom-left-radius: 7px;
	}

	.card-body {
		-ms-flex: 1 1 auto;
		flex: 1 1 auto;
		padding: 1.5rem;
	}

	.text-black {
		color: black;
	}


	.card-subtitle {
		margin-top: -0.75rem;
		margin-bottom: 0;
	}

	.card-text:last-child {
		margin-bottom: 0;
	}

	.card-link:hover {
		text-decoration: none;
	}

	.card-link+.card-link {
		margin-left: 1.5rem;
	}

	.card-header {
		padding: 1 rem;
		margin-bottom: 0;
		background-color: transparent;
		border-bottom: 1px solid #eaf0f7;
	}

	.card-header+.list-group .list-group-item:first-child {
		border-top: 0;
	}

	.card-footer {
		padding: 1.5rem 1.5rem;
		background-color: rgba(0, 0, 0, 0.03);
		border-top: 1px solid #eaf0f7;
	}

	.card-footer:last-child {
		border-radius: 0 0 calc(3px - 1px) calc(3px - 1px);
	}

	.card-header-tabs {
		margin-right: -0.75rem;
		margin-bottom: -1.5rem;
		margin-left: -0.75rem;
		border-bottom: 0;
	}

	.card-header-pills {
		margin-right: -0.75rem;
		margin-left: -0.75rem;
	}

	.card-img-overlay {
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		padding: 1.25rem;
	}

	.card-img {
		width: 100%;
		border-radius: calc(3px - 1px);
	}

	.card-img-top {
		width: 100%;
		border-top-left-radius: calc(3px - 1px);
		border-top-right-radius: calc(3px - 1px);
	}

	.card-img-bottom {
		width: 100%;
		border-bottom-right-radius: calc(3px - 1px);
		border-bottom-left-radius: calc(3px - 1px);
	}

	.card-deck {
		display: -ms-flexbox;
		display: flex;
		-ms-flex-direction: column;
		flex-direction: column;
	}

	.card-deck .card {
		margin-bottom: 0.75rem;
	}

	.card-group {
		display: -ms-flexbox;
		display: flex;
		-ms-flex-direction: column;
		flex-direction: column;
	}

	.card-shadow-0 {
		box-shadow: none !important;
	}

	.card-group>.card {
		margin-bottom: 0.75rem;
	}

	.card-columns .card {
		margin-bottom: 1.5rem;
	}

	/*------ Card -------*/

	.bgcolor-custom {
		background-color: #4084eb;
	}



	.card-title {
		font-size: 20px;
	}

	.card-bgcolor {
		background-color: #05d4ab !important;
	}

	.card p {
		margin-bottom: 0px;
	}

	.text-dark {
		width: 300px;
		margin: 0 auto;
	}

	.head-area .head-content {
		background: #1c0150 url('assets/img/bg1.png') top right fixed no-repeat;
		background-size: cover;
	}

	.timer {
		background: #FE4004;
		padding: 10px 20px;
		border-radius: 10px;
		font-size: 4vh;
		font-family: "Bebas Neue";
		margin: 30px 0;
		color: #fff;
	}

	.launching {
		color: #fff;
		font-family: "Bebas Neue";
		margin: 10px 0 -25px;
		font-size: 5vh;
	}

	svg#loader {
		background: #032735;
	}

	.head-area .head-content {
		background: #1c0150 url('assets/img/bg1.png') top right fixed no-repeat;
		background-size: cover;
	}

	iframe {
		width: 640px;
		height: 360px;
		text-align: center;
		margin: 0 auto;
		margin-left: auto;
		margin-right: auto;
		display: block;
	}

	.head-area .head-content {
		background: #1c0150 url('/dashboard/assets/img/bg1.png') top right fixed no-repeat;
		background-size: cover;
		background-position: top right;
		/**background-color: black;**/
	}

	.btn-gradient-orange {
		-webkit-transition: 0.5s;
		-o-transition: 0.5s;
		-moz-transition: 0.5s;
		transition: 0.5s;
		background-image: linear-gradient(40deg, #dd167f 20%, #dd167f 51%, #fd2828 90%);
		background-image: linear-gradient(40deg, #dd167f 20%, #dd167f 51%, #dd167f 90%);
		background-image: linear-gradient(40deg, #dd167f 20%, #dd167f 51%, #dd167f 90%);
		background-image: linear-gradient(40deg, #dd167f 20%, #dd167f 51%, #dd167f 90%);
		background-position: left center;
		-webkit-background-size: 200% auto;
		background-size: 200% auto;
		border: 0;
		color: #FFFFFF;
	}

	.btn-gradient-orange.btn-glow {
		-webkit-box-shadow: 0 0 12px 0 #FF5F2B;
		box-shadow: 0 0 12px 0 #FF5F2B;
		margin: 8px;
		padding: 10px 25px;
		font-size: 1.7vh;
	}

	@media (max-width: 575.98px) {

		.head-area .head-content {
			min-height: 660px;
		}

		.img-fluid,
		.img-thumbnail {
			max-width: 80%;
			height: auto;
		}

		.img-fluid,
		.img-thumbnail {
			max-width: 80%;
			height: auto;
		}

		.head-area .head-content .container 

		.timer {
			background: #FE4004;
			padding: 0px 20px;
			border-radius: 10px;
			font-size: 37px;
			font-family: "Bebas Neue";
			margin: 30px 0;
		}

		iframe {
			width: 100%;
			height: auto;
			text-align: center;
			margin: 0 auto;
			margin-left: auto;
			margin-right: auto;
			display: block;
			margin-top: 30px;
		}

		.btn-gradient-orange.btn-glow {
			-webkit-box-shadow: 0 0 12px 0 #FF5F2B;
			box-shadow: 0 0 12px 0 #FF5F2B;
			margin: 8px;
			padding: 10px 25px;
			font-size: 1.7vh;
			width: calc(50% - 30px);
		}
	}

	@media (min-width: 1200px) {
		.container {
			max-width: 1460px;
		}
	}
</style>
<!-- custom testback ground end-->
	<!-- custom test start-->
/>
<link
rel="stylesheet"
type="text/css"
href="assets/css/main.css"
/>
<link
rel="stylesheet"
type="text/css"
href="assets/css/custom.css"
/>
<link
rel="stylesheet"
type="text/css"
href="assets/css/animate.min.css"
/>
<link
rel="stylesheet"
type="text/css"
href="assets/css/util.css"
    />

<!-- custom test end -->
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">

	<!-- Fontawesome CSS -->
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<!-- Lineawesome CSS -->
	<link rel="stylesheet" href="assets/css/line-awesome.min.css">

	<!-- Chart CSS -->
	<link rel="stylesheet" href="assets/plugins/morris/morris.css">

	<!-- Main CSS -->
	<link rel="stylesheet" href="assets/css/style.css">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	
	<link rel="icon" href="/dashboard/assets/img/favicon.ico" sizes="16x16" />	

		
</head>

<body>
	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<div class="header">

			<!-- Logo -->
			<div class="header-left">
				<a href="index.html" class="logo">
					<img src="assets/img/web.png" height="40" alt="">
				</a>
			</div>
			<!-- /Logo -->
			


			<!-- Mobile Menu -->
			<div class="dropdown mobile-user-menu">
				<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i
						class="fa fa-ellipsis-v"></i></a>
				<div class="dropdown-menu dropdown-menu-right">
					<a class="dropdown-item" href="/dashboard/dashboard.html">Dashboard</a>
					<a class="dropdown-item" href="javascript:logout(0)">Logout</a>
				</div>
			</div>
			<!-- /Mobile Menu -->
			<!-- Header Title -->
			<div class="page-title-box">
				<h3 class="text-truncate">Your TRON Address :
					<a id="walletAddress" class="text-white" target="_blank">

					</a></h3>
			</div>
			<!-- /Header Title -->

			<div class="page-title-box page-title-box1">
				<h3>
					<td><a href="/dashboard/dashboard.html" class="text-white">Dashboard</a></td>
				</h3>
				<h3>
					<td><a href="javascript:logout(0)" class="text-white">Logout</a></td>
				</h3>
			</div>


		</div>
		<!-- /Header -->



		<!-- Page Wrapper -->
		<div class="page-wrapper">

			<!-- Page Content -->
			<div class="content container-fluid">

				<!-- Page Header -->

				<!-- /Page Header -->
				<!-- /log in start -->
					<div class="wrap-input100 validate-input m-b-10 row mr-2 ml-2">
						<!-- <button class="btn btn-primary mb-2 bg-danger col-lg-12" type="button" id="pool1btn"
										onclick="buyNewLevel('1')">Buy</button> -->
						<input class="btn btn-primary mb-2 text-left col-lg-9" style="background-color: white; color: black;" type="text" name="username" id="affiliateLink"
							placeholder="Affiliate Link" readonly>						
						<button class="btn btn-primary mb-2 bg-danger col-lg-3" onclick="copyToClipboard($('#affiliateLink').val())">
							Copy
						</button>
					</div>
			
					<div class="wrap-input100 validate-input m-b-10" data-validate="Username is required">
						<input class="input100" type="text" name="username" id="email"
							placeholder="Enter your Tron address">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>
					<div class="container-login100-form-btn p-t-10">
						<button class="login100-form-btn" onclick="loginwithID($('#email').val())">
							Login
						</button>
					</div>
					<!-- /log in end -->
					<!-- /register start -->

					<span class="login100-form-title p-t-20"> &nbsp; </span>

            <div
              class="wrap-input100 validate-input m-b-10"
              data-validate="Username is required"
            >
              <input
                class="input100"
                type="text"
                id="#email"
                name="username"
                placeholder="Enter your sponsor ID"
              />
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-user"></i>
              </span>
            </div>

            <div class="container-login100-form-btn p-t-10">
              <button class="login100-form-btn" onclick="register()">
                Submit
              </button>
            </div>

			<!-- /register end -->
				<div class="row">
					<div class="col-md-12 col-lg-6 col-xl-4 d-flex">
						<div class="card flex-fill">
							<div class="card-body">
								<h3 class="text-center">Self</h3>
								<div>
									<p><i class="fa fa-dot-circle-o text-warning mr-2"></i>Address <span
											class="float-right"
											style="width: 50%; overflow: hidden;white-space: nowrap; text-overflow: ellipsis;"
											id=""><a href="#" id="selfAddress" target="_blank">00</a></span></p>
									<p><i class="fa fa-dot-circle-o text-danger mr-2"></i>ID <span class="float-right"
											id="selfId">1</span></p>
									<p><i class="fa fa-dot-circle-o text-success mr-2"></i>Date <span
											class="float-right" id="selfJoinDate">00-00-0000</span></p>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-12 col-lg-6 col-xl-4 d-flex">
						<div class="card flex-fill">
							<div class="card-body">
								<h3 class="text-center">Sponsor</h3>
								<div>
									<p><i class="fa fa-dot-circle-o text-warning mr-2"></i>Address<span
											class="float-right"
											style="width: 50%; overflow: hidden;white-space: nowrap; text-overflow: ellipsis;"
											id=""><a href="#" id="sponsorAddress" target="_blank">00</a></span></p>
									<p><i class="fa fa-dot-circle-o text-danger mr-2"></i>ID <span class="float-right"
											id="sponsorId">0</span></p>
									<p><i class="fa fa-dot-circle-o text-success mr-2"></i>Date <span
											class="float-right" id="sponsorJoinDate">00-00-0000</span></p>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-12 col-lg-6 col-xl-4 d-flex">
						<div class="card flex-fill">
							<div class="card-body">
								<h3 class="text-center">Contract</h3>
								<div>
									<p><i class="fa fa-dot-circle-o text-warning mr-2"></i>Address <span
											class="float-right "
											style="width: 50%; overflow: hidden;white-space: nowrap; text-overflow: ellipsis;"><a
												href="#" id="contractAddress" target="_blank">00</a></span></p>
									<p><i class="fa fa-dot-circle-o text-danger mr-2"></i>Total Users <span
											class="float-right" id="totalUsers">0</span></p>
									<p><i class="fa fa-dot-circle-o text-success mr-2"></i>24hrs Users <span
											class="float-right" id="hoursUsers">0</span></p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- <div class="row">
					<div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
						<div class="card dash-widget">
							<div class="card-body">
								<span class="dash-widget-icon"><i class="fa fa-cubes"></i></span>
								<div class="dash-widget-info">
									<h3 id="referralIncome">0</h3>
									<span>Referral Income</span>
								</div>

							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
						<div class="card dash-widget">
							<div class="card-body">
								<span class="dash-widget-icon"><i class="fa fa-usd"></i></span>
								<div class="dash-widget-info">
									<h3 id="autoPoolIncome">0</h3>
									<span>Autopool Income</span>
								</div>

							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
						<div class="card dash-widget">
							<div class="card-body">
								<span class="dash-widget-icon"><i class="fa fa-diamond"></i></span>
								<div class="dash-widget-info">
									<h3 id="splsponsorIncome">0</h3>
									<span>Spl Sponsor Income</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
						<div class="card dash-widget">
							<div class="card-body">
								<span class="dash-widget-icon"><i class="fa fa-user"></i></span>
								<div class="dash-widget-info">
									<h3 id="partnersCount">0</h3>
									<span>Direct Team</span>
								</div>
							</div>
						</div>
					</div>
				</div> -->

				<!-- <div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-6 text-center">
								<div class="card">
									<div class="card-body">
										<h3 class="card-title">Total Revenue</h3>
										<div id="totalEarnings">0</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 text-center">
								<div class="card">
									<div class="card-body">
										<h3 class="card-title">Total Users</h3>
										<div id="totalUsers">0</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 text-center">
								<div class="card">
									<div class="card-body">
										<h3 class="card-title">User ID</h3>
										<div id="loggedId">0</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 text-center">
								<div class="card">
									<div class="card-body">
										<h3 class="card-title">Sponsor ID</h3>
										<div id="sponsorId">0</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> -->

				<div class="row">
					<div class="col-md-12">
						<div class="card-group m-b-30">
							<!-- <div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between mb-3">
										<div>
											<span class="d-block">Registration</span>
										</div>
										
									</div>
									<h3 class="mb-3">250 TRX</h3>

									<button class="btn btn-primary col-lg-12 mb-2 bg-success" type="button"
										id="pool0btn">Registered</button>

									<p class="mb-0">Earned : <span id="totalMemEarned"></span></p>
								</div>
							</div> -->

							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between mb-3">
										<div>
											<span class="d-block">Registation </span>
										</div>
										<!-- <div>
											<span class="text-success">+12.5%</span>
										</div> -->
									</div>
									<h3 class="mb-3">100 TRX</h3>

									<button class="btn btn-primary mb-2 bg-danger col-lg-12" type="button" id="pool1btn"
										onclick="buyNewLevel('1')">Buy</button>
									<p class="mb-0" style="visibility: hidden;">Reinvested : <span class="text-muted"
											id="pool1reinvestCount">0</span>
									</p>
								</div>
							</div>

							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between mb-3">
										<div>
											<span class="d-block">Autopool 1</span>
										</div>
										<!-- <div>
											<span class="text-success">+12.5%</span>
										</div> -->
									</div>
									<h3 class="mb-3">100 TRX</h3>

									<button class="btn btn-primary mb-2 bg-danger col-lg-12" type="button" id="pool2btn"
										onclick="buyNewLevel('2')">Not Eligible</button>
									<p class="mb-0">Reinvested : <span class="text-muted"
											id="pool2reinvestCount">0</span></p>
								</div>
							</div>

							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between mb-3">
										<div>
											<span class="d-block">Autopool 2</span>
										</div>
										<!-- <div>
											<span class="text-success">+12.5%</span>
										</div> -->
									</div>
									<h3 class="mb-3">200 TRX</h3>

									<button class="btn btn-primary mb-2 bg-danger col-lg-12" type="button" id="pool3btn"
										onclick="buyNewLevel('3')">Not Eligible</button>
									<p class="mb-0">Reinvested : <span class="text-muted"
											id="pool3reinvestCount">0</span></p>
								</div>
							</div>

						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="card-group m-b-30">
							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between mb-3">
										<div>
											<span class="d-block">Autopool 3</span>
										</div>
										<!-- <div>
											<span class="text-success">+12.5%</span>
										</div> -->
									</div>
									<h3 class="mb-3">400 TRX</h3>

									<button class="btn btn-primary mb-2 bg-danger col-lg-12" type="button" id="pool4btn"
										onclick="buyNewLevel('4')">Not Eligible</button>
									<p class="mb-0">Reinvested : <span class="text-muted"
											id="pool4reinvestCount">0</span></p>
								</div>
							</div>
							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between mb-3">
										<div>
											<span class="d-block">Autopool 4</span>
										</div>
										<!-- <div>
											<span class="text-success">+12.5%</span>
										</div> -->
									</div>
									<h3 class="mb-3">800 TRX</h3>

									<button class="btn btn-primary mb-2 bg-danger col-lg-12" type="button" id="pool5btn"
										onclick="buyNewLevel('5')">Not Eligible</button>
									<p class="mb-0">Reinvested : <span class="text-muted"
											id="pool5reinvestCount">0</span></p>
								</div>
							</div>

							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between mb-3">
										<div>
											<span class="d-block">Autopool 5</span>
										</div>
										<!-- <div>
											<span class="text-success">+12.5%</span>
										</div> -->
									</div>
									<h3 class="mb-3">1500 TRX</h3>

									<button class="btn btn-primary mb-2 bg-danger col-lg-12" type="button" id="pool6btn"
										onclick="buyNewLevel('6')">Not Eligible</button>
									<p class="mb-0">Reinvested : <span class="text-muted"
											id="pool6reinvestCount">0</span></p>
								</div>
							</div>



						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="card-group m-b-30">
							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between mb-3">
										<div>
											<span class="d-block">Autopool 6</span>
										</div>
										<!-- <div>
											<span class="text-success">+12.5%</span>
										</div> -->
									</div>
									<h3 class="mb-3">3000 TRX</h3>

									<button class="btn btn-primary mb-2 bg-danger col-lg-12" type="button" id="pool7btn"
										onclick="buyNewLevel('7')">Not Eligible</button>
									<p class="mb-0">Reinvested : <span class="text-muted"
											id="pool7reinvestCount">0</span></p>
								</div>
							</div>

							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between mb-3">
										<div>
											<span class="d-block">Autopool 7</span>
										</div>
										<!-- <div>
											<span class="text-success">+12.5%</span>
										</div> -->
									</div>
									<h3 class="mb-3">9000 TRX</h3>

									<button class="btn btn-primary mb-2 bg-danger col-lg-12" type="button" id="pool8btn"
										onclick="buyNewLevel('8')">Not Eligible</button>
									<p class="mb-0">Reinvested : <span class="text-muted"
											id="pool8reinvestCount">0</span></p>
								</div>
							</div>

							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between mb-3">
										<div>
											<span class="d-block">Autopool 8</span>
										</div>
										<!-- <div>
											<span class="text-success">+12.5%</span>
										</div> -->
									</div>
									<h3 class="mb-3">12000 TRX</h3>

									<button class="btn btn-primary mb-2 bg-danger col-lg-12" type="button" id="pool9btn"
										onclick="buyNewLevel('9')">Not Eligible</button>
									<p class="mb-0">Reinvested : <span class="text-muted"
											id="pool9reinvestCount">0</span></p>
								</div>
							</div>

						</div>
					</div>
				</div>



				
				

										</tbody>
									</table>
								</div>
							</div>
							<div class="card-footer">
								<a href="poolTransactions.html" class="float-left">View all pool payments</a>
								<a href="poolSponsorTransactions.html" class="float-right">Pool Sponsor payments</a>
							</div>
						</div>
					</div>
					<div class="col-md-6 d-flex">
						<div class="card card-table flex-fill">
							<div class="card-header">
								<h3 class="card-title mb-0">Referral Transactions</h3>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table custom-table table-nowrap mb-0">
										<thead>
											<tr>
												<th>Wallet</th>
												<th>Amount</th>
												<th>Level</th>
												<th>Hash</th>
												<th>Date</th>
											</tr>
										</thead>
										<tbody id="referralTransactionTable">


										</tbody>
									</table>
								</div>
							</div>
							<div class="card-footer">
								<a href="referralTransactions.html">View all referral payments</a>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 d-flex">
						<div class="card card-table flex-fill">
							<div class="card-header">
								<h3 class="card-title mb-0">Partners</h3>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table custom-table table-nowrap mb-0">
										<thead>
											<tr>
												<th>Wallet</th>
												<th>ID</th>
												<th>Date</th>
											</tr>
										</thead>
										<tbody id="partnersTable">


										</tbody>
									</table>
								</div>
							</div>
							<div class="card-footer">
								<a href="partners.html" class="float-left">View all partners</a>
								<a href="partnerstreeorg.html" class="float-right">Tree View</a>
							</div>
						</div>
					</div>
					<div class="col-md-6 d-flex">
						<div class="card card-table flex-fill">
							<div class="card-header">
								<h3 class="card-title mb-0">Autopool Glance</h3>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table custom-table table-nowrap mb-0">
										<thead>
											<tr>
												<th>Pool Name </th>
												<th>Entry</th>
												<th>Total Users / Total Slots</th>
												<th>Active Slots</th>
												<th>Active Address</th>
											</tr>
										</thead>
										<tbody id="poolGlanceTable">

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- /Page Content -->

		</div>
		<!-- /Page Wrapper -->

	</div>
	<!-- /Main Wrapper -->

	<!-- jQuery -->
	<script src="assets/js/jquery-3.2.1.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>

	<!-- Slimscroll JS -->
	<script src="assets/js/jquery.slimscroll.min.js"></script>

	<!-- Chart JS -->
	<script src="assets/plugins/morris/morris.min.js"></script>
	<script src="assets/js/chart.js"></script>

	<!-- Custom JS -->
	<script src="assets/js/web3.js"></script>
	<script src="assets/js/contract.js"></script>
	
	<script>
//end
window.onload = function () {
            initApp();
        }
        async function initApp() {
            MatrixContract = await tronWeb.contract().at(address);// tronWeb.trx.contract(matrixAbi);
            MatrixInstance = MatrixContract;
            $('#contractAddress').html("Smart Contract : " + address);
            $('#contractAddress').attr("href", "https://tronscan.org/#/contracts/" + address + "/code");
        }
        async function autoLogin() {
            var account = tronWeb.defaultaddress;
            var usr = await MatrixInstance.users(account).call();
            if (usr.isExist) {
                alert('Welcome to TronNinja Autopool Smart Contract');
                localStorage.setItem("loginaddress", account);
                location.href = "https://tronninja.com/dashboard/dashboard.html";
            }else{
                alert("You're not a registered user please register first");
            }
        }
        async function loginwithID(userid) {
            if (userid.length < 0 && userid.length > 0) {
                var idToAddress = await MatrixInstance.userList(userid).call();
                if (idToAddress && tronWeb.address.fromHex(idToAddress) != undefinedAddress) {
                    alert('Welcome to TronninjaPowerAutoPool Smart Contract');
                    localStorage.setItem("loginaddress", tronWeb.address.fromHex(idToAddress));
                    location.href = "https://tronninja.com/dashboard/dashboard.html";
                } else {
                    alert("Please enter valid address or id");
                }
            }
            else if (userid.length > 0) {
                var isExists = await MatrixInstance.userList(userid).call();
                if (await tronWeb.address.fromHex(isExists) != undefinedAddress) {
                    alert('Welcome to Tron Ninja Smart Contract');
                    localStorage.setItem("loginaddress", await tronWeb.address.fromHex(isExists));
                    location.href = "https://tronninja.com/dashboard/dashboard.html";
                } else {
                    alert("you're not a registered user, please register");
                }
            }
            else {
                alert("Please enter valid address or id");
            }
        }

// end login
//start register

window.onload = function () {
        var urlParams = new URLSearchParams(window.location.search);
        var ref = urlParams.get("ref");
        if (ref) $("#email").val(ref);
        initApp();
      };
      async function users(params) {
        MatrixContract = await tronWeb.contract().at(address);
        MatrixInstance = MatrixContract;
        var userdetails = await MatrixInstance.users(account).call();

        console.log(users);
      }
      async function initApp() {
        MatrixContract = await tronWeb.contract().at(address); // tronWeb.trx.contract(matrixAbi);
        MatrixInstance = MatrixContract;
        $("#contractAddress").html("Smart Contract : " + address);
        $("#contractAddress").attr(
          "href",
          "https://tronscan.org/#/contracts/" + address + "/code"
        );
      }
      async function register() {
        var refid = document.getElementById("#email").value;
        var account = tronWeb.defaultAddress.base58;
        if (refid == "") {
          alert("Enter Referral ID");
        } else if (isNaN(refid)) {
          alert("Enter Referral ID as numeric value");
        } else {
          var refaddr = await tronWeb.address.fromHex(
            await MatrixInstance.userList(refid).call()
          );
          if (refaddr != undefinedAddress) {
            var valuePass = x3MatrixPrices[2] * 1000000;
            valuePass = window.tronWeb.toDecimal(valuePass);
            //valuePass = parseInt(valuePass) * 2;
            var options = {
              shouldPollResponse: false,
              feeLimit: 15000000,
              callValue: valuePass,
              from: account,
            };
            var result = await MatrixInstance.regUser(refid).send(options);
            console.log(result);
            if (result) {
              var json =
                '{ "username":"' +
                account +
                '", "transactionid":"' +
                result +
                '","sponsorid":"' +
                refaddr +
                '" }';
              var xhttp2 = new XMLHttpRequest();
              xhttp2.onreadystatechange = async function () {
                if (this.readyState == 4 && this.status == 200) {
                  console.log("success" + xhttp2.responseText);
                  localStorage.setItem("loginaddress", account);
                  location.href =
                    "https/tronninja.com/dashboard/dashboard.html";
                }
              };
            } else {
              alert("Transaction cancelled or Error accured");
            }
          } else {
            alert("Please enter valid sponsor id");
          }
        }
	  }
	  //end register


		var account, loggedId, sponsorAddress;
		window.onload = function () {
			initApp();
		}
		async function initApp() {
			MatrixContract = await tronWeb.contract().at(address);// tronWeb.trx.contract(matrixAbi);
			MatrixInstance = MatrixContract;
			account = localStorage.getItem("loginaddress");
			$('#walletAddress').html(account);
			$('#walletAddress').attr("href", "https://tronscan.org/#/address/" + account);
			var userdetails = await MatrixInstance.users(account).call();
			loggedId = parseInt(userdetails.id);
			$('#selfId').html(loggedId);
			$('#selfAddress').html(account);
			$('#selfAddress').attr("href", "https://tronscan.org/#/address/" + account);
			$('#affiliateLink').val("https://tronninja.com/register?ref=" + loggedId);
			$('#sponsorId').html(parseInt(userdetails.referrerID));
			sponsorAddress = await tronWeb.address.fromHex(await MatrixInstance.userList(parseInt(userdetails.referrerID)).call());
			$('#sponsorAddress').html(sponsorAddress);
			$('#sponsorAddress').attr("href", "https://tronscan.org/#/address/" + sponsorAddress);

			$('#contractAddress').html(address);
			$('#contractAddress').attr("href", "https://tronscan.org/#/contract/" + address);

			var totaluser = await MatrixInstance.currUserID().call();
			$('#totalUsers').html(parseInt(totaluser));
			$('#selfsponsor').html(parseInt(userdetails.referredUsers));

			$('#totalMemEarned').html((parseInt(userdetails.referredUsers) * x3MatrixPrices[0]) + " TRX");
			await triggerDB();
			console.log(await tronWeb.address.toHex(account));
			await checkAutopools();
			await getDashboard();
			await getPoolsTransaction();
			await getReferralTransaction();
			await getpartnersTable();
			await getPoolGlance();
		}

		async function getDashboard() {
			var xhttp2 = new XMLHttpRequest();
			xhttp2.onreadystatechange = async function () {
				if (this.readyState == 4 && this.status == 200) {
					var result = JSON.parse(xhttp2.responseText);
					if (result) {
						console.log(JSON.stringify(result));
						$('#selfJoinDate').html(new Date(parseInt(result.SelfTimeStamp)).toDateString());
						$('#sponsorJoinDate').html(new Date(parseInt(result.SponsorTimeStamp)).toDateString());
						$('#hoursUsers').html(result.Join24hrs);
						$('#level1bonus').html(result.Level1);
						$('#level2bonus').html(result.Level2);
						$('#level3bonus').html(result.Level3);
						$('#level4bonus').html(result.Level4);
						$('#poolsponsorbonus').html(parseInt(result.PoolSponsorBonus) / 1000000);
						$('#poolincome').html(parseInt(result.PoolPayment) / 1000000);
						$('#selfsponsor').html(result.SelfSponsor);
						$('#currentpool').html(result.CurrentPool);
						$('#pool1Users').html(result.pool1);
						$('#pool2Users').html(result.pool2);
						$('#pool3Users').html(result.pool3);
						$('#pool4Users').html(result.pool4);
						$('#pool5Users').html(result.pool5);
						$('#pool6Users').html(result.pool6);
						$('#pool7Users').html(result.pool7);
						$('#pool8Users').html(result.pool8);
						$('#pool9Users').html(result.pool9);

						$('#pool2reinvestCount').html(result.Reinvet1);
						$('#pool3reinvestCount').html(result.Reinvet2);
						$('#pool4reinvestCount').html(result.Reinvet3);
						$('#pool5reinvestCount').html(result.Reinvet4);
						$('#pool6reinvestCount').html(result.Reinvet5);
						$('#pool7reinvestCount').html(result.Reinvet6);
						$('#pool8reinvestCount').html(result.Reinvet7);
						$('#pool9reinvestCount').html(result.Reinvet8);

					}
				}
			}
			var params = '{ "user": "0x' + await tronWeb.address.toHex(account).slice(2) + '" }';
			console.log(params);
			var url = "https://tronninja.com/api/getDashboard.asp";
			xhttp2.open("POST", url, true);
			xhttp2.send(params);
		}

		async function checkAutopools() {
			var boolbtnPlaced = false;
			for (i = 1; i <= 9; i++) {
				var methodname = "pool" + i + "users";
				var pool;
				if (i == 1) {
					pool = await MatrixInstance.users(account).call();
				} else if (i == 2) {
					pool = await MatrixInstance.pool1users(account).call();
				} else if (i == 3) {
					pool = await MatrixInstance.pool2users(account).call();
				} else if (i == 4) {
					pool = await MatrixInstance.pool3users(account).call();
				} else if (i == 5) {
					pool = await MatrixInstance.pool4users(account).call();
				} else if (i == 6) {
					pool = await MatrixInstance.pool5users(account).call();
				} else if (i == 7) {
					pool = await MatrixInstance.pool6users(account).call();
				} else if (i == 8) {
					pool = await MatrixInstance.pool7users(account).call();
				} else if (i == 9) {
					pool = await MatrixInstance.pool8users(account).call();
				}
				console.log(pool);
				var id = "pool" + i + "btn";
				if (pool.isExist) {
					document.getElementById(id).innerHTML = "Registered";
					document.getElementById(id).classList.remove("bg-warning");
					document.getElementById(id).classList.remove("bg-danger");
					document.getElementById(id).classList.add("bg-success");
				}
				else {
					if (boolbtnPlaced) {
						document.getElementById(id).innerHTML = "Not Eligible";
						document.getElementById(id).classList.add("bg-danger");
						document.getElementById(id).classList.remove("bg-warning");
						document.getElementById(id).classList.remove("bg-success");
					}
					else {
						document.getElementById(id).classList.add("bg-warning");
						document.getElementById(id).classList.remove("bg-danger");
						document.getElementById(id).classList.remove("bg-success");
						document.getElementById(id).innerHTML = "Buy";
						boolbtnPlaced = true;
					}
				}
			}

		}
		async function buyNewLevel(level) {
			if (account == tronWeb.defaultAddress.base58) {
				var id = "pool" + level + "btn";
				if (document.getElementById(id).innerHTML == "Buy") {
					var poolPrice = parseInt(x3MatrixPrices[parseInt(level) - 1]) * 1000000;
					var options = {
						shouldPollResponse: false, feeLimit: 15000000, callValue: poolPrice, from: account
					};
					var result;
					if (parseInt(level) == 2) {
						result = await MatrixInstance.buyPool1().send(options);
					} else if (parseInt(level) == 3) {
						result = await MatrixInstance.buyPool2().send(options);
					} else if (parseInt(level) == 4) {
						result = await MatrixInstance.buyPool3().send(options);
					} else if (parseInt(level) == 5) {
						result = await MatrixInstance.buyPool4().send(options);
					} else if (parseInt(level) == 6) {
						result = await MatrixInstance.buyPool5().send(options);
					} else if (parseInt(level) == 7) {
						result = await MatrixInstance.buyPool6().send(options);
					} else if (parseInt(level) == 8) {
						result = await MatrixInstance.buyPool7().send(options);
					} else if (parseInt(level) == 9) {
						result = await MatrixInstance.buyPool8().send(options);
					}
					if (result) {
						alert("Transaction processing, please be patient");
						document.getElementById("pool" + level + "btn").innerHTML = "Checking...";
						var json = '{ "username":"' + account + '", "transactionid":"' + result + '","sponsorid":"' + sponsorAddress + '" }';
						var xhttp2 = new XMLHttpRequest();
						xhttp2.onreadystatechange = async function () {
							if (this.readyState == 4 && this.status == 200) {
								setTimeout(() => { location.reload(); }, 10000);
							}
						}
						var url = "https://tronninja.com/api/actReg.asp";
						xhttp2.open("POST", url, true);
						xhttp2.send(json);
					}
				}
			} else {
				alert("You are in preview mode. Please login with your id");
			}

		}

		async function triggerDB() {
			var xhttp2 = new XMLHttpRequest();
			xhttp2.onreadystatechange = async function () {
				if (this.readyState == 4 && this.status == 200) {
					console.log(xhttp2.responseText);
				}
			}
			var params = '{ "username": "' + account + '" }';
			var url = "https://tronninja.com/api/check_transaction.asp";//getPoolPayment;
			xhttp2.open("POST", url, true);
			xhttp2.send(params);
		}
		async function getPoolsTransaction() {
			var xhttp2 = new XMLHttpRequest();
			xhttp2.onreadystatechange = async function () {
				if (this.readyState == 4 && this.status == 200) {
					var json = JSON.parse(xhttp2.responseText);
					if (json.items) {
						for (i = 0; i < 5 && i < json.items.length; i++) {
							var hash = json.items[i].transaction_id;
							var wallet = await tronWeb.address.fromHex(json.items[i].user);
							var date = new Date(parseInt(json.items[i].block_timestamp)).toDateString();
							var autopool = json.items[i].level;
							var amount = parseInt(json.items[i].price) / 1000000;
							document.getElementById("poolTransactionTable").innerHTML += '<tr><td><a href="https://tronscan.org/#/address/' + wallet + '" target="_blank">' + wallet + '</a></td><td><h2><a href="#">' + autopool + '</a></h2></td><td>' + amount + ' TRX</td><td><a href="https://tronscan.org/#/transaction/' + hash + '">' + hash + '</a></td><td>' + date + '</td></tr>';
						}
					}

				}
			}
			var params = '{ "user": "0x' + await tronWeb.address.toHex(account).slice(2) + '" }';
			var url = "https://tronninja.com/api/getPoolPayment.asp";
			xhttp2.open("POST", url, true);
			xhttp2.send(params);
		}
		async function getReferralTransaction() {
			var xhttp2 = new XMLHttpRequest();
			xhttp2.onreadystatechange = async function () {
				if (this.readyState == 4 && this.status == 200) {
					var json = JSON.parse(xhttp2.responseText);
					if (json.items) {
						for (i = 0; i < 5 && i < json.items.length; i++) {
							var hash = json.items[i].transaction_id;
							var wallet = await tronWeb.address.fromHex(json.items[i].referral);
							var date = new Date(parseInt(json.items[i].block_timestamp)).toDateString();
							var amount = parseInt(json.items[i].price) / 1000000;
							var level = parseInt(json.items[i].level);
							document.getElementById("referralTransactionTable").innerHTML += '<tr><td><a href="https://tronscan.org/#/address/' + wallet + '" target="_blank">' + wallet + '</a></td><td>' + amount + ' TRX</td><td>' + level + '</td><td><a href="https://tronscan.org/#/transaction/' + hash + '">' + hash + '</a></td><td>' + date + '</td></tr>';
						}
					}
				}
			}
			var params = '{ "user": "0x' + await tronWeb.address.toHex(account).slice(2) + '" }';
			var url = "https://tronninja.com/api/getMoneyForLevelEvent.asp";
			xhttp2.open("POST", url, true);
			xhttp2.send(params);
		}
		async function getpartnersTable() {
			var xhttp2 = new XMLHttpRequest();
			xhttp2.onreadystatechange = async function () {
				if (this.readyState == 4 && this.status == 200) {
					var json = JSON.parse(xhttp2.responseText);
					if (json.items) {
						for (i = 0; i < 10 && i < json.items.length; i++) {
							var wallet = await tronWeb.address.fromHex(json.items[i].user);
							var date = new Date(parseInt(json.items[i].block_timestamp)).toDateString();
							var userDetails = await MatrixInstance.users(wallet).call();
							document.getElementById("partnersTable").innerHTML += '<tr><td><a href="https://tronscan.org/#/address/' + wallet + '" target="_blank">' + wallet + '</a></td><td><h2><a href="#">' + parseInt(userDetails.id) + '</a></h2></td><td>' + date + '</td></tr>';
						}
					}
				}
			}
			var params = '{ "referrer": "0x' + await tronWeb.address.toHex(account).slice(2) + '" }';
			var url = "https://tronninja.com/api/regLevelEvent.asp";
			xhttp2.open("POST", url, true);
			xhttp2.send(params);
		}
		async function getPoolGlance() {
			//var currUserID = parseInt(await MatrixInstance.currUserID().call());
			//document.getElementById("poolGlanceTable").innerHTML += '<tr><td>Registration</td><td><h2><a href="#">250 TRX</a></h2></td><td  class="text-center">' + currUserID + '</td><td></td><td  class="text-center">NA</td></tr>';
			var pool1CurrUserID = parseInt(await MatrixInstance.currUserID().call());
			//var pool1activeUserID = parseInt(await MatrixInstance.activeUserID().call());
			//var pool1ActiveUser = await tronWeb.address.fromHex(await MatrixInstance.userList(pool1activeUserID).call());
			document.getElementById("poolGlanceTable").innerHTML += '<tr><td><a>Autopool 1</a></td><td><h2><a href="#">100 TRX</a></h2></td><td class="text-center">' + pool1CurrUserID + '</td><td class="text-center"></td><td class="text-center">NA</td></tr>';


			var pool2CurrUserID = parseInt(await MatrixInstance.pool1currUserID().call());
			var pool2activeUserID = parseInt(await MatrixInstance.pool1activeUserID().call());
			var pool2ActiveUser = await tronWeb.address.fromHex(await MatrixInstance.pool1userList(pool2activeUserID).call());
			document.getElementById("poolGlanceTable").innerHTML += '<tr><td><a href="ap1.html">Autopool 2</a></td><td><h2><a href="#">100 TRX</a></h2></td><td class="text-center">' + pool2CurrUserID + '</td><td class="text-center">' + pool2activeUserID + '</td><td><a href="https://tronscan.org/#/address/' + pool2ActiveUser + '" target="_blank">' + pool2ActiveUser + '</a></td></tr>';


			var pool3CurrUserID = parseInt(await MatrixInstance.pool2currUserID().call());
			var pool3activeUserID = parseInt(await MatrixInstance.pool2activeUserID().call());
			var pool3ActiveUser = await tronWeb.address.fromHex(await MatrixInstance.pool2userList(pool3activeUserID).call());
			document.getElementById("poolGlanceTable").innerHTML += '<tr><td><a href="ap2.html">Autopool 3</a></td><td><h2><a href="#">200 TRX</a></h2></td><td class="text-center">' + pool3CurrUserID + '</td><td class="text-center">' + pool3activeUserID + '</td><td><a href="https://tronscan.org/#/address/' + pool3ActiveUser + '" target="_blank">' + pool3ActiveUser + '</a></td></tr>';


			var pool4CurrUserID = parseInt(await MatrixInstance.pool3currUserID().call());
			var pool4activeUserID = parseInt(await MatrixInstance.pool3activeUserID().call());
			var pool4ActiveUser = await tronWeb.address.fromHex(await MatrixInstance.pool3userList(pool4activeUserID).call());
			document.getElementById("poolGlanceTable").innerHTML += '<tr><td><a href="ap3.html">Autopool 4</a></td><td><h2><a href="#">400 TRX</a></h2></td><td class="text-center">' + pool4CurrUserID + '</td><td class="text-center">' + pool4activeUserID + '</td><td><a href="https://tronscan.org/#/address/' + pool4ActiveUser + '" target="_blank">' + pool4ActiveUser + '</a></td></tr>';


			var pool5CurrUserID = parseInt(await MatrixInstance.pool4currUserID().call());
			var pool5activeUserID = parseInt(await MatrixInstance.pool4activeUserID().call());
			var pool5ActiveUser = await tronWeb.address.fromHex(await MatrixInstance.pool4userList(pool5activeUserID).call());
			document.getElementById("poolGlanceTable").innerHTML += '<tr><td><a href="ap4.html">Autopool 5</a></td><td><h2><a href="#">800 TRX</a></h2></td><td class="text-center">' + pool5CurrUserID + '</td><td class="text-center">' + pool5activeUserID + '</td><td><a href="https://tronscan.org/#/address/' + pool5ActiveUser + '" target="_blank">' + pool5ActiveUser + '</a></td></tr>';


			var pool6CurrUserID = parseInt(await MatrixInstance.pool5currUserID().call());
			var pool6activeUserID = parseInt(await MatrixInstance.pool5activeUserID().call());
			var pool6ActiveUser = await tronWeb.address.fromHex(await MatrixInstance.pool5userList(pool6activeUserID).call());
			document.getElementById("poolGlanceTable").innerHTML += '<tr><td><a href="ap5.html">Autopool 6</a></td><td><h2><a href="#">1500 TRX</a></h2></td><td class="text-center">' + pool6CurrUserID + '</td><td class="text-center">' + pool6activeUserID + '</td><td><a href="https://tronscan.org/#/address/' + pool6ActiveUser + '" target="_blank">' + pool6ActiveUser + '</a></td></tr>';


			var pool7CurrUserID = parseInt(await MatrixInstance.pool6currUserID().call());
			var pool7activeUserID = parseInt(await MatrixInstance.pool6activeUserID().call());
			var pool7ActiveUser = await tronWeb.address.fromHex(await MatrixInstance.pool6userList(pool7activeUserID).call());
			document.getElementById("poolGlanceTable").innerHTML += '<tr><td><a href="ap6.html">Autopool 7</a></td><td><h2><a href="#">3000 TRX</a></h2></td><td class="text-center">' + pool7CurrUserID + '</td><td class="text-center">' + pool7activeUserID + '</td><td><a href="https://tronscan.org/#/address/' + pool7ActiveUser + '" target="_blank">' + pool7ActiveUser + '</a></td></tr>';


			var pool8CurrUserID = parseInt(await MatrixInstance.pool7currUserID().call());
			var pool8activeUserID = parseInt(await MatrixInstance.pool7activeUserID().call());
			var pool8ActiveUser = await tronWeb.address.fromHex(await MatrixInstance.pool7userList(pool8activeUserID).call());
			document.getElementById("poolGlanceTable").innerHTML += '<tr><td><a href="ap7.html">Autopool 8</a></td><td><h2><a href="#">9000 TRX</a></h2></td><td class="text-center">' + pool8CurrUserID + '</td><td class="text-center">' + pool8activeUserID + '</td><td><a href="https://tronscan.org/#/address/' + pool8ActiveUser + '" target="_blank">' + pool8ActiveUser + '</a></td></tr>';


			var pool9CurrUserID = parseInt(await MatrixInstance.pool8currUserID().call());
			var pool9activeUserID = parseInt(await MatrixInstance.pool8activeUserID().call());
			var pool9ActiveUser = await tronWeb.address.fromHex(await MatrixInstance.pool8userList(pool9activeUserID).call());
			document.getElementById("poolGlanceTable").innerHTML += '<tr><td><a href="ap8.html">Autopool 9</a></td><td><h2><a href="#">12000 TRX</a></h2></td><td class="text-center">' + pool9CurrUserID + '</td><td class="text-center">' + pool9activeUserID + '</td><td><a href="https://tronscan.org/#/address/' + pool9ActiveUser + '" target="_blank">' + pool9ActiveUser + '</a></td></tr>';

		}
	</script>
</body>

</html>
<?php
session_start();
error_reporting(0);

include('includes/dbconnection.php');
?>
<!DOCTYPE HTML>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<title>Zoo Management System | Home Page</title>
	<!-- <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"> -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
	<!-- <link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> -->
	<link rel="stylesheet" href="owlcarousel/owl.carousel.min.css">
	<link rel="stylesheet" href="owlcarousel/owl.theme.default.min.css">
	<link rel="stylesheet" href="css/stylesv1.css">
	<link rel="stylesheet" href="css/basicsv1.css">
	<link rel="stylesheet" href="css/headerv1.css">
	<link rel="stylesheet" href="css/specialv1.css">
	<link rel="stylesheet" href="css/footerv1.css">
	<link rel="stylesheet" href="css/responsive.css">
	<link rel="stylesheet" href="css/hamburguesa.css">
	<link rel="stylesheet" href="css/animaciones.css">



	<!-- <script type="application/x-javascript">
		addEventListener("load", function() {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script> -->
	<!-- <script src="js/bootstrap.js"></script> -->
</head>

<body>
	<header>
		<div class="header">
			<div class="header__logo">
				<h1>Zoo Management System</h1>
			</div>
			<ul class="header__ul">
				<li><a href="index.php">Home</a></li>
				<li class="active"><a href="animals.php">Animals</a></li>
				<li><a href="admin/index.php">Admin</a></li>
			</ul>
		</div>
		<div class="hamburguer-menu">
			<div class="fb">
				<label for="btn-menu" class="abrir-menu"> <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" viewBox="0 0 24 24" style="fill:white;
					">
						<path d="M4 6H20V8H4zM4 11H20V13H4zM4 16H20V18H4z"></path>
					</svg></label>
			</div>
			<input type="checkbox" id="btn-menu" />
			<div class="fb-c" id="menu">
				<nav>
					<a href="index.php">Home</a>
					<a href="animals.php">Animals</a>
					<a href="admin/index.php">Admin</a>
				</nav>
				<label for="btn-menu">x</label>
			</div>
		</div>
	</header>
	<main>
		<section class="animal-search">
			<h1>Animal Search</h1>
			<div class="cont-form">
				<form action="#">
					<div class="cont-input">
						<input type="text" placeholder="Search" name="search" id="search" autocomplete="off">
					</div>
				</form>
			</div>
			<div class="data" id="data">

				<?php include_once('includes/control_animals.php'); ?>



			</div>
		</section>
	</main>
	<?php include_once('includes/specialv1.php'); ?>
	</div>
	<?php include_once('includes/footerv1.php'); ?>
	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/filter.js"></script>
</body>

</html>
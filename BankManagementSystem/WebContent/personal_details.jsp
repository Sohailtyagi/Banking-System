<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Customer Personal Details</title>
	<style type="text/css">
		body{
			margin: 0;
			padding: 0;
			font-family: sans-serif;
			height: 100%;
			width: 100%;
			z-index: 1;
		}
		.container{
			width: 100%;
			height: 100%;
		}
		.left{
			display: inline-block;
			width: 20%;
			height: 100%;
			position: absolute;
			left: 0;
			background: #042331;
		}
		.right{
			display: inline-block;
			width: 80%;
			height: 100%;
			position: absolute;
			right: 0;
			background-color: white;
		}
		.heading{
			background: #063146;
			height: 72px;
		}
		.left header{
			font-size: 22px;
			color: white;
			text-align: center;
			line-height: 70px;
			background: #063146;
			user-select: none;
			border-right: 1px solid rgba(255,255,255,.1);
		}
		.left ul{
			margin: 0px;
			padding: 0px;
			list-style: none;
			text-decoration: none;
		}
		.left ul li{
			width: 100%;
			height: 37px;
			font-size: 14px;
			margin-bottom: 2px;
			padding-bottom: 12px;
			border-bottom: 1px solid black;
			border-top: 1px solid rgba(255,255,255,.1);
		}
		#anchor{
			text-decoration: none;
			color: white;
			display: block;
			height: 100%;
			width: 100%;
			line-height: 55px;
			padding-left: 20px;
			transition: .4s;
			box-sizing: border-box;
		}
		#hat{
			text-decoration: none;
			color: rgb(0,162,232);
			display: block;
			height: 100%;
			width: 100%;
			line-height: 55px;
			padding-left: 20px;
			transition: .4s;
			box-sizing: border-box;
		}
		.left ul li a:hover{
			padding-left: 30px;
		}
		.left img{
			width: 20px;
			height: 20px;
			margin-right: 16px;
		}
		.bankname{
			display: inline-block;
			width: 50%;
			position: absolute;
			left: 0;
		}
		.name{
			display: inline-block;
			width: 50%;
			position: absolute;
			right: 0;
		}
		.logo{
			display: inline-block;
			width: 20%;
			position: absolute;
			left: 0;
		}
		.bankkaname{
			display: inline-block;
			width: 80%;
			position: absolute;
			right: 0;
		}
		.bankkaname label{
			font-weight: bold;
			font-size: 35px;
			line-height: 80px;
			color: white;
		}
		.logo img{
			padding: 10px 10px 10px 40px;
			width: 50px;
			height: 50px;
		}
		.arrow{
			margin-left: 10px;
			border: solid white;
			border-width: 0 3px 3px 0;
			display: inline-block;
			padding: 3px;
			transform: rotate(45deg);
		}
		.name ul{
			list-style: none;
			line-height: 40px;
		}
		.name ul label{
			text-decoration: none;
			color: white;
			font-size: 15px;
			font-weight: bold;
		}
		.name ul li ul li a{
			text-decoration: none;
			color: white;
			width: 100%;
			height: 100%;
		}
		.name ul li ul{
			list-style: none;
			background-color: rgb(41,84,67);
			width: 100px;
		}
		.name ul li ul li{
			display: none;
		}
		.name ul li:hover ul li{
			display: block;
		}
		.jar{
			margin: 20px;
			background: rgb(236,240,241);
			padding: 20px;
			padding-left: 40px;
		}
		.jar label{
			font-size: 15px;
			color: black;
		}
		.first{
			padding-left: 50px;
			padding-top: 24px;
		}
		.first label{
			font-size: 15px;
			color: black;
		}
		.second{
			padding-left: 170px;
			margin-left: 60px;
			padding-top: 20px;
		}
		.second label{
			font-size: 15px;
			color: black;
		}
		.cfirst{
			margin-left: 20px;
			padding-top: 20px;
		}
		.clabel{
			margin-left: 180px;
			padding-top: 20px;
		}
		.csecond{
			padding-top: 20px;
			margin-left: 60px;
		}
		.aname{
			padding-top: 20px;
			padding-left: 230px;
		}
		.fname{
			padding-left: 230px;
			padding-top: 20px;
		}
		.dname{
			padding-left: 230px;
			padding-top: 20px;
		}
		.gender{
			padding-top: 20px;
			padding-left: 230px;
		}
		.pan{
			padding-top: 20px;
			padding-left: 230px;
		}
		.jar hr{
			margin-left: 230px;
			margin-right: 200px;
			margin-top: 20px;
		}
		.aname input[type="text"]{
			border-radius: 5px;
			width: 430px;
			padding: 6px;
			border: 6px;
			margin-left: 50px;
		}
		.pan input[type="text"]{
			border-radius: 5px;
			width: 440px;
			padding: 6px;
			border: 6px;
			margin-left: 30px;
		}
		.fname input[type="text"]{
			border-radius: 5px;
			width: 352px;
			padding: 6px;
			border: 6px;
			margin-left: 5px;
		}
		.dname input[type="text"]{
			border-radius: 5px;
			width: 165px;
			padding: 6px;
			border: 6px;

		}
		input[type="Date"]{
			border-radius: 5px;
			width: 165px;
			padding: 6px;
			border: 6px;

		}
		.nation{
			margin-left: 15px;
		}
		.gndr{
			margin-left: 50px;
		}
		input[type="submit"]{
			margin-left: 668px;
			color: white;
			background-color: rgb(250,171,59);
			padding: 5px 10px 5px 10px;
			border-radius: 5px;
			border-color: rgb(250,171,59);
			margin-top: 18px;
		}
		.side{
			margin-left: 350px;
		}
	</style>
</head>
<body>
	<form method="post" action="PersonalDetails">
		<div class="container">
			<div class="left">
				<header>Dashboard</header>
				<ul>
					<li><a href="add_customer.jsp" id="hat" ><img src="add-blue.png">Add Customer</a></li>
					<li><a href="" id="anchor"><img src="search.png">Search Customer</a></li>
					<li><a href="" id="anchor"><img src="banknotes.png">Deposit Money</a></li>
					<li><a href="" id="anchor"><img src="atm.png">Withdraw Money</a></li>
					<li><a href="" id="anchor"><img src="deposit.png">Fixed Deposit (FD)</a></li>
					<li><a href="" id="anchor"><img src="money-deposit.png">Recurring Deposit (RD)</a></li>
					<li><a href="" id="anchor"><img src="transfermoney.png">Transfer Money</a></li>
					<li><a href="" id="anchor"><img src="clock.png">Transaction History</a></li>
					<li><a href="" id="anchor"><img src="adjust.png">General Settings</a></li>
					<li><a href="" id="anchor"><img src="close_acc.png">Close Account</a></li>
					<li><a href="" id="anchor"><img src="request.png">Requests</a></li>
				</ul>
			</div>
			<div class="right">
				<div class="heading">
					<div class="bankname">
						<div class="logo">
							<img src="home-img-white.png">
						</div>
						<div class="bankkaname">
							<label>SMI Banking</label>
						</div>
					</div>
					<div class="name">
						<ul class="side">
							<li><label>Administrator</label><a href=""><i class="arrow"></i></a>
								<ul>
									<li><a href="">logout</a></li>
								</ul>
							</li>
							
						</ul>
						
					</div>
				</div>
				<div class="jar">
					<h1><u>Personal Details</u></h1>
					<div class="first">
						<label class="clabel">Senior Citizen:</label><input type="checkbox" name="senior_citizen" value="Yes" id="customer_type" class="cfirst"><label for="customer_type">Yes</label>
						<label class="clabel">Minor:</label><input type="checkbox" id="minor" class="cfirst" name="minor" value="Yes"><label for="minor">Yes</label>
					</div>
					<div class="second">
						<label>Status:</label><input type="radio" id="nri" class="csecond" value="Non-Resident Indian(NRI)" name="status"><label for="nri">Non-Resident India(NRI)</label><input type="radio" id="pio" class="csecond" name="status" value="Person of Indian Origin(PIO)"><label for="pio">Person of Indian Origin(PIO)</label>
					</div>
					<div class="aname">
						<label>Name:</label>
						<input type="text" placeholder="Enter your full name" name="name">
					</div>
					<hr>
					<div class="fname">
						<label>Father's/Gaurdian Name:</label>
						<input type="text" placeholder="Enter Father's/Gaurdian Name(For minor only)" name="fathers_name">
					</div>
					<hr>
					<div class="dname"><label>Date of Birth:</label>
						<input type="Date" placeholder="Date of Birth" name="dob">
						<label class="nation">Nationality:</label>
						<input type="text" placeholder="Nationality" name="nationality">
					</div>
					<div class="gender">
					<label>Gender:</label><input type="radio" id="male" class="gndr" value="Male" name="gender"><label for="male">Male</label><input type="radio" id="female" class="gndr" value="Female" name="gender"><label for="female">Female</label>
					</div>
					<div class="pan">
						<label>Pan No.:</label>
						<input type="text" placeholder="Pan No." name="pan_no">
					</div>
					<input type="submit" value="Submit & Next">
				</div>
			</div>
		</div>
	</form>
</body>
</html>
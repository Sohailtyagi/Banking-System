<!DOCTYPE html>
<html>
<head>
	<title>Recurring Deposit</title>
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
			height: 504px;
		}
		.jar label{
			font-size: 15px;
			color: black;
		}
		.side{
			margin-left: 350px;
		}
		#each{
			margin-left: 200px;
			margin-top: 13px;
		}
		input[type="text"]{
			border-radius: 5px;
			width: 310px;
			padding: 6px;
			border: 6px;

		}
		.account_id{
			margin-left: 27px;
		}
		.aname{
			margin-left: 97px;
		}
		.amount{
			margin-left: 129px;
		}
		.cash{
			margin-left: 109px;
		}
		.acc{
			margin-left: 78px;
		}
		input[type="submit"]{
			margin-left: 620px;
			color: white;
			background-color: rgb(250,171,59);
			padding: 5px 20px 5px 20px;
			border-radius: 5px;
			border-color: rgb(250,171,59);
			margin-top: 15px;
		}
		input[type="Date"]{
			border-radius: 5px;
			width: 310px;
			padding: 6px;
			border: 6px;

		}
		input[type="Password"]{
			border-radius: 5px;
			width: 310px;
			padding: 6px;
			border: 6px;

		}
		.fixed{
			margin-left: 5px;
		}
		.period{
			margin-left: 138px;
		}
		.manager_name{
			margin-left: 17px;
		}
		.pin{
			margin-left: 98px;
		}
		.date{
			margin-left: 146px;
		}
		.monthly{
			margin-left: 64px;
		}
	</style>
</head>
<body>
	<form action="RD" method="post">
		<div class="container">
			<div class="left">
				<header>Dashboard</header>
				<ul>
					<li><a href="add_customer.jsp" id="anchor" ><img src="add.png">Add Customer</a></li>
					<li><a href="serach_customer.jsp" id="anchor"><img src="search.png">Search Customer</a></li>
					<li><a href="deposit.jsp" id="anchor"><img src="banknotes.png">Deposit Money</a></li>
					<li><a href="withdraw.jsp" id="anchor"><img src="atm.png">Withdraw Money</a></li>
					<li><a href="fd.jsp" id="anchor"><img src="deposit.png">Fixed Deposit (FD)</a></li>
					<li><a href="rd.jsp" id="hat"><img src="money-deposit-blue.png">Recurring Deposit (RD)</a></li>
					<li><a href="" id="anchor"><img src="transfermoney.png">Transfer Money</a></li>
					<li><a href="transaction_history.jsp" id="anchor"><img src="clock.png">Transaction History</a></li>
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
					<h1><u>Recurring Deposit (RD)</u></h1>
					<div class="first">
						<div id="each">
							<label>Enter Account Number :</label>
							<input type="text" name="account_id" placeholder="Enter Account Id" class="account_id">
						</div>
						<div id="each">
							<label>Enter Name :</label>
							<input type="text" placeholder="Customer Name" name="user_name" class="aname">
						</div>
						<div id="each">
							<label>Recurring Deposit Number:</label>
							<input type="text" placeholder="RD Number" name="rd_number" class="fixed">
						</div>
						<div id="each">
							<label>Amount:</label>
							<input type="text" placeholder="Amount" name="amount" class="amount">
						</div>
						<div id="each">
							<label>Period:</label>
							<input type="text" placeholder="Months" name="period" class="period">
						</div>
						<div id="each">
							<label>Monthly Payment:</label>
							<input type="text" placeholder="Monthly Payment" name="rd_monthly_pay" class="monthly">
						</div>
						<div id="each">
							<label>Deposit To:</label>
							<input type="radio" name="radio" value="cash" class="cash">
							<label>Cash</label>
							<input type="radio" name="radio" value="acc" class="acc">
							<label>Account</label>
						</div>
						<div id="each">
							<label>Account Manager Name:</label>
							<input type="text" placeholder="Manager Name" name="manager_name" class="manager_name">
						</div>
						<div id="each">
							<label>Security Pin:</label>
							<input type="password" placeholder="Security Pin" name="pin" class="pin">
						</div>
						<div id="each">
							<label>Date:</label>
							<input type="date" name="date" class="date">
						</div>
					</div>
					<input type="submit" name="" value="Submit">
				</div>
			</div>
		</div>
	</form>
</body>
</html>
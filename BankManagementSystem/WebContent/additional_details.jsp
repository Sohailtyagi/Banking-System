<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Customer Additional Details</title>
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
		.side{
			margin-left: 350px;
		}
		.jar{
			margin: 20px;
			background: rgb(236,240,241);
			padding: 20px;
			height: 505px;
		}
		.jar label{
			font-size: 15px;
			color: black;
		}
		h1{
			padding-left: 20px;
		}
		#each{
			padding-left: 150px;
			padding-top: 30px;
		}
		.first input[type="text"]{
        	border-radius: 5px;
			width: 190px;
			padding: 6px;
			border: 6px;
			margin-left: 80px;
        }
        .second input[type="text"]{
        	border-radius: 5px;
			width: 500px;
			padding: 6px;
			border: 6px;
			margin-left: 5px;
        }
        .hindu{
        	margin-left: 75px;
        }
        .muslim{
        	margin-left: 50px;
        }
        .christian{
        	margin-left: 50px;
        }
        .sikh{
        	margin-left: 50px;
        }
        .other{
        	margin-left: 50px;
        }
        .first input[type="radio"]{
        	margin-left: 90px;
        }
        .fourth input[type="radio"]{
        	margin-left: 69px;
        }
        .fifth input[type="radio"]{
        	margin-left: 48px;
        }
        .sixth input[type="radio"]{
        	margin-left: 20px;
        }
        input[type="submit"]{
			margin-left: 740px;
			color: white;
			background-color: rgb(250,171,59);
			padding: 5px 10px 5px 10px;
			border-radius: 5px;
			border-color: rgb(250,171,59);
			margin-top: 30px;
		}
	</style>
</head>
<body>
<%
	String pan_no = session.getAttribute("nap").toString();
	String mobile = session.getAttribute("mobile").toString();
	System.out.println("Addtional Details="+pan_no+","+mobile);
%>
	<form action="AdditionalDetails" method="post">
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
					<h1><u>Additional Details</u></h1>
					<div id="each" class="first">
						<label>Income:</label>
						<input type="text" placeholder="Enter the income" name="income_text">
						<input type="radio" name="income" class="monthly" value = "month">
						<label>Monthly</label>
						<input type="radio" name="income" class="annually" value = "annum">
						<label>Annually</label>
					</div>
					<div id="each" class="second">
						<LABEL>Designation/Profession:</LABEL>
						<input type="text" placeholder="Enter the Profession" name="profession">
					</div>
					<div id="each" class="third">
						<label>Religion:</label>
						<input type="radio" name="religion" class="hindu" value = "Hindu">
						<label>Hindu</label>
						<input type="radio" name="religion" class="muslim" value = "Muslim">
						<label>Muslim</label>
						<input type="radio" name="religion" class="christian" value = "Christian">
						<label>Christian</label>
						<input type="radio" name="religion" class="sikh" value = "Sikh">
						<label>Sikh</label>
						<input type="radio" name="religion" class="other" value = "Other">
						<label>Others</label>
					</div>
					<div id="each" class="fourth">
						<label>Category:</label>
						<input type="radio" name="category" class="general" value = "General">
						<label>General</label>
						<input type="radio" name="category" class="obc" value = "OBC">
						<label>OBC</label>
						<input type="radio" name="category" class="sc" value = "SC">
						<label>SC</label>
						<input type="radio" name="category" class="st" value = "ST">
						<label>ST</label>
					</div>
					<div id="each" class="fifth">
						<label>Qualification:</label>
						<input type="radio" name="qualification" class="non-graduate" value = "Non-Graduate">
						<label>Non-Graduate</label>
						<input type="radio" name="qualification" class="graduate" value = "Graduate">
						<label>Graduate</label>
						<input type="radio" name="qualification" class="post-graduate" value = "Post-Graduate">
						<label>Post-Graduate</label>
						<input type="radio" name="qualification" class="others" value = "Other">
						<label>Others</label>
					</div>
					<div id="each" class="sixth">
						<label>Occupaton Type:</label>
						<input type="radio" name="occupation" class="salaried" value = "Salaried">
						<label>Salaried</label>
						<input type="radio" name="occupation" class="business" value = "Business">
						<label>Business</label>
						<input type="radio" name="occupation" class="self-employed" value = "Self-Employed">
						<label>Self-Employed</label>
						<input type="radio" name="occupation" class="retired" value = "Retired">
						<label>Retired</label>
						<input type="radio" name="occupation" class="students" value = "Student">
						<label>Student</label>
						<input type="radio" name="occupation" class="otherss" value = "other">
						<label>Others</label>
					</div>
					<input type="hidden" value=<%=mobile %> name="mobile">
					<input type="hidden" value=<%=pan_no %> name="pan_no">
					<input type="submit" name="" value="Submit & Next">
				</div>
			</div>
		</div>
	</form>
</body>
</html>
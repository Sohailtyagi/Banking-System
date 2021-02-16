<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Customer Biodata</title>
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
			margin-left: 20px;
		}
		input[type="file"]::-webkit-file-upload-button{
            width: 150px;
            height: 30px;
            background: #004d80;
            border-radius: 10px;
            display: block;
            font-family: sans-serif;
            font-size: 16px;
            border: none;
            color: white;
            cursor: pointer;
            transition: 0.25s;
        }
        input[type="file"]::-webkit-file-upload-button:hover{
            background: skyblue;
        }
        #each{
        	margin-left: 250px;
        	margin-top: 50px;
        }
        .photo{
        	margin-left: 72px;
        }
        .sign{
        	margin-left: 47px;
        }
        .thumb{
        	margin-left: 36px;
        }
        .id{
        	margin-left: 60px;
        }
        input[type="submit"]{
			margin-left: 510px;
			color: white;
			background-color: rgb(250,171,59);
			padding: 5px 10px 5px 10px;
			border-radius: 5px;
			border-color: rgb(250,171,59);
			margin-top: 40px;
			width: 150px;
		}
	</style>
</head>
<body>
<%
	String pan_no = session.getAttribute("pan").toString();
	String mobile = session.getAttribute("mobile").toString();
	System.out.println("Customer Biodata="+pan_no+","+mobile);
%>
	<form action="CustomerData" method="post" enctype="multipart/form-data">
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
					<h1><u>Customer Biodata</u></h1>
					<div id="each">
						<label>Upload Photo:</label>
						<input type="file" name="upload_photo" size="50" class="photo">
					</div>
					<div id="each">
						<label>Upload Signature:</label>
						<input type="file" name="upload_sign" class="sign">
					</div>
					<div id="each">
						<label>Upload Thumbprint:</label>
						<input type="file" name="upload_thumb" class="thumb">
					</div>
					<div id="each">
						<label>Upload Id proof:</label>
						<input type="file" name="upload_id" class="id">
					</div>
					<input type="hidden" value=<%=mobile %> name="mobile">
					<input type="hidden" value=<%=pan_no %> name="pan_no">
					<input type="submit" name="" value="Submit">
				</div>
			</div>
		</div>
	</form>
</body>
</html>
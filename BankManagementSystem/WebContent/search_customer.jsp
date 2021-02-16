<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Search Customer</title>
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
			color: white;
			background-color: rgb(0,162,232);
			padding: 5px 10px 5px 10px;
			border-radius: 5px;
			border-color: rgb(0,162,232);
			width: 100px;
			margin-left: 10px;
		}
		.table{
			margin-left: 35px;
			margin-top: 30px;
		}
		.table table{
			text-align: left;
			font-size: 14px;
			border-collapse: collapse;

		}
		.table tr{
			border-bottom: 1px solid rgb(235,235,235);
			padding: 2px;
		}
		.table th,.table td{
			padding: 8px;
		}
		.table tr:nth-child(even){
			background-color: rgb(249,249,249);
		}
		.account{
			margin-left: 290px;
			margin-top: 20px;
		}
		.account input[type="text"]{
			border-radius: 5px;
			width: 200px;
			padding: 6px;
			border: 6px;
			margin-left: 10px;
		}
	</style>
</head>
<script>
	function on_submit(){
		<%
			String account_id = request.getParameter("account_id");
			System.out.println(account_id);
			String url = "jdbc:mysql://localhost/bank_management_system";
			String username = "root";
			String password = "tallu";
			String query = "SELECT * FROM add_customer WHERE account_id = '"+account_id+"'";
			String query2 = "SELECT * FROM details WHERE account_id = '"+account_id+"'";
			String name = "", pan_no = "", security_pin = "", mobile = "", amount = "", fd_id = "", rd_id = "";
			String fd = "", rd = "";
			
			try{
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				Connection con = DriverManager.getConnection(url, username, password);
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(query);
				if(rs.next()){
					name = rs.getString("name");
					pan_no = rs.getString("pan_no");
					security_pin = rs.getString("security_pin");
					mobile = rs.getString("mob_no");
				}
				rs.close();
				st.close();
				con.close();
			}
			catch(Exception e){
				e.printStackTrace();
			}
			try{
				Connection con = DriverManager.getConnection(url, username, password);
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(query2);
				if(rs.next()){
						amount = rs.getString("amount");
						fd_id = rs.getString("fd_id");
						rd_id = rs.getString("rd_id");
				}
			}
			catch(Exception e){
				e.printStackTrace();
			}
			amount = "Rs."+amount;
			System.out.println(name+","+pan_no+","+security_pin+","+mobile+","+amount+","+fd_id+","+rd_id);
			if(fd_id == null){
				fd = "No";
			}
			else{
				fd = "Yes";
			}
			if(rd_id == null){
				rd = "No";
			}
			else{
				rd = "Yes";
			}
		%>
	}
</script>
<body>
	<form>
		<div class="container">
			<div class="left">
				<header>Dashboard</header>
				<ul>
					<li><a href="add_customer.jsp" id="anchor" ><img src="add.png">Add Customer</a></li>
					<li><a href="search_customer.jsp" id="hat"><img src="search-blue.png">Search Customer</a></li>
					<li><a href="deposit.jsp" id="anchor"><img src="banknotes.png">Deposit Money</a></li>
					<li><a href="withdraw.jsp" id="anchor"><img src="atm.png">Withdraw Money</a></li>
					<li><a href="fd.jsp" id="anchor"><img src="deposit.png">Fixed Deposit (FD)</a></li>
					<li><a href="rd.jsp" id="anchor"><img src="money-deposit.png">Recurring Deposit (RD)</a></li>
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
					<h1><u>Search Customer</u></h1>
					<div class="account">
						<label>Account No.:</label>
						<input type="text" name="account_id">
						<input type="submit" value="Search" onclick = on_submit()>
					</div>
					<div class="table">
						<table>
							<col width="180">
							<col width="120">
							<col width="100">
							<col width="100">
							<tr>
								<th>Name</th>
								<th>Pan No.</th>
								<th>Security Pin</th>
								<th>Mobile No.</th>
								<th>Fixed Deposit(FD)</th>
								<th>Recurring Deposit(RD)</th>
								<th>Account Balance</th>
							</tr>
							<tr>
								<td><%=name %></td>
								<td><%=pan_no %></td>
								<td><%=security_pin %></td>
								<td><%=mobile %></td>
								<td><%=fd %></td>
								<td><%=rd %></td>
								<td><%=amount %></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
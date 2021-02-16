<%@page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
	<title>Home Page</title>
	<style type="text/css">
		.l img{
			width: 70px;
			height: 70px;
			align-content: center;
			margin-left: 200px;
			margin-top: 10px;
		}
		.lL{
			display: inline-block;
                width: 60%;
                position: absolute;
                left: 0;
		}
		.rR{
			display: inline-block;
                position: absolute;
                right: 0;
                width: 40%;
		}
		.l{
			display: inline-block;
                width: 35%;
                position: absolute;
                left: 0;
		}
		.r{
			display: inline-block;
                position: absolute;
                right: 0;
                width: 65%;
                padding-top: 25px;
		}
		.r label{
			font-size: 45px;
			color: black;
			font-weight: bold;
		}
		.Ll{
			padding-top: 5px;
			display: inline-block;
                width: 40%;
                position: absolute;
                left: 0;
		}
		.Rr{
			padding-top: 5px;
			display: inline-block;
                position: absolute;
                right: 0;
                width: 60%;
		}
		.Lll img{
			width: 20px;
			height: 20px;
		}
		.LllL img{
			width: 20px;
			height: 20px;
		}
		.Lll{
			display: inline-block;
                width: 20%;
                position: absolute;
                left: 0;
                padding-left: 20px;
		}
		.Rrr{
			isplay: inline-block;
                position: absolute;
                right: 0;
                width: 80%;
		}
		.LllL{
			display: inline-block;
                width: 20%;
                position: absolute;
                left: 0;
                padding-left: 50px;
		}
		.RrrR{
			isplay: inline-block;
                position: absolute;
                right: 0;
                width: 80%;
		}
		.rR label{
			font-size: 15px;
			font-weight: bold;
			
		}
		.RrrR label{
			margin-left: 10px;
		}
		.RrrR label a{
			text-decoration: none;
			color: black;
		}
		.RrrR label a:hover{
			color: rgb(0,162,232);
		}
		body{
			margin: 0;
			padding: 0;
			font-family: sans-serif;
			background: url(background.jpg);
			background-size: cover;
			height: 100%;
			width: 100%;
			z-index: 1;
		}
		.container{
			background: rgb(240, 240, 240);
			width: 1000px;
			height: 540px;
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -43%);
			box-shadow: 1px 5px 18px #505050;
			border-radius: 5px;
		}
		.left{
			display: inline-block;
			width: 30%;
			position: absolute;
			left: 0;
		}
		.right{
			display: inline-block;
			width: 70%;
			position: absolute;
			right: 0;

		}
		.butt a:link, a:visited{
			background-color: black;
			padding: 10px 30px;
			text-align: center;
			text-decoration: none;
			display: inline-block; 
		}
		.butt a{
			margin-top: 25px;
			margin-left: 25px;
			border-radius: 5px;
			color: white;
		}
		.amount{
			padding: 3px 10px 10px 10px;
			border: 1px solid black;
			margin: 25px 25px 0px 25px;
			border-radius: 5px;
		}
		.amount p{
			color: black;
			font-size: 14px;
			font-weight: bold;
		}
		.amount label{
			font-size: 13px;
		}
		hr{
			border-color: rgb(235,235,235);
		}
		.menu{
			padding: 0px;
			margin: 25px 25px 0px 25px;
			box-shadow: 0px 0px 2px #505050;
			background-color: white;
		}
		ul{
			margin: 0px;
			padding: 0px;
			list-style: none;
			text-decoration: none;
		}
		ul li{
			width: 100%;
			height: 30px;
			background-color: white;
			font-size: 14px;
			margin-bottom: 2px;
			padding-bottom: 12px;
			border-bottom: 1px solid rgb(240, 240, 240);
		}
		ul li a{
			text-decoration: none;
			color: black;
			display: block;
			height: 100%;
			width: 100%;
			line-height: 60px;
			padding-left: 20px;
			transition: .4s;
			box-sizing: border-box;
		}
		ul li a:hover{
			padding-left: 30px;
		}
		.menu img{
			width: 20px;
			height: 20px;
			margin-right: 16px;
		}
		.first{
			display: inline-block;
                width: 50%;
                position: absolute;
                left: 0;
		}
		.second{
			display: inline-block;
                width: 50%;
                position: absolute;
                right: 0;
		}
		.first img{
			width: 80px;
			height: 80px;
			margin-left: 150px;
			margin-top: 120px;
		}
		.second img{
			width: 80px;
			height: 80px;
			margin-left: 50px;
			margin-top: 120px;

		}
	</style>
</head>
<%
	String account_id = session.getAttribute("account_id").toString();
	String url = "jdbc:mysql://localhost/bank_management_system";
	String username = "root";
	String password = "tallu";
	String query = "SELECT * FROM details WHERE account_id = '"+account_id+"'";
	String query1 = "SELECT * FROM add_customer WHERE account_id = '"+account_id+"'";
	String amount = "";
	String name = "";
	Statement st = null;
	try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection(url, username, password);
		st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		if(rs.next()){
			amount = rs.getString("amount");
		}
		rs.close();
	}
	catch(Exception e){
		e.printStackTrace();
	}
	try{
		ResultSet rs1 = st.executeQuery(query1);
		if(rs1.next()){
			name = rs1.getString("name");
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
%>
<body>
	<div>
		<div class="lL">
			<div class="l"><img src="home-img.png"></div>
			<div class="r"><label>SMI Banking</label></div>
		</div>
		<div class="rR">
			<div class="Ll">
				<div class="Lll">
					<img src="user.png">
				</div>
				<div class="Rrr">
					<label><%=name %></label>
				</div>
			</div>
			<div class="Rr">
				<div class="LllL">
					<img src="logout.png">
				</div>
				<div class="RrrR">
					<label><a href="">[logout]</a></label>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="left">
			<div class="butt">
				<a href="" target="_blank">HOME</a>
			</div>
			<div class="amount">
				<p>Current Amount Summary</p>
				<hr>
				<table>
					<col width="80">
					<tr>
						<td><label>Acount ID</label></td>
						<td><label>:</label></td>
						<td><LABEL><%=account_id %></LABEL></td>
					</tr>
				</table>
				<hr>
				<table>
					<col width="80">
					<tr>
						<td><label>Amount</label></td>
						<td><label>:</label></td>
						<td><label>Rs.<%=amount %></label></td>
					</tr>
				</table>
				<hr>
				<table>
					<col width="80">
					<tr>
						<td><label>Type</label></td>
						<td><label>:</label></td>
						<td><label>Checking Account</label></td>
					</tr>
				</table>
			</div>
			<div class="menu">
				<ul>
					<li><a href="client_account_details.jsp"><img src="money.png">ACCOUNT DETAILS</a></li>
					<li><a href="client_transfer_money.jsp"><img src="transfer-money.png">TRANSFER MONEY</a></li>
					<li><a href="client_transaction_history.jsp"><img src="history.png">TRANSACTION HISTORY</a></li>
					<li><a href=""><img src="gear.png">SETTINGS</a></li>
					<li><a href="client_fd_rd.jsp"><img src="gear.png">FD & RD Details</a></li>
				</ul>
			</div>
		</div>
		<div class="right">
			<div class="first">
				<div><a href="client_account_details.jsp"><img src="money.png"></a></div>
				<div><a href="client_transfer_money.jsp"><img src="transfer-money.png"></a></div>
			</div>
			<div class="second">
				<div><a href="client_transaction_history.jsp"><img src="history.png"></a></div>
				<div><a href=""><img src="gear.png"></a></div>
			</div>
		</div>
	</div>
</body>
</html>
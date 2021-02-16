<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<style>
            body{
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background: url(background.jpg);
            background-size: cover;
            width: 100%;
            height: 100%;
            z-index: 1;
        }
        .container{
            width: 360px;
            height: 500px;
            background: white;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            text-align: center;
            box-shadow: 1px 5px 18px #505050;
			border-radius: 5px;
        }
        .container h1{
            font-size: 30px;
            margin-bottom: 60px;
            color: black;
        }
        .tbox{
            width: 260px;
            height: 40px;
            background: #f1f1f1b3;
            border-radius: 10px;
            margin: 10px auto;
            color: white;
            border: 1px solid black;
        }
        .tbox input{
            background: none;
            border: none;
            outline: none;
            text-align: center;
            width: 90%;
            line-height: 37px;
            font-family: sans-serif;
            font-size: 14px;
            
        }
        .btn{
            width: 260px;
            height: 40px;
            background-color: rgb(0,162,232);
            border-radius: 10px;
            margin: 14px auto;
            display: block;
            font-family: sans-serif;
            font-size: 16px;
            border: none;
            color: white;
            cursor: pointer;
        }
        .btn:hover{
            background-color: rgb(250,171,59);
        }
        .b1{
            display: block;
            width: 260px;
            padding: 10px 0;
            text-align: center;
            margin: auto;
            color: aqua;
            transition: 0.4s all;
        }
        a:hover{
            background: #00000040;
        }
        img{
        	width: 70px;
        	height: 70px;
        	margin-top: 60px;
        }
        </style>
</head>
<body>
	<div class="container">
        <form action="ClientLogin" method="post">
        	<img src="home-img.png">
            <h1>SMI Banking</h1>
            <div class="tbox">
            <input type="text" name="account_id" required placeholder="Account Id">
        </div>
        <div class="tbox">
            <input type="password" name="security_pin"  placeholder="Security Pin" >
        </div>
            <input class="btn" type="submit" name="" value="Login">
        </form>
    </div>
</body>
</html>
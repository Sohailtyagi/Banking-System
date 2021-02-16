<%-- 
    Document   : index
    Created on : Mar 8, 2020, 5:34:08 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Homepage</title>
        <link rel="stylesheet" href="admin_style.css" type="text/css" media="all" />
        <style>
            @import url("https://fonts.googleapis.com/css?family=Caladea&display=swap");
        </style>
        <link
            href="https://fonts.googleapis.com/css?family=Caladea&display=swap"
            rel="stylesheet"
            />

        <link
            rel="stylesheet"
            id="slick_theme-css"
            href="AdminLTE.min.css"
            type="text/css"
            media="all"
            />

        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
            crossorigin="anonymous"
            />
        <link
            href="https://fonts.googleapis.com/icon?family=Material+Icons"
            rel="stylesheet"
            />
        <link
            href="https://fonts.googleapis.com/css?family=Gelasio&display=swap"
            rel="stylesheet"
            />
    </head>
    <body>
        <header class="main-header">
            <nav class="navbar navbar-expand-lg " style="background-color: #00001a; color: white;">
                <span
                    class="navbar-brand mb-0 h1 "
                    style="color: white; font-weight: bolder;"
                    href="#"
                    >
                    <img
                        src="download.png"
                        width="30"
                        height="30"
                        class="d-inline-block align-top"
                        alt=""
                        />
                    SMI Banking
                </span>
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <li class="dropdown user user-menu">
                            <a>
                                <i class="material-icons" style="color: black;">person</i>
                                <span class="hidden-xs" style="font-weight: bolder;"
                                      >Gandharv Kumar Singh</span
                                >
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <aside class="main-sidebar" style="background-color: #00001a; color: white;">
            <section class="sidebar" >
                <ul class="sidebar-menu">
                    <li>
                        <a href="#">
                            <i class="material-icons">person_add</i>
                            <span>Add Customer</span>
                        </a>
                    </li>

                    <li id="ManageBookMain" class="treeview">
                        <a href="#">
                            <i class="material-icons">search</i>
                            <span>Search Customer</span>
                        </a>
                    </li>
                    <li>
                        <a href="deposit.jsp">

                            <img
                                src="banknotes.png"
                                width="35px"
                                height="30px"
                                style="color: white;"
                                />
                            <span>Deposit Money</span>
                        </a>
                    </li>
                    <li>
                        <a href="withdraw.jsp">
                            <img
                                src="atm.png"
                                width="40px"
                                height="30px"
                                style="color: white;"
                                />
                            <span>Withdraw Money</span>
                        </a>
                    </li>
                    <li>
                        <a href="fd.jsp">
                            <img
                                src="deposit.png"
                                width="30px"
                                height="30px"
                                style="color: white;"
                                />

                            <span>Fixed Deposit (FD)</span>
                        </a>
                    </li>
                    <li>
                        <a href="rd.jsp">
                            <img
                                src="money-deposit.png"
                                width="35px"
                                height="35px"
                                style="color: white;"
                                />
                            <span>Recurring Deposit (RD)</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img
                                src="transfermoney.png"
                                width="35px"
                                height="35px"
                                style="color: white;"
                                />
                            <span>Transfer Money</span>
                        </a>
                    </li>
                    <li>
                        <a href="transaction.jsp">
                            <img
                                src="clock.png"
                                width="35px"
                                height="35px"
                                style="color: white;"
                                />
                            <span>Transaction History</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="material-icons">tune</i>
                            <span>General Settings</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img
                                src="close_acc.png"
                                width="35px"
                                height="35px"
                                style="color: white;"
                                />
                            <span>
                                Close Account
                            </span>
                        </a>
                    </li>
                    <li>
                            <a href="#">
                                <img
                                    src="request.png"
                                    width="35px"
                                    height="35px"
                                    style="color: white;"
                                    />
                                <span>Requests</span>
                            </a>
                    </li>
                </ul>
            </section>
        </aside>
        <div class="content">
            <h1
                style="
                color: black;
                text-align:center;
                font-family: 'Caladea' ; 
                position: absolute;
                top: 120px;
                right: 0px;
                width: 1400px;"
                >
                Welcome To SMI Banking
            </h1>

            <section class="content">
                <div class="row">
                    <div class="col-lg-3 col-xs-6">
                        <div class="small-box bg-aqua"  style="background-color:#00c0ef">
                            <div class="inner">
                                <h3>0</h3>
                                <p>Number of Users</p>
                            </div>
                            <div class="icon">
                                <i class="material-icons">import_contacts</i>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-xs-6">
                        <div class="small-box bg-green"  style="background-color: #00a65a;">
                            <div class="inner">
                                <h3>0</h3>
                                <p>
                                    Total Deposit Balance
                                </p>
                            </div>
                            <div class="icon">
                                <i class="material-icons">monetization_on</i>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-xs-6">
                        <div class="small-box bg-yellow"  style="background-color:#f39c12;">
                            <div class="inner">
                                <h3>0</h3>
                                <p>Total Interest Balance</p>
                            </div>
                            <div class="icon">
                                <i class="material-icons">monetization_on</i>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.9/angular.min.js"></script>
        <script
            src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"
        ></script>
    </body>
</html>

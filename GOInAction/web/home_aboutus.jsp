<%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/21/2017
  Time: 10:32 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


    <style type="text/css">

        ul {
            margin: 0px;
            padding: 0px;

            list-style: none;
            font-family: arial;
        }

        ul li {
            float: left;
            width: 212px;
            height: 40px;
            border-color:black;
            opacity: .8;
            line-height: 40px;
            text-align: center;
            font-size: 20px;
            padding: 5px;
        }

        ul li a {
            text-decoration: none;
            color: black;
            display: block;

        }

        ul li a:hover {
        //  background-color: red;

        }

        ul li ul li{
            display: none;
        }

        ul li:hover ul li {
            display: block;
        }
    </style>
</head>

<body>
<h1 style=" text-align:center;background-color:coral;color:green;width:1%; length:500%; ">GO in Action</h1>
<div style="background-color: coral ;color: green;text-blink:true;">  <marquee behavior="" direction=""  >To be aware of Public Scheme</marquee>
</div>
<ul>
    <li><a href="index.jsp" style="background-color:coral;">Home</a></li>
    <li><a href="home_aboutus.jsp" style="background-color: azure;">About Us</a></li>

    <li><a href="register.jsp" style="background-color: green;">Register</a>

    </li>
    <li><a href="login.jsp" style="background-color:coral;">Login</a>

    </li>
    <li><a href="home_contact.jsp" style="background-color:azure;">Contact Us</a></li>
    <li><a href="home_viewscheme.jsp" style="background-color:green;">Schemes</a></li>


</ul>

<br>
<br>
<h4>This a program made by the Government</h4>
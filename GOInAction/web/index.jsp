<%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/18/2017
  Time: 5:44 PM
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
  <h1 style="text-align: center">Welcome to This Program</h1>
<br>





  </body>
</html>






<!--
For User Table
create table registable(name varchar2(25),dob DATE,gen varchar2(5),eid varchar2(20),pass varchar2(15),qual varchar2(20),relg varchar2(10),caste varchar2(10),pc varchar2(5),ai varchar2(10),pn varchar2(12),addr varchar2(100));
For Scheme Table
create table schemetable(sn varchar2(20),des varchar2(100),pc varchar2(5),rel varchar2(10),cas varchar2(10),ai varchar2(20));



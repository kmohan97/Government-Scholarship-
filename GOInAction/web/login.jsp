<%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/19/2017
  Time: 1:12 AM
  To change this template use File | Settings | File Templates.
--%><%--
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

        form{
            text-align: center;
            align-content: center;


        }
        table{
            position: fixed;
            top:40%;
            left:40%;

        }

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
<form action="login1.jsp">
    <h3>Login Page</h3>
    <table><tr><td>Email Id:</td><td><input type="text" name="t1"></td></tr>
    <tr><td>Password:</td><td><input type="password" name="t2"></td></tr>
        <tr>
            <th><input type="reset" value="Reset"></th>
            <th><input type="submit" value="Submit"></th>
        </tr>

    </table>

</form>



</body>
</html>









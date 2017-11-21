<%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/20/2017
  Time: 11:16 PM
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
        table{
    position: fixed;
    top:45%;
    left:40%;
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
<div style="background-color: green ;color: coral;text-blink:true;">  <marquee behavior="" direction="" >User Profile</marquee>

</div>
<ul>
    <li><a href="login3.jsp" style="background-color:coral;">Home</a></li>
    <li><a href="user_viewscheme.jsp" style="background-color: azure;">Schemes</a></li>

    <li><a href="user_myscheme.jsp" style="background-color: green;">My Schemes</a>

    </li>
    <li><a href="user_appliedscheme.jsp" style="background-color:coral;">Applied Schemes</a>

    </li>
    <li><a href="user_feedback.jsp" style="background-color:azure;">Feedback</a></li>
    <li><a href="admin_logout.jsp" style="background-color:green;">Logout</a></li>


</ul>

<form action="user_feedback1.jsp">
    <table border="1px">
        <tr><td>
            <th>
                Comments
            </th></td>
        </tr>
        <tr>
            <td><th>
            <textarea name="t1" id="" cols="30" rows="10"></textarea>
        </th></td>
        </tr>
        <tr><td>
            <th>
            <input type="submit" value="Post">
            </th></td>
        </tr>

    </table>


</form>
</body>
</html>
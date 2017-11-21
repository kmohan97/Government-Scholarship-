<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="static java.lang.Class.forName" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/19/2017
  Time: 1:16 AM
  To change this template use File | Settings | File Templates.
--%>
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
<!--
<body>
<h1 style=" text-align:center;background-color:coral;color:green;width:1%; length:500%; ">GO in Action</h1>
<div style="background-color: coral ;color: green;text-blink:true;">  <marquee behavior="" direction="" >Future of Scheming</marquee>
</div>
<ul>
    <li><a href="admin_home.jsp" style="background-color:coral;">Home</a></li>
    <li><a href="#" style="background-color: azure;">Scheme Status</a></li>

    <li><a href="#" style="background-color: green;">View Schemes</a>

    </li>
    <li><a href="#" style="background-color:coral;">Add New Schemes</a>

    </li>
    <li><a href="#" style="background-color:azure;">Complaints</a></li>
    <li><a href="admin_logout.jsp" style="background-color:green;">Logout</a></li>


</ul>-->
<%
    Connection cn;
    PreparedStatement ps;
    try {
        forName("oracle.jdbc.driver.OracleDriver");
        cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
        ps = cn.prepareStatement("SELECT * from REGISTABLE where eid=(?) and pass=(?)");

        String t1 = request.getParameter("t1");
        String t2 = request.getParameter("t2");
        if (t1.equals("admin") && t2.equals("admin")) {
                session.setAttribute("uname",t1);
            RequestDispatcher rd = request.getRequestDispatcher("login2.jsp");
            rd.forward(request, response);
        } else {
            ps.setString(1, t1);
            ps.setString(2, t2);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                session.setAttribute("uname",t1);

                RequestDispatcher rd = request.getRequestDispatcher("login3.jsp");
                rd.forward(request, response);

            } else {

                out.println("<h3 style='text-align:center;align:center;'>Please Check u Inputs</h3>");
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            }

        }
    }catch(Exception ee)
    {
        ee.printStackTrace();
    }



%>








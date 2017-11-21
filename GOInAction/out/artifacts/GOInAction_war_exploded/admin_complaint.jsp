<%@ page import="static java.lang.Class.forName" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/21/2017
  Time: 10:53 AM
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
            top:44%;
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
        h2{
            text-align: center;
        }
    </style>
</head>

<body>
<h1 style=" text-align:center;background-color:coral;color:green;width:1%; length:500%; ">GO in Action</h1>
<div style="background-color: coral ;color: green;text-blink:true;">  <marquee behavior="" direction=""  >To be aware of Public Scheme</marquee>
</div>
<div style="background-color: coral ;color: green;text-blink:true;">  <marquee behavior="" direction="" >Admin Profile</marquee>

</div>

<ul>
    <li><a href="admin_home.jsp" style="background-color:coral;">Home</a></li>
    <li><a href="admin_schemestatus.jsp" style="background-color: azure;">Scheme Status</a></li>

    <li><a href="admin_viewscheme.jsp" style="background-color: green;">View Schemes</a>

    </li>
    <li><a href="admin_addscheme.jsp" style="background-color:coral;">Add New Schemes</a>

    </li>
    <li><a href="admin_complaint.jsp" style="background-color:azure;">Complaints</a></li>
    <li><a href="admin_logout.jsp" style="background-color:green;">Logout</a></li>


</ul>
<h2 style="text-align: center;top:42%">Feedback </h2>
<%
    Connection cn;
    PreparedStatement ps;
    try {
        forName("oracle.jdbc.driver.OracleDriver");
        cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
        ps = cn.prepareStatement("Select * from FEEDBACKTABLE");
        ResultSet rs = ps.executeQuery();

ResultSetMetaData rsmd=rs.getMetaData();
        if (rs.next()) {
           int i=rsmd.getColumnCount();
            out.println("<table border=1px><tr>");

                out.println("<td>");
                out.println("Email Id");
                out.println("</td>");

            out.println("<td>");
            out.println("Complaints");
            out.println("</td>");


            out.println("</tr>");





            do {
                out.println("<tr>");
                int h = 1;

                while (h <= i) {
                    out.println("<td>");
                    out.println(rs.getString(h));
                    out.println("</td>");
                    h++;
                }
                out.println("</tr>");
            }while (rs.next());

        }
    }catch(Exception ee)
    {

    }

%>



</body>
</html>

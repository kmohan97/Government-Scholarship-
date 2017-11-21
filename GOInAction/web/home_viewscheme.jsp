<%@ page import="static java.lang.Class.forName" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/21/2017
  Time: 10:16 PM
  To change this template use File | Settings | File Templates.
--%><%--
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
            left:30%;

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
<h2 style="text-align: center">Available Schemes</h2>
<%
    Connection cn;
    PreparedStatement ps;
    try {
        forName("oracle.jdbc.driver.OracleDriver");
        cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
        ps = cn.prepareStatement("Select * from SCHEMETABLE");
        ResultSet rs = ps.executeQuery();


        ResultSetMetaData rsmd = rs.getMetaData();
        if (rs.next()) {
            //out.println("<html><head><style type='text/css'>#qwe{border:2px solid brown;position:relative;top:20px;color:blue;font-size:30px;background-color:brown;}#ert{border:2px solid green;position:relative;height:400px;top:100px;width:500px;}h4{color:black;}</style></head><body bgcolor=green><br><br><br><marquee id='wer'>CLERK SECTION</marquee><br><br></div><br><br><a href='clerk1.html'><h4>Go Back</h4></a><h1>ALL Details</h1><center><br>");
            int i = rsmd.getColumnCount();
            int h = 0;
            out.println("<table border=1px><tr>");

            String rdf[]={"Scheme Name","Description","Physically Challenged","Religion","Caste","Annual Income Limit"};
            while (h < i) {
                out.println("<td>");

                out.println(rdf[h]);
                h++;
                out.println("</td>");
            }

            out.println("</tr>");





            do {
                out.println("<tr>");
                h = 1;

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











</body>
</html>










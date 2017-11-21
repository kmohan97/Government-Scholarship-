<%@ page import="static java.lang.Class.forName" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/20/2017
  Time: 9:42 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


    <style type="text/css">
        table{
            position: fixed;
            top:40%;
            left:47%;
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
        h2{
            text-align: center;
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

<h3 style="text-align: center">Applied Schemes</h3>
<%
    Connection cn;
    PreparedStatement ps2;
    try {
        forName("oracle.jdbc.driver.OracleDriver");
        cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
         ps2=cn.prepareStatement("Select * from SCHOLARTABLE1 where eid=(?)");

        //String t1=request.getParameter("t1");
        String s1=(String)session.getAttribute("uname");
        //out.println(s1);
        ps2.setString(1,s1);
       // out.println(s1+"BYE");


        ResultSet rs1=ps2.executeQuery();

      //  out.println(s1+" hi");

        if (rs1.next()) {
            //out.println("<html><head><style type='text/css'>#qwe{border:2px solid brown;position:relative;top:20px;color:blue;font-size:30px;background-color:brown;}#ert{border:2px solid green;position:relative;height:400px;top:100px;width:500px;}h4{color:black;}</style></head><body bgcolor=green><br><br><br><marquee id='wer'>CLERK SECTION</marquee><br><br></div><br><br><a href='clerk1.html'><h4>Go Back</h4></a><h1>ALL Details</h1><center><br>");


            out.println("<table border=1px><tr>");
//out.println("husfdz");

                out.println("<td>");

                out.println("Scheme Name");
                out.println("</td>");


            out.println("</tr>");





            do {
                out.println("<tr>");


                    out.println("<td>");
                    out.println(rs1.getString(2));
                    out.println("</td>");


                out.println("</tr>");
            }while (rs1.next());

        }else{
            out.println("ITs Empty.NO APplied Schemes");
        }
    }catch(Exception ee)
    {

    }
%>
</form>
</body>
</html>



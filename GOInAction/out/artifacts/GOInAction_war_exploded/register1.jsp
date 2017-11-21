<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="static java.lang.Class.forName" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/19/2017
  Time: 12:00 AM
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

<%   Connection cn;
     PreparedStatement ps,ps3;
    try{
        forName("oracle.jdbc.driver.OracleDriver");
        cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");

        ps3=cn.prepareStatement("select * from REGISTABLE where EID=(?)");
        String t111=(String)request.getParameter("t4");
        ps3.setString(1,t111);
        ResultSet rs1=ps3.executeQuery();

        if(rs1.next()) {
            out.println("<h3 style='text-align:center'>Please Change the Email Id</h3>");
        }else{
            ps = cn.prepareStatement("Insert into REGISTABLE values(?,?,?,?,?,?,?,?,?,?,?,?)");

            String t1 = request.getParameter("t1");
            String t2 = request.getParameter("t2");
            String name = t1 + " " + t2;
            String t3 = request.getParameter("t3");
            String gen = request.getParameter("gender");
            String gender;
            if (gen.equals("t31"))
                gender = "M";
            else if (gen.equals("t32"))
                gender = "F";
            else
                gender = "Other";
            String t4 = request.getParameter("t4");
            String t5 = request.getParameter("t5");
            String t6 = request.getParameter("t6");
            String rel = request.getParameter("religion");
            String religion;
            if (rel.equals("t71"))
                religion = "Hindu";
            else if (rel.equals("t72"))
                religion = "Muslim";
            else if (rel.equals("t73"))
                religion = "Christian";
            else
                religion = "Other";

            String cas = request.getParameter("t8");
            String caste;
            if (cas.equals("General"))
                caste = "General";
            else if (cas.equals("OC"))
                caste = "OC";
            else if (cas.equals("SC"))
                caste = "SC";
            else if (cas.equals("ST"))
                caste = "ST";
            else
                caste = "BC";

            String rad = request.getParameter("chal");
            String chall;
            if (rad.equals("t91"))
                chall = "Yes";
            else
                chall = "No";

            int t10 = Integer.parseInt(request.getParameter("t10"));

            String t11 = request.getParameter("t11");
            String t12 = request.getParameter("t12");


            ps.setString(1, name);
            ps.setString(2, t3);
            ps.setString(3, gender);
            ps.setString(4, t4);
            ps.setString(5, t5);
            ps.setString(6, t6);
            ps.setString(7, religion);
            ps.setString(8, caste);
            ps.setString(9, chall);
            ps.setInt(10, t10);
            ps.setString(11, t11);
            ps.setString(12, t12);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                out.println("<h1 style='text-align:center;'>SucCeSsFully INserTed</h1>");
            } else {

                out.println("Please Check the date format");


            }
        }
    }catch(Exception ee)
    {
        ee.printStackTrace();
    }
%>






</body>
</html>









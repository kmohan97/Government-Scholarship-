<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="static java.lang.Class.forName" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/19/2017
  Time: 11:49 AM
  To change this template use File | Settings | File Templates.
--%>

<%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/19/2017
  Time: 10:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/19/2017
  Time: 10:28 AM
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
<%

    Connection cn;
    PreparedStatement ps,ps1;
    try {
        forName("oracle.jdbc.driver.OracleDriver");
        cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
        ps1=cn.prepareStatement("select * from SCHEMETABLE where sn=(?)");
        String t11=request.getParameter("t1");
        //String s1=(String)session.getAttribute("uname");
        ps1.setString(1,t11);
        ResultSet rs=ps1.executeQuery();
        if(rs.next()) {
            out.println("<h2 style='text-align:center'>Please Change the SCHEME NAME</h2>'");
        }
        else {


            ps = cn.prepareStatement("Insert into SCHEMETABLE values(?,?,?,?,?,?)");

            String t1 = request.getParameter("t1");
            String t2 = request.getParameter("t2");
            String rad = request.getParameter("chall");
            String chall;
            if (rad.equals("Yes"))
                chall = "Yes";
            else
                chall = "No";


            String rel = request.getParameter("rel");
            String religion;
            if (rel.equals("Hindu"))
                religion = "Hindu";
            else if (rel.equals("Muslim"))
                religion = "Muslim";
            else if (rel.equals("Christian"))
                religion = "Christian";
            else
                religion = "Other";

            String cas = request.getParameter("caste");
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

            int t3 = Integer.parseInt(request.getParameter("t3"));
            ps.setString(1, t1);
            ps.setString(2, t2);
            ps.setString(3, chall);
            ps.setString(4, religion);
            ps.setString(5, caste);
            ps.setInt(6, t3);


            int i = ps.executeUpdate();
            if (i == 1) {
                out.println("<h3 style='text-align:center;align:center;'>Successfully Inserted</h3>");
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("admin_addscheme.jsp");
                rd.forward(request, response);
            }

        }
    }catch(Exception ee)
    {

    }
%>


</body>
</html>







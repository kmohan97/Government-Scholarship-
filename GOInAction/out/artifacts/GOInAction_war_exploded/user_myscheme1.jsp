<%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/20/2017
  Time: 6:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="static java.lang.Class.forName" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/19/2017
  Time: 11:53 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


    <style type="text/css">
        table{
            position: fixed;
            top:40%;
            left:20%;
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
    <%
        Connection cn;
        PreparedStatement ps,ps1,ps2,ps3;
        try {
            forName("oracle.jdbc.driver.OracleDriver");
            cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
            ps1=cn.prepareStatement("select * from SCHOLARTABLE where sn=(?)");
            String t1=request.getParameter("t1");
            String s1=(String)session.getAttribute("uname");
            ps1.setString(1,t1);
            ResultSet rs=ps1.executeQuery();
            if(rs.next())
            {



                int r=rs.getInt(2);
                ps=cn.prepareStatement("update SCHOLARTABLE set  app=(?) where sn=(?)");
               // out.println("Upper 1");
                r++;
                ps.setInt(1,r);
                ps.setString(2,t1);


                ps3=cn.prepareStatement("select * from SCHOLARTABLE1 where EID=(?) and sn=(?)");
                ps3.setString(1,s1);
                ps3.setString(2,t1);
                ResultSet rs1=ps3.executeQuery();
                int j=0;

                if(rs1.next()) {
                    out.println("Upper Level true");
                    out.println("<h4 style='text-align:center;'>U have already applied for this scheme</h4>");


                }else{
                    out.println("Upper Level False");
                    ps2 = cn.prepareStatement("insert into SCHOLARTABLE1 VALUES(?,?)");
                    ps2.setString(1, s1);
                    ps2.setString(2, t1);
                    j = ps2.executeUpdate();
                    boolean gf=ps.execute();


                }



                if(j==1)
                    out.println("<h3 style='text-align:center;'>Successfully Applied</h3>");
                else
                    out.println("<h3 style='text-align:center;'>Could Not Apply Successfully</h3>");




            }else{
                ps=cn.prepareStatement("insert into SCHOLARTABLE values(?,?)");
                int qw=0;
                ps.setString(1,t1);
                ps.setInt(2,qw);

                out.println("Lower Level1");
          //      out.println("Lower 1");
                int i=0;


                ps3=cn.prepareStatement("select * from SCHOLARTABLE1 where EID=(?) and sn=(?)");
                ps3.setString(1,s1);
                ps3.setString(2,t1);
                ResultSet rs1=ps3.executeQuery();
                int j=0;
                if(rs1.next()) {
                    out.println("Lower Level true");

                    out.println("<h4 style='text-align:center;'>U have already applied for this scheme</h4>");


                }else{
                    out.println("Lower Level false");

                    ps2 = cn.prepareStatement("insert into SCHOLARTABLE1 VALUES(?,?)");
                    ps2.setString(1, s1);
                    ps2.setString(2, t1);
                    j = ps2.executeUpdate();
                    i=ps.executeUpdate();

                }




                if(i==1 && j==1)
                    out.println("<h3 style='text-align:center;'>Successfully Applied</h3>");
                else
                    out.println("<h3 style='text-align:center;'>Could Not Apply Successfully</h3>");




            }

















        }catch(Exception ee)
        {

        }
    %>
</form>
</body>
</html>



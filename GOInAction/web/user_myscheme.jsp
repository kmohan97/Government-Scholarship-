<%@ page import="static java.lang.Class.forName" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.websocket.Session" %><%--
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
<h3 style="text-align: center">Schemes Available For U</h3>
<form action="user_myscheme1.jsp">
<%
     Connection cn,cn1;
    PreparedStatement ps;
    try {
        forName("oracle.jdbc.driver.OracleDriver");
        cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
//        cn1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");

        String s=(String)session.getAttribute("uname");
        ps=cn.prepareStatement("Select * from REGISTABLE where eid=(?)");
        ps.setString(1,s);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
            {
                String pc=rs.getString(9);
                String rel=rs.getString(7);
                String caste=rs.getString(8);
                int ai=Integer.parseInt(rs.getString(10));
//                out.println("Hi"+pc+rel+ai+caste);

                PreparedStatement ps1=cn.prepareStatement("select * from SCHEMETABLE where pc=(?) and cas=(?) and (?)<=ai");

                ps1.setString(1,pc);
                ps1.setString(2,caste);
               ps1.setInt(3,ai);

                ResultSet rs1=ps1.executeQuery();


            ResultSetMetaData rsmd = rs1.getMetaData();
            if (rs1.next()) {
//                out.println("<br>Hello");
            //out.println("<html><head><style type='text/css'>#qwe{border:2px solid brown;position:relative;top:20px;color:blue;font-size:30px;background-color:brown;}#ert{border:2px solid green;position:relative;height:400px;top:100px;width:500px;}h4{color:black;}</style></head><body bgcolor=green><br><br><br><marquee id='wer'>CLERK SECTION</marquee><br><br></div><br><br><a href='clerk1.html'><h4>Go Back</h4></a><h1>ALL Details</h1><center><br>");
            int i = rsmd.getColumnCount();
            int h = 0;
            out.println(" <table border=1px><tr>");

            String rdf[]={"Scheme Name","Description","Physically Challenged","Religion","Caste","Annual Income"};
            while (h < i) {
                out.println("<td>");

                out.println(rdf[h]);
                h++;
                out.println("</td>");
            }

            out.println("</tr>");





                int p=0;
            do {
                out.println("<tr>");
                h = 1;

                //String s1="t"+Integer.toString(p);
                while (h <= i) {

                    if(h==1){

                        out.println("<td>");
                    out.println("<html><body><form action='user_myscheme1.jsp'><input type='text' name='t1' value='"+rs1.getString(h)+"' readOnly");

                    out.println("</td>");
                    h++;

                    }else{
                        out.println("<td>");
                        out.println(rs1.getString(h));
                        out.println("</td>");
                        h++;
                    }
                }
                out.println("<td>");

                out.println("<input type='submit' value='Apply'></form></html>");
                p++;

                out.println("</td>");

                out.println("</tr>");
            }while(rs1.next());
       //     out.println("<br><input type='text' ")
//                String s2=Integer.toString(p);
//            session.setAttribute("full",s2);
            }else{
                out.println("No Matching Scheme Available");
            }


            }else{
            out.println("Please check");
        }


        }catch(Exception ee)
        {

        }

%>
</form>
</body>
</html>



<%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/19/2017
  Time: 11:04 AM
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
        .tab{
            position: fixed;
            top:42%;
            left:37%;
            border-color: black;

        }
    </style>
</head>


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
<h2 style="text-align: center">Create the Schemes</h2>
   <form action="admin_addscheme1.jsp">
<table  class="tab">
    <tr>
        <td>
            Scheme Name:
        </td>
        <td>
            <input type="text" name="t1">
        </td>
    </tr>

    <tr>
        <td>
            Description:
        </td>
        <td>
            <textarea name="t2" id="" cols="30" rows="10"></textarea>
        </td>
    </tr>
    <tr>
       <td>
           Applicable To-
       </td>
        <td>
            <table>
               <tr>
                    <td>
                        Physically Challenged:
                    </td>
                   <td>
                       <input type="radio" name="chall" value="Yes">Yes
                       <input type="radio" name="chall" value="No">No

                   </td>
               </tr>
                <tr>
                    <td>
                        Religion:
                    </td>
                    <td>
                        <input type="radio" name="rel" value="Hindu">Hindu
                        <input type="radio" name="rel" value="Muslim">Muslim
                        <input type="radio" name="rel" value="Christian">Christian
                        <input type="radio" name="rel" value="Other">Others


                    </td>

                </tr>
                <tr>
                    <td>
                        Caste:
                    </td>
                    <td>
                        <input type="radio" name="caste" value="General">General
                        <input type="radio" name="caste" value="OC">OC
                        <input type="radio" name="caste" value="SC">SC
                        <input type="radio" name="caste" value="ST">ST
                        <input type="radio" name="caste" value="BC">BC



                    </td>


                </tr>

                <tr>
                    <td>
                        Annual Income Limit:
                    </td>
                    <td>
                        <input type="text" name="t3">
                    </td>
                </tr>

            </table>

        </td>


    </tr>


       <tr>
           <th>
               <input type="reset" value="Reset">
           </th>

           <th>

               <input type="submit" value="Submit">
           </th>

       </tr>
</table>


</form>
</body>
</html>









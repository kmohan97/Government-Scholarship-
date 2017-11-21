<%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 11/18/2017
  Time: 10:05 PM
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

        h5{
            text-align: center;
        }
        form {
    position: fixed;
    top: 34%;
    left: 40%;
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

<h5>Registration Form</h5>
<br>
<form action="register1.jsp" >

    <table>
    <tr>
    <td>
        First Name:
    </td>
       <td>
    <input type="text" name="t1">
       </td>
    </tr>

    <tr>
    <td>
    Last Name:
    </td>
    <td>
        <input type="text" name="t2">
    </td>
    </tr>



        <tr><td>DOB(dd-MM(in words)-yyyy):</td><td><input type="text" name="t3"></td></tr>

    <tr> <td> Gender:</td><td><input type="radio" name="gender" value="t31">M     <input type="radio" name="gender" value="t32">F            <input type="radio" name="gender" value="t33">Others</td></tr>

    <tr>   <td> Email Id:</td><td><input type="text" name="t4"></td></tr>
    <tr>   <td>Password:</td><td><input type="text" name="t5"></td></tr>
    <tr><td>Confirm Password:</td><td><input type="text" name="t52"></td></tr>
    <tr><td>Qualification:</td><td><input type="text" name="t6"></td></tr>
   <tr><td> Religion:</td><td><input type="radio" name="religion" value="t71">Hindu   <input type="radio" name="religion" value="t72">Muslim   <input type="radio" name="religion" value="t73">Christian <input type="radio" name="religion" value="t74">Others</td></tr>
<tr><td>Caste:</td><td><select name="t8">
             <option value="General">General</option>
             <option value="OC">OC</option>
             <option value="SC">SC</option>
             <option value="ST">ST</option>
             <option VALUE="BC">BC</option>
    </select></td></tr>
    <tr><td>Physically Challenge:</td><td><input type="radio" name="chal" value="t91">Yes<input type="radio" name="chal" id="t92">No</td></tr>
 <tr><td>Annual Income:</td><td><input type="text" name="t10"></td></tr>
      <tr><td>Phone Number:</td><td><input type="text" name="t11"></td></tr>
        <tr><td>    Address:</td><td><textarea name="t12" cols="15" rows="3"></textarea></td></tr>
    <tr>
    <td><input type="submit" value="Submit"></td><td>                     <input type="reset" value="Reset">
    </td>
    </tr>

</table>
</form>


</body>
</html>













<!--

css:

body {
background: url('nature.jpg') no-repeat;
background-size: none;
margin-left: 10%;
}

ul {
margin: 0px;
padding: 0px;
list-style: none;
font-family: arial;
}

ul li {
float: left;
width: 200px;
height: 40px;
background-color: black;
opacity: .8;
line-height: 40px;
text-align: center;
font-size: 20px;
}

ul li a {
text-decoration: none;
color: white;
display: block;
}

ul li a:hover {
background-color: green;
}

ul li ul li{
display: none;
}

ul li:hover ul li {
display: block;
}


html:

<!DOCTYPE html>
<html>
<head>
<title>transarent nav bar</title>
<link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body>

<ul>
<li><a href="#">Home</a></li>
<li><a href="#">About</a>
<ul>
<li><a href="">Our Team</a></li>
<li><a href="">Camp Sites</a></li>
<li><a href="">Mission &amp; Vision</a></li>
<li><a href="">Resources</a></li>
</ul>
</li>
<li><a href="#">Things to do</a>
<ul>
<li><a href="">Activities</a></li>
<li><a href="">Parks</a></li>
<li><a href="">Shops</a></li>
<li><a href="">Events</a></li>
</ul>
</li>
<li><a href="#">Contact</a>
<ul>
<li><a href="">Map</a></li>
<li><a href="">Directions</a></li>
</ul>
</li>
<li><a href="#">News</a></li>
</ul>

</body>
</html>
-->
<!DOCTYPE html>
<html>
<title>Bin Packing</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}

</style>
<body>
<%@ page import="java.util.*" %>
<%! public  int i,j; %>
<%! String num1=new String(); %>
<% num1=request.getParameter("num1");%>
<% j=Integer.parseInt(num1);%>

<!-- Navbar -->


<!-- Header -->
<header class="w3-container w3-blue w3-center" style="padding:0px 0px">
  <h1><b><center>
  
  <img src="pack1.gif">
</header>

<!-- First Grid -->
<div class='effects'></div>
  <h1><b><center>
<p class="w3-text-black"><font size="24"><h1>BIN PACKING PROBLEM</h1></font></p></center></b></h1>
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
    
 <form action="binpacking3.jsp" method="post">
  CAPACITY OF BIN:<input type"text" name="cap">
  <br>
  <br>  
   <%for(i=1;i<=j;i++)
	{%>
	
	WEIGHT OF ITEM <%=i %>:<input type"text" name="weight">  
	     <br>
<%}%>
     <br><input type="submit" name="submit" value="submit">
        </form>


    <div class="w3-third w3-center">
     
    </div>
  </div>
</div>


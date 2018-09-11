<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hamiltonian Cycle</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="aashi2.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  -->
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}

</style>
</head>
<body>
<header class="w3-container w3-blue w3-center" style="padding:0px 0px">
<div class='effects'></div>
  <h1><b><center>
  
  <img src="ham.gif">
</header>
<div class='effects'></div>
  <h1><b><center>
  
<p class="w3-text-black"><font size="24"><h1>HAMILTONIAN CYCLE PROBLEM</h1></font></p></center></b></h1>
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
    <h3>
    <%! int m,j; %>
    <%! public int k; %>
    <%! String num=new String(); %>
    <% num=request.getParameter("num1"); %>
    <% k=Integer.parseInt(num); %>
    ENTER THE GRAPH DETAILS:
    <form action="Hamiltonian.jsp" method="post">
     <%for(m=0;m<k;m++)
	{
	   for(j=0;j<k;j++)
		   {%>
	
	   GRAPH (<%=m+1 %>,<%=j+1 %>) : <input type="text" name="ad">  
	   
	    <br><br> 
<%}
}%>
     <input type="submit" name="submit" value="submit">
        </form>  
        </h3>
    <div class="w3-third w3-center">
     
    </div>
  </div>
</div>
</div>
</body>
</html>
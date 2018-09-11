<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<body>

<!-- Navbar -->


<!-- Header -->
<header class="w3-container w3-blue w3-center" style="padding:0px 0px">

<div class='effects'></div>
  <h1><b><center>
  
  <img src="ham.gif">
</header>

<!-- First Grid -->
<div class='effects'></div>
  <h1><b><center>
  
<p class="w3-text-black"><font size="24"><h1>HAMILTONIAN CYCLE PROBLEM</h1></font></p></center></b></h1>
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
    <h3>
  <form action="hamiltonian2.jsp" method="post">
   NUMBER OF VERTICES: <input type="text" name ="num1" >
   <input type="submit" name="but">
        </form>  
        </h3>
        <br>
        <br>
        <br>
        <h4><u>DESCRIPTION OF PROBLEM</u></h4>
 <p>
 Hamiltonian path in an undirected graph is a path that visits each vertex exactly once. A Hamiltonian cycle (or Hamiltonian circuit) is a Hamiltonian Path such that there is an edge (in graph) from the last vertex to the first vertex of the Hamiltonian Path.
</p>


    <div class="w3-third w3-center">
     
    </div>
  </div>
</div>
</div>
</body>
</html>
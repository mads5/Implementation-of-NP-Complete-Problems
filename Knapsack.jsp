<!DOCTYPE html>
<html>
<head>
<title>Knapsack Problem</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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

<!-- Navbar -->


<!-- Header -->
<header class="w3-container w3-blue w3-center" style="padding:0px 0px">
<div class='effects'></div>
<img src="bag.png">
<marquee  width="1000" direction="left"><img src="item4.png"></marquee>
</header>

<!-- First Grid -->
<h1><b><center><p class="w3-text-black">
 KNAPSACK PROBLEM</p></center></b></h1>
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
    <h3>
  <form action="knapsacks1.jsp" method="post">
   NUMBER OF ITEMS: <input type="text" name ="num1" >
   <input type="submit" name="but">
        </form>  
        </h3>
        <br>
        <br>
        <br>
        <h4><u>DESCRIPTION OF PROBLEM</u></h4>
 <p>
Given weights and values of n items, put these items in a knapsack of capacity W to get the maximum total value in the knapsack. In other words, given two integer arrays val[0..n-1] and wt[0..n-1] which represent values and weights associated with n items respectively. Also given an integer W which represents knapsack capacity, find out the maximum value subset of val[] such that sum of the weights of this subset is smaller than or equal to W. You cannot break an item, either pick the complete item, or dont pick it (0-1 property).
</p>


    <div class="w3-third w3-center">
     
    </div>
  </div>
</div>


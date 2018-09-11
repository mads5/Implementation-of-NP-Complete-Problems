<!DOCTYPE html>
<html>
<title>Knapsack Problem</title>
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
<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-blue w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-blue" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="temp.html" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    </div>
    </div>
<!-- Header -->
<header class="w3-container w3-blue w3-center" style="padding:0px 0px">
  <h1><b><center></center>
  <%!int capc,a; %>
  <%a=0; %>
  <%!String cap1=new String(); %>
  <%String[] capacity=request.getParameterValues("weight"); %>
  <%String[] profit=request.getParameterValues("value"); %>
  <%cap1=request.getParameter("cap");%>
  <%capc=Integer.parseInt(cap1); %>
  <%! int inc[]; %>
       
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
 <%!int maximum(int a1, int b1)
 {  
	 if(a1>b1)
	 {
		
	     return a1;
	 }
	 else
	 {
		 
	     return b1;
	 }
 }   %>
     <%!int knapSack(int Weigh, int weight[], int value[], int num)
     {
        
       if (num == 0 || Weigh == 0)
       {   
         return 0;
       }
    
       if (weight[num-1] > Weigh)
       { 
        return knapSack(Weigh, weight, value, num-1);
       }
  
       else {
    	   
    	   return maximum( value[num-1] + knapSack(Weigh-weight[num-1], weight, value, num-1), knapSack(Weigh, weight, value, num-1)  );}
          
     }
     %>
     
     <%! int  Weigh,i,j,res; %>
     
     <%j=capacity.length; %>
     <%inc=new int[j]; %>
     <%! int value[]; %>
     <%! int weight[]; %>
     <% value=new int[j]; %>
     <% weight=new int[j]; %>
     <%Weigh=capc; %>
     <%for(i=0;i<capacity.length;i++)
    	 {
    	 value[i]=Integer.parseInt(profit[i]);
    	 weight[i]=Integer.parseInt(capacity[i]);
    	 }%>
     <%! int num; %>
     <% num=j;
        res=knapSack(Weigh, weight, value, num);
     %>  
   
     <h2>TOTAL PROFIT EARNED IS: <%=res %></h2>
     

    <div class="w3-third w3-center">
     
    </div>
  </div>
</div>
</div>
</body>
</html>

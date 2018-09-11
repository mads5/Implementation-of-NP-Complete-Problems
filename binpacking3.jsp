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
<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-blue w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-blue" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="temp.html" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    </div>
    </div>
<!-- Header -->
<header class="w3-container w3-blue w3-center" style="padding:0px 0px">
  <h1><b><center>
  
  <img src="pack1.gif">
  <%!int capc; %>
  <%!String cap1=new String(); %>
  <%! String capacity[]; %>
  <%capacity=request.getParameterValues("weight"); %>
  <%cap1=request.getParameter("cap");%>
  <%capc=Integer.parseInt(cap1); %>
</header>

<!-- First Grid -->
<div class='effects'></div>
  <h1><b><center>
<p class="w3-text-black"><font size="24"><h1>BIN PACKING PROBLEM</h1></font></p></center></b></h1>
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
 
     
     <%! int  Weigh,i,j,res; %>
     <%j=capacity.length; %>
     <%! int weight[]; %>
     <% weight=new int[j]; %>
     <%! int bin_rem[]; %>
     <%! int num; %>
     <% num=j;%>
     <% bin_rem=new int[num]; %>
     <%Weigh=capc; %>
     <%!
      int firstFit(int weight[], int n, int c)
      {
        res = 0;
        for (i=0; i<n; i++)
        {
            // Find the first bin that can accommodate
            // weight[i]
            for (j=0; j<res; j++)
            {
                if (bin_rem[j] >= weight[i])
                {
                    bin_rem[j] = bin_rem[j] - weight[i];
                    break;
                }
            }
     
            // If no bin could accommodate weight[i]
            if (j==res)
            {
                bin_rem[res] = c - weight[i];
                res++;
            }
        }
        return res;
     }
     %> 
     <%for(i=0;i<capacity.length;i++)
    	 {
    	
    	 weight[i]=Integer.parseInt(capacity[i]);
    	 }%>
    	 <%
        res=firstFit(weight, num, capc);
     %>  
   
     <h2>TOTAL NUMBER OF BINS IS: <%=res %></h2>

    <div class="w3-third w3-center">
     
    </div>
  </div>
</div>
</div>
</body>
</html>

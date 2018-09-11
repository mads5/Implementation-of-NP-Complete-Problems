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
<div class="w3-top">
  <div class="w3-bar w3-blue w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-blue" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="temp.html" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    </div>
    </div>
<header class="w3-container w3-blue w3-center" style="padding:0px 0px">

<div class='effects'></div>
  <h1><b><center>
  
  <img src="ham.gif">

<div class='effects'></div>
  
</header>
<h1><b><center>
  
<p class="w3-text-black"><font size="24"><h1>HAMILTONIAN CYCLE PROBLEM</h1></font></p></center></b>
    <%@ page import="java.util.Scanner" %>
    <%! int path[];   %>
    <%! int graph[][]=new int[10][10];   %>
    <%! String input="";   %>
    <%! int i,count1; %>
    <%count1=0; %>
    <%! int a; %>
     <%!
     boolean isSafe(int v, int graph[][], int path[], int pos)
     {
     if (graph[path[pos - 1]][v] == 0)
         return false;
     for (int i = 0; i < pos; i++)
         if (path[i] == v)
             return false;

     return true;
     }
     %>
     <%!
     boolean hamCycleUtil(int graph[][], int path[], int pos)
    {
       if (pos == u)
     {
         if (graph[path[pos - 1]][path[0]] == 1)
             return true;
         else
             return false;
     }
      for (int v = 1; v < u; v++)
      {
         if (isSafe(v, graph, path, pos))
         {
             path[pos] = v;
             if (hamCycleUtil(graph, path, pos + 1) == true)
                 return true;
             path[pos] = -1;
         }
     }
     return false;
 }
 %>
 <%!int hamCycle(int graph[][])
 {
     path = new int[u];
     for (int i = 0; i < u; i++)
         path[i] = -1;
     path[0] = 0;
     if (hamCycleUtil(graph, path, 1) == false)
     {
         count1=1;
         return 0;
     }

 return 1;
 }
 %>
 
<%! String g[]; %>
 <%   String[] g=request.getParameterValues("ad"); %>
 <%! int len,h,u; %>
 <% len=g.length; %>
  <%! public double k; %>
  <%! int b,c; %>
  <% c=0; %>
    <% k=Math.pow(len,0.5);
       u=(int)(k);%>
 <%for(a=0;a<u;a++)
 {
   for(b=0;b<u;b++)
   {  h=Integer.parseInt(g[c]);
	   graph[a][b]=h;
	   c++;
   }
 }
  %>
       <%hamCycle(graph);%>
       <div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
       <%  if(count1==1)
       {
    	   out.println("<h2>SOLUTION DOESNT EXIST</h2>");
       }
       else
       {
     out.println("<h3>Solution Exists: Following is one Hamiltonian Cycle</h3>");
     for (i = 0; i < k; i++)
         out.print(path[i]+1+",");
    out.println(path[0]+1);}
%>
</div>
</div>
</div>
</body>
</html>
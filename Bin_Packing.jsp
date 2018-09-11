<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <%@ page import="java.util.Scanner" %>
      <%! Scanner sc=new Scanner(System.in); %>
      <%!
      int nextFit(int weight[], int n, int c)
      {
        int res = 0, bin_rem = c;
        for (int i=0; i<n; i++)
        {
		   if (weight[i] > bin_rem)
	       {
		      res++; 
		      bin_rem = c - weight[i];
	       }
	       else
		      bin_rem -= weight[i];
        }
        return res;
     }
     %> 
	<%!int weight[]; %>
	<%!int i; %>
	<%!int c;%>
	<%!int n; %>
	<%
	System.out.println("Enter the number of items:");
	n=sc.nextInt();
	for(i=0;i<n;i++)
	{
	   System.out.println("Enter the weight of item "+i+1);
	   weight[i]=sc.nextInt();
	}
	System.out.println("Enter capacity of bins:");
	c=sc.nextInt();
    System.out.println("Number of bins required in Next Fit : "+nextFit(weight, n, c));
    %>  
</body>
</html>
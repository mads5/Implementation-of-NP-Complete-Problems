<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NP-COMPLETE PROBLEMS</title>
</head>
<body>
    <%@ page import="java.util.Scanner" %>
    <%! int V;  %>
    <%!  int path[];   %>
    <%! int graph[][]=new int[10][10];   %>
    <%! String input="";   %>
    <%!int maximum(int a1, int b1) { return (a1 > b1)? a1 : b1; }   %>
    <%! int i; %>  
    <%! Scanner sc=new Scanner(System.in); %> 
     <%!int knapSack(int Weigh, int weight[], int value[], int num)
     {
        
       if (num == 0 || Weigh == 0)
         return 0;
      
    
       if (weight[num-1] > Weigh)
        return knapSack(Weigh, weight, value, num-1);
      
  
       else return maximum( value[num-1] + knapSack(Weigh-weight[num-1], weight, value, num-1), knapSack(Weigh, weight, value, num-1)  );
      }
     %>
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
       if (pos == V)
     {
         if (graph[path[pos - 1]][path[0]] == 1)
             return true;
         else
             return false;
     }
      for (int v = 1; v < V; v++)
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
     path = new int[V];
     for (int i = 0; i < V; i++)
         path[i] = -1;
     path[0] = 0;
     if (hamCycleUtil(graph, path, 1) == false)
     {
         System.out.println("\nSolution does not exist");
         return 0;
     }

     printSolution(path);
     return 1;
 }
 %>
 <%!
  void printSolution(int path[])
 {
     System.out.println("Solution Exists: Following is one Hamiltonian Cycle");
     for (i = 0; i < V; i++)
         System.out.print(path[i]+1+"\t");
     System.out.println(path[0]+1);
 }
 %>
 <%
if(input.equals("knapsack"))
{
       int value[] = new int[]{60, 100, 120};
       int weight[] = new int[]{10, 20, 30};
       int  Weigh = 50;
       int num = value.length;
       System.out.println(knapSack(Weigh, weight, value, num)); 
}  
else if(input.equals("hamiltonian"))
{   
       System.out.println("Enter the number of vertices in graph:");
       V=sc.nextInt();
       System.out.println("Enter the graph details:");
       for(int i=0;i<V;i++)
       {
    	   System.out.print("Vertex ");
    	   System.out.println(i+1);
    	   for(int j=0;j<V;j++)
    	   {
    		   System.out.print("\t\tVertex ");
    		   System.out.println(j+1);
    		   graph[i][j]=sc.nextInt();
    	   }
       }
       hamCycle(graph);
}
else if(input.equals("isomorphic"))
{   
}
%>
</body>
</html>
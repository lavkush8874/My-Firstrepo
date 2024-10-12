
<%@ page import ="java.sql.*"%>
<%
   String name=request.getParameter("name1");
	
   String gmail=request.getParameter("name2");			 
    

 		String password=request.getParameter("name3");			 
    	

        out.println(name);
        out.println(gmail);
        out.println(password);
        
	
try{

     Class.forName("com.mysql.jdbc.Driver");
        Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/myform","root","siya@1234");

            PreparedStatement s=c.prepareStatement("insert into myform(Name,Gmail,pass) values(?,?,?)");
           
       
     s.setString(1,name);
     s.setString(2, gmail);
      s.setString(3,password);

     s.executeUpdate();
   }
   catch(Exception e1)
    {
        out.println(e1);
}
%>
             

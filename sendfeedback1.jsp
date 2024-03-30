<%@include file="DBConn.jsp" %>
<%@page import="java.util.Date" %>
<%
String feedback=request.getParameter("feedback");
int rating=Integer.parseInt(request.getParameter("rating"));
String user=(String)session.getAttribute("UserName");
Date d=new Date();
String d1=""+d;
PreparedStatement pst=con.prepareStatement("insert into feedback  values(?,?,?,?)");
pst.setString(1,user);pst.setString(2,feedback);pst.setInt(3,rating);
pst.setString(4,d1);
int i=pst.executeUpdate();
%>
<script>
alert("Thank you for your Feedback")
window.location="citizenhome.jsp"
</script>

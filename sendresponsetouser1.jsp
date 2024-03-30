<%@include file="DBConn.jsp" %>
<%@page import="java.util.Date" %>
<%
String res=request.getParameter("response");
int reqid=Integer.parseInt(request.getParameter("reqid"));
String empname=(String)session.getAttribute("UserName");
Date d=new Date();
String d1=""+d;
PreparedStatement pst=con.prepareStatement("update userqueries set response=?,respondedby=?,respondedon=?,status=? where reqid=?");
pst.setString(1,res);pst.setString(2,empname);pst.setString(3,d1);
pst.setInt(4,2);
pst.setInt(5,reqid);
int i=pst.executeUpdate();
%>
<script>
alert("Response send to user")
window.location="employeehome.jsp"
</script>
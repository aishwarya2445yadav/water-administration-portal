<%@include file="DBConn.jsp" %>
<%@page import="java.util.Date" %>
<%
String blevel=request.getParameter("blevel");
String clevel=request.getParameter("clevel");
String instrutions=request.getParameter("instrutions");
String empname=(String)session.getAttribute("UserName");
String zone=(String)session.getAttribute("ZONE");
Date d=new Date();
String d1=""+d;
PreparedStatement pst=con.prepareStatement("insert into waterdetails values(?,?,?,?,?,?,?)");
pst.setString(1,null);
pst.setString(2,blevel);
pst.setString(3,clevel);
pst.setString(4,instrutions);
pst.setString(5,empname);
pst.setString(6,zone);
pst.setString(7,d1);
int i=pst.executeUpdate();
%>
<script>
alert("Water details added")
window.location="employeehome.jsp"
</script>
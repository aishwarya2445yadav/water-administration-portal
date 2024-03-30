<%@include file="DBConn.jsp" %>
<%@page import="java.util.Date" %>
<%
String zone=request.getParameter("zone");
String area=request.getParameter("area");
String query=request.getParameter("query");
String user=(String)session.getAttribute("UserName");
Date d=new Date();
String d1=""+d;
PreparedStatement pst=con.prepareStatement("insert into userqueries(reqid,citizenname,zone,area,query,requeston,status) values(?,?,?,?,?,?,?)");
pst.setString(1,null);pst.setString(2,user);pst.setString(3,zone);
pst.setString(4,area);pst.setString(5,query);pst.setString(6,d1);
pst.setInt(7,0);
int i=pst.executeUpdate();
%>
<script>
alert("Request sent to Admin")
window.location="citizenhome.jsp"
</script>

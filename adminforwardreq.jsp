<%@include file="DBConn.jsp" %>
<%@page import="java.util.Date" %>
<%
int reqid=Integer.parseInt(request.getParameter("reqid"));
PreparedStatement pst=con.prepareStatement("update userqueries set status=1 where  reqid=?");
pst.setInt(1,reqid);
int i=pst.executeUpdate();
%>
<script>
alert("Request forwarded to Employee")
window.location="adminhome.jsp"
</script>
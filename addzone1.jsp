<%@include file="DBConn.jsp" %>
<%
   String zone=request.getParameter("zone");
   String areas=request.getParameter("areas");
   PreparedStatement pst=con.prepareStatement("insert into zones values(?,?,?)");
   pst.setString(1,null);
   pst.setString(2,zone);
   pst.setString(3,areas);
   int i=pst.executeUpdate();
%>
<script>
alert("Zone added")
window.location="adminhome.jsp"
</script>
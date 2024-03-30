<%@include file="DBConn.jsp" %>
<%
String starttime=request.getParameter("starttime");
String endtime=request.getParameter("endtime");
String empname=(String)session.getAttribute("UserName");
String zone=(String)session.getAttribute("ZONE");
String areas=request.getParameter("areas");
PreparedStatement pst=con.prepareStatement("insert into watertimings values(?,?,?,?,?,?)");
pst.setString(1,null);
pst.setString(2,empname);
pst.setString(3,zone);
pst.setString(4,starttime);
pst.setString(5,endtime);
pst.setString(6,areas);
int i=pst.executeUpdate();
%>
<script>
alert("Water details added")
window.location="employeehome.jsp"
</script>
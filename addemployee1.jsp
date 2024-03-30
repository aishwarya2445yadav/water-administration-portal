<%@include file="DBConn.jsp" %>
<%
   String user=request.getParameter("user");
   String pwd=request.getParameter("pwd");
   String emailid=request.getParameter("email");
   String mno=request.getParameter("mno");
   String zone=request.getParameter("zone");
   String address=request.getParameter("address");
   PreparedStatement pst=con.prepareStatement("insert into employee values(?,?,?,?,?,?)");
   pst.setString(1,user);
   pst.setString(2,pwd);
   pst.setString(3,emailid);
   pst.setString(4,mno);
   pst.setString(5,address);
   pst.setString(6,zone);
   int i=pst.executeUpdate();
%>
<script>
alert("Employee added")
window.location="adminhome.jsp"
</script>
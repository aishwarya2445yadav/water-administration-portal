<%@include file="DBConn.jsp" %>
<%
   String user=request.getParameter("user");
   String pwd=request.getParameter("pwd");
   String emailid=request.getParameter("email");
   String mno=request.getParameter("mno");
   String address=request.getParameter("address");
   PreparedStatement pst=con.prepareStatement("insert into citizen values(?,?,?,?,?)");
   pst.setString(1,user);
   pst.setString(2,pwd);
   pst.setString(3,emailid);
   pst.setString(4,mno);
   pst.setString(5,address);
  
   int i=pst.executeUpdate();
%>
<script>
alert("Registered Successfully,Please login to continue");
window.location="citizen.html"
</script>
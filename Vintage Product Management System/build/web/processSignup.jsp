<%@page import="dao.SignUpDAO"%>
<%@page import="pojo.SignUpInfo"%>
<%
String userName = request.getParameter("userName");
String password = request.getParameter("password");

if(SignUpDAO.isUserValid(new SignUpInfo(userName,password)))
{
	session.setAttribute("userName",userName);
	session.setMaxInactiveInterval(200); 
	response.sendRedirect("login.jsp"); 
}
else 
{
	response.sendRedirect("loginFailed.jsp"); 
}
%>
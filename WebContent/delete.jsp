<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "com.javaex.dao.GuestDao" %>
<%@ page import = "com.javaex.vo.GuestVo" %>
<%@ page import = "java.util.List" %>   
    
    
<% 
	int no = Integer.parseInt(request.getParameter("no"));
	String pw = request.getParameter("password");
	
	GuestDao gdao = new GuestDao();
	gdao.delete(no, pw);


	response.sendRedirect("guestList.jsp");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.GuestDao" %>
<%@ page import = "com.javaex.vo.GuestVo" %>
<%@ page import = "java.util.List" %>

<%

request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String password = request.getParameter("pass");
String content = request.getParameter("content");

GuestVo gvo = new GuestVo(name, password, content);
GuestDao dao = new GuestDao();
dao.insert(gvo);

response.sendRedirect("guestList.jsp");

%>
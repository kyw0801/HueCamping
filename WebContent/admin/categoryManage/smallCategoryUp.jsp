<%@page import="net.hue.dao.CategoryDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int lno = Integer.parseInt(request.getParameter("lno"));
	int sno = Integer.parseInt(request.getParameter("sno"));
	int sstep = Integer.parseInt(request.getParameter("sstep")); // 해당 대분류의 순서
	
 	CategoryDao cdao = CategoryDao.getInstance();	

 		
	int result = -1;
	
	if (sstep != 1) { // 수정하려는 행의 step이 맨 첫번째가 아닌 경우
		result = cdao.updateUpSStep(lno, sno, sstep);
	}

	response.sendRedirect("categoryManage.jsp");
%>
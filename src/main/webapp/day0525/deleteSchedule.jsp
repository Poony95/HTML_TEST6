<%@ page import="dao.ScheduleDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	ScheduleDAO dao = new ScheduleDAO();
	int re=dao.deleteSchedule(no);
	out.print(re);
%>
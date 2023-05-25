<%@page import="dao.ScheduleDAO"%>
<%@page import="vo.ScheduleVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String event_date = request.getParameter("event_date");
	String event_content = request.getParameter("event_content");
	ScheduleVO sv = new ScheduleVO(0,event_date,event_content);
	ScheduleDAO dao = new ScheduleDAO();
	int re= dao.insert(sv);
	out.print(re);
%>

s







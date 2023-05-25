<%@page import="com.google.gson.Gson"%>
<%@page import="vo.ScheduleVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ScheduleDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String event_date = request.getParameter("event_date");
	ScheduleDAO dao = new ScheduleDAO();
	ArrayList<ScheduleVO> list = dao.findByEventDate(event_date);
	Gson gson = new Gson();
	out.print(gson.toJson(list));
%>
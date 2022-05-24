<%@page import="config.SqlMapClientFactory"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mem_id = request.getParameter("mem_id");

	SqlMapClient smc = SqlMapClientFactory.getInstance();
	mem_id = (String)smc.queryForObject("member.checkMemId",mem_id);
	if(mem_id == null){
%>		
		{
			"code" : "ok"
		}	
<%		
	}else{
%>
			{
			"code" : "no"
			}
<%		
	}
%>
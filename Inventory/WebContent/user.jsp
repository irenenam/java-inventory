<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<p>Hello, <b><font color="blue"><%=request.getRemoteUser()%></font></b>
<input type="button" value="logout" onclick="javascript:location.href='logout.do'"></p>
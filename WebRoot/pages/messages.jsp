<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
	response.addHeader("Pragma","No-cache");
	response.addHeader("Cache-Control","no-cache");
	response.addDateHeader("Expires",1);

	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<title>��Ϣ��ʾ��</title>
		<base href="<%=basePath%>">
		<link type="text/css" rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<center>
		<table border="0" width="" height="20%" cellpadding="0" cellspacing="0"><tr><td background=""></td></tr></table>
    	<table border="10" width="90%" height="70%" background="images/allBack2.jpg" bordercolor="#4E6900" style="margin-top:1;margin-bottom:1">
	       	<tr>
    	    	<td align="center">
        			<c:set var="messages" value="${requestScope.message}"></c:set>
        			<c:if test="${empty messages}">
        				<li>����ʧ�ܣ��������Ա��ϵ��</li>
        				<a href="javascript:window.history.go(-1)">�����ء�</a>
	        		</c:if>
    	    		<c:if test="${!empty messages}">
        				<c:out value="${messages}" escapeXml="false"/>
        			</c:if>
	        	</td>
    	    </tr>
    	</table>
    	<table border="0" width="1003" height="128" cellpadding="0" cellspacing="0"><tr><td background=""></td></tr></table>
    	</center>
	</body>
</html>
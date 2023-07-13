<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보드2</title>
</head>
<body>
<h1>보드2입니다 ${name }</h1>

	<h2>fn태그 ${fn:length(list) }</h2>
	
	choose
	<c:choose>
		<c:when test="${fn:length(list) gt 0}">
			<table>
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>글쓴이</td>
		<td>날짜</td>
		<td>읽음</td>
	</tr>
	<c:forEach items="${list }" var="row">
	<tr>
		<td>${row.bno }</td>
		<td>${row.btitle }</td>
		<td>${row.bwrite }</td>
		<td>${row.bdate }</td>
		<td>${row.blike }</td>
	</tr>
	</c:forEach>
	</table>
		</c:when>
		<c:otherwise>
			출력할 데이터가 없습니다.
		</c:otherwise>
	</c:choose>
	
	
	
</body>
</html>
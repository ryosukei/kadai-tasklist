<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="./layout/app.jsp">
	<c:param name="content">
		<form method="POST" action="${pageContext.request.contextPath}/create">
			<c:import url="./partial/_form.jsp"></c:import>
			<button type="submit">タスク作成</button>
		</form>
	</c:param>
</c:import>
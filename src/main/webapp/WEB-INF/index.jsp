<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="./layout/app.jsp">
	<c:param name="content">
		<c:choose>
			<c:when test="${ tasks == null || tasks.size() == 0}">
				<p>タスクが一つもありません。まずはタスクを作ってみましょう。</p>
			</c:when>
			<c:otherwise>
				<c:forEach var="task" items="${tasks}">
					<li><a
						href="${pageContext.request.contextPath}/show?id=${task.id}">
							<c:out value="${task.id}" />
					</a> ：<c:out value="${task.content}"></c:out></li>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		<a href="${pageContext.request.contextPath}/new">タスクを作成する</a>
	</c:param>
</c:import>
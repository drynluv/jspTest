<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>memberList.jsp</title>
	<%@ include file="/include/bs5.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<h2 class="text-center mb-3">전 체 회 원 리 스 트</h2>
	<table class="table table-hover">
		<tr class="table-secondary text-center">
			<th>번호</th>
			<th>닉네임</th>
			<th>아이디</th>
			<th>성명</th>
			<th>생일</th>
			<th>성별</th>
			<th>이메일</th>
			<th>직업</th>
		</tr>
		<c:forEach var="vo" items="${vos}" varStatus="st">
			<tr class="text-center">
				<td>${curScrStartNo}</td>
				<td>${vo.nickName}</td>
				<c:if test="${vo.userInfor == '공개'}">
				<td>${vo.mid}</td>
				<td>${vo.name}</td>
				<td>${fn:substring(vo.birthday,0,10)}</td>
				<td>${vo.gender}</td>
				<td>${vo.email}</td>
				<td>${vo.job}</td>
				</c:if>
				<c:if test="${vo.userInfor != '공개'}">
					<td colspan="6" class="text-center">비 공 개</td>
				</c:if>
			</tr>
			<c:set var="curScrStartNo" value="${curScrStartNo - 1}"/>
		</c:forEach>
	</table>
</div>

<!-- 블록페이징 시작 -->
<div class="d-flex justify-content-center mt-4">
<ul class="pagination">

	<!-- 처음 -->
	<c:if test="${pag > 1}">
	<li class="page-item">
		<a class="page-link" href="MemberList.mem?pag=1">«</a>
	</li>
	</c:if>

	<!-- 이전 블록 -->
	<c:if test="${curBlock > 0}">
	<li class="page-item">
		<a class="page-link" href="MemberList.mem?pag=${(curBlock-1)*blockSize+1}">‹</a>
	</li>
	</c:if>

	<!-- 페이지 번호 -->
	<c:forEach var="i" begin="${(curBlock * blockSize)+1}" end="${(curBlock * blockSize)+blockSize}">
	<c:if test="${i <= totPage}">
	
	<c:choose>
	
	<c:when test="${i == pag}">
	<li class="page-item active">
		<a class="page-link">${i}</a>
	</li>
	</c:when>
	
	<c:otherwise>
	<li class="page-item">
		<a class="page-link" href="MemberList.mem?pag=${i}">${i}</a>
	</li>
	</c:otherwise>
	
	</c:choose>
	
	</c:if>
	</c:forEach>

	<!-- 다음 블록 -->
	<c:if test="${curBlock < lastBlock}">
	<li class="page-item">
		<a class="page-link" href="MemberList.mem?pag=${(curBlock+1)*blockSize+1}">›</a>
	</li>
	</c:if>

	<!-- 마지막 -->
	<c:if test="${pag < totPage}">
	<li class="page-item">
		<a class="page-link" href="MemberList.mem?pag=${totPage}">»</a>
	</li>
	</c:if>

</ul>
</div>
<!-- 블록페이징 끝 -->

<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>
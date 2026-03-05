<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>hoewonSearch.jsp</title>
	<%@ include file="/include/bs5.jsp" %>
	<script>
	'use strict';
	
	function nameSearch(flag) {
		let str = '<div class="input-group">';
		str += '<div class="input-group-text">검색할 성명</div>';
		str += '<input type="text" name="name" id="name" placeholder="검색할 성명을 입력하세요." class="form-control"/>';
		str += '<input type="button" value="검색" onclick="searchName(\''+flag+'\')" class="btn btn-info" />';
		str += '</div>';
		demo.innerHTML = str;
	}
	
	function searchName(flag) {
		let name = document.getElementById("name").value;
		if(flag == 'u') location.href = "HoewonUpdate.db?name="+name;
		else location.href = "HoewonDelete.db?name="+name;
	}
	</script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<h2>개별 회원 정보 검색 결과</h2>
	<hr/>
	<div>성명 : ${vo.name}</div>
	<div>나이 : ${vo.age}</div>
	<div>성별 : ${vo.gender}</div>
	<div>주소 : ${vo.address}</div>
	<hr/>
	<div><a href="" class="btn btn-success">돌아가기</a></div>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>
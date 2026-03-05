<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>boardUpdate.jsp</title>
	<%@ include file="/include/bs5.jsp" %>
	<script>
	'use strict';
	
	function fCheck() {
		let name = document.getElementById("name");
		let age = document.getElementById("age");
		//let gender = document.myform.gender.value;
		//let address = document.getElementById("address").value;
		
		if(name.value.trim() == "") {
			alert("성명을 입력하세요.");
			name.focue();
			return false;
		}
		else if(age.value.trim() == "") {
			alert("나이를 입력하세요.");
			age.focue();
			return false;
		}
		else {
			document.myform.submit();
		}
	}
	</script>
	<style>
		th {
			text-align: center;
			background-color: gray; !important;
		}
	</style>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<h2 class="text-center mb-3">회 원 등 록</h2>
  <form name="myform" method="post" action="HoewonInputOk.db">
	  <table class="table table-bordered">
	    <tr>
	      <th>성명</th>
	      <td><input type="text" name="name" id="name" placeholder="성명을 입력하세요" class="form-control" autofocus required/></td>
	    </tr>
	    <tr>
	      <th>나이</th>
	      <td><input type="text" name="age" id="age" value="20" placeholder="나이를 입력하세요" class="form-control" required/></td>
	    </tr>
	    <tr>
	      <th>성별</th>
	      <td>
	      	<input type="radio" name="gender" value="남자">남자 &nbsp;
	      	<input type="radio" name="gender" value="여자" checked>여자
	      </td>
	    </tr>
	    <tr>
	      <th>주소</th>
	      <td><input type="text" name="address" id="address" placeholder="주소를 입력하세요" class="form-control" /></td>
	    </tr>
	    <tr>
	      <td colspan="2" class="text-center">
	        <input type="submit" value="가입하기" onclick="fCheck()" class="btn btn-success"/>
	        <input type="reset" value="다시입력" class="btn btn-warning"/>
					<a href="DbTest.db" class="btn btn-info">돌아가기</a></div>
	      </td>
	    </tr>
	  </table>
  </form>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>
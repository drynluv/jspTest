<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ajaxForm.jsp</title>
	<%@ include file="/include/bs5.jsp" %>
	<script>
		'use strict';
		
		function idCheck1() {
			let mid = document.getElementById("mid").value;
			
			if(mid.trim() == "") {
				alert("아이디를 입력하세요");
				document.getElementById("mid").focus();
				return false;
			}
			
			location.href = "${ctp}/AjaxTest1?mid="+mid;	// QueryString방식
		}
		
		function ajaxCheck2() {
			let mid = document.getElementById("mid").value;
			
			if(mid.trim() == "") {
				alert("아이디를 입력하세요");
				document.getElementById("mid").focus();
				return false;
			}
			
			$.ajax({
				url  : "${ctp}/AjaxTest2",
				type : "post",
				data : {mid : mid},
				success: function(res) {
					//alert(res);
					//console.log(res);
					$("#demo").html(res);
				},
				error  : () => alert("전송오류!") 
			});
		}
		
		function ajaxCheck3() {
			let mid = document.getElementById("mid").value;
			
			if(mid.trim() == "") {
				alert("아이디를 입력하세요");
				document.getElementById("mid").focus();
				return false;
			}
			
			$.ajax({
				url  : "${ctp}/AjaxTest3",
				type : "post",
				data : {mid : mid},
				success: function(res) {
					//alert(res);
					console.log(res);
					let js = JSON.parse(res);
					console.log(js);
					$("#demo").html(res);
					
					$("#imsiNickName").html(js.nickName);
					$("#imsiName").html(js.name);
					$("#imsiGender").html(js.gender);
					$("#imsiEmail").html(js.email);
					$("#imsiLevel").html(js.level);
				},
				error  : () => alert("전송오류!") 
			});
		}
		
		function ajaxCheck4() {
			$.ajax({
				url  : "${ctp}/AjaxTest4",
				type : "post",
				success: function(res) {
					$("#cnt").html(res);
				},
				error  : () => alert("전송오류!") 
			});
		}
		
		function ajaxCheck5() {
			$.ajax({
				url  : "${ctp}/AjaxTest5",
				type : "post",
				success: function(res) {
					$("#male").html(res);
					$("#female").html(res);
				},
				error  : () => alert("전송오류!") 
			});
		}
		
		function ajaxCheck6() {
			$.ajax({
				url  : "${ctp}/AjaxTest6",
				type : "post",
				success: function(res) {
					$("#male").html(res);
					$("#female").html(res);
				},
				error  : () => alert("전송오류!") 
			});
		}
	</script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<h2>ajaxForm연습하기</h2>
	<hr/>
	<div class="text-center">
		<form name="myform">
			<div class="input-group mb-3">
				<div class="input-group-text bg-secondary-subtle">아이디</div>
				<input type="text" name="mid" id="mid"	value="${sMid}" class="form-control"/>
			</div>
			<div class="mb-3">
				<input type="button" value="동기식" onclick="idCheck1()" class="btn btn-success" />
			</div>
			<div class="mb-3">
				<input type="button" value="비동기식1" onclick="ajaxCheck2()" class="btn btn-outline-success" />
				<input type="button" value="비동기식2" onclick="ajaxCheck3()" class="btn btn-outline-primary" />
				<input type="button" value="비동기식3" onclick="ajaxCheck4()" class="btn btn-outline-warning" />
				<input type="button" value="비동기식4" onclick="ajaxCheck5()" class="btn btn-outline-info" />
			</div>
			<div class="mb-3">
				<input type="radio" name="gender" value="남자" checked/>남자
				<input type="radio" name="gender" value="여자" />여자 &nbsp;
				<input type="button" value="인원수" onclick="ajaxCheck6()" class="btn btn-outline-info" />
			</div>
		</form>
		<hr/>
		<div id="demo"></div>
		<hr/>
		<div>
			닉네임 : <span id="imsiNickName"></span><br/>
			성명 : <span id="imsiName"></span><br/>
			성별 : <span id="imsiGender"></span><br/>
			이메일 : <span id="imsiEmail"></span><br/>
			등급 : <span id="imsiLevel"></span><br/>
		</div>
		<hr/>
		<div>
			전체 회원 수 : <span id="cnt"></span>
		</div>
	<hr/>
	<div>
		여자 회원 수 : <span id="female"></span>
	</div>
	</div>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>
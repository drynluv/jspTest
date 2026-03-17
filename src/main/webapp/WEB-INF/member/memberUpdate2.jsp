<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% 
	String today = java.time.LocalDate.now().toString(); 
	pageContext.setAttribute("today", today);
%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>memberUpdate.jsp</title>
  <%@ include file="/include/bs5.jsp" %>
  <script src="//t1.kakaocdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <link rel="stylesheet" type="text/css" href="${ctp}/css/orangeLink.css"/>
  <script src="${ctp}/js/woo.js"></script>
  <script>
	  'use strict';
		  let idChecked = false;
	    let nickChecked = false;
	  
		// 정규식을 사용하세요....
		// 안적힌건 전부 공백
		function fCheck() {
			
      /* if (!nickChecked) {
         alert("닉네임 중복체크를 해주세요.");
         document.getElementById("nickName").focus();
         return false;
      } */
			
		  const regNickname = /^[0-9가-힣_-]{2,20}$/g; // 닉네임은 2~20자의 한글/숫자/밑줄 만 사용
		 	const regName = /^[a-zA-Z가-힣_]{2,20}$/g; // 성명은 2~20자의 한글/영문
		  const regEmail = /^[a-zA-Z0-9._%+\-]+$/; // 이메일은 email형식에 맞도록 처리...
		  const regUrl = /^(https?:\/\/)?[a-z0-9]*\.([a-z0-9]{2,10})*\/?/i; // 홈페이지입력시는 url형식에 맞도록 처리... (홈페이지는 필수입력이 아님.. 대신 url형식에 맞도록 처리)
		  const regPhone = /^\d{3,4}$/; // 전화번호입력시는 전화번호형식에 맞도록처리
		  
		  //let mid = document.getElementById("mid");
		  let mid = document.getElementById("mid").value.trim();
		  let nickname = document.getElementById("nickName").value.trim();
		  let name = document.getElementById("name").value.trim();
		  let content = document.getElementById("content").value.trim();
		  
		  //let email = document.getElementById("email1").value.trim();
		  let email1 = document.myform.email1.value.trim();
	    let email2 = document.myform.email2.value;
	    let email = email1 + "@" + email2;
		  
		  let tel1 = document.getElementById("tel1").value;
		  let tel2 = document.getElementById("tel2").value.trim();
		  let tel3 = document.getElementById("tel3").value.trim();
		  let tel = tel1 + "-" + tel2 + "-" + tel3;
		  
	  	let postcode = document.myform.postcode.value + " ";
    	let roadAddress = document.myform.roadAddress.value + " ";
    	let detailAddress = document.myform.detailAddress.value + " ";
    	let extraAddress = document.myform.extraAddress.value + " ";
    	let address = postcode + "/" + roadAddress + "/" + detailAddress + "/" + extraAddress;
		  
    	let homePage = document.myform.homePage.value.trim();
    	
		  if(!regNickname.test(nickname)) {
			  alert("닉네임을 확인하세요.");
		  	//mid.focus();
		  	document.getElementById("nickName").focus();
		  }
		  else if(!regName.test(name)) {
			  alert("성명을 확인하세요.");
		  	//mid.focus();
		  	document.getElementById("name").focus();
		  }
		  else if(!regEmail.test(email1)) {
			  alert("이메일을 확인하세요.");
		  	//mid.focus();
		  	document.getElementById("email1").focus();
		  }
		  else if(!regPhone.test(tel2)) {
			  alert("전화번호를 확인하세요.");
		  	//mid.focus();
		  	document.getElementById("tel2").focus();
		  }
		  else if(!regPhone.test(tel3)) {
			  alert("전화번호를 확인하세요.");
		  	//mid.focus();
		  	document.getElementById("tel3").focus();
		  }
		  else {
		  	//alert("꺅 가입성공입니다!!");
		  	
		  	// 앞에서 모든 자료를 정상적으로 유효성 검사를 마친 후 빠진 필드의 내용을 채워서 서버로 전송처리한다.
		  	document.myform.tel.value = tel;
		  	document.myform.address.value = address;
		  	document.myform.email.value = email;
		  	
		  	document.myform.submit();
		  }
		}
		
		
		// 닉네임 중복체크
		function nickCheck() {
			let nickName = document.getElementById("nickName");
			if(nickName.value.trim() == "") {
				alert("닉네임을 입력하세요");
				nickName.focus();
				return false;
			}
			
			$.ajax({
				url  : 'NickNameSearch.mem',
				type : 'post',
				data : {nickName : nickName.value},
				success: (res) => {
					if(res != "0") {
						alert("닉네임이 중복되었습니다. 다른 닉네임으로 다시 검색해 주세요.");
						nickName.focus();
					}
					else {
						alert("사용 가능한 닉네임입니다.");
						nickChecked = true;
					}
				},
				error: () => alert("전송오류")
			});
		}
	</script>
	<style>
	  th {
	    text-align: center;
	    text-valign: middle !important;
	    background-color: #ddd !important;
	  }
	</style>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
  <h2 class="text-center mb-3">회 원 정 보 수 정</h2>
  <form name="myform" method="post" action="MemberUpdateOk.mem">
  	<table class="table table-bordered">
  		<tr>
  			<th>아이디</th>
  			<td><input type="text" name="mid" id="mid" class="form-control" /></td>
  		</tr>
  		<tr>
  			<th>닉네임</th>
  			<td><input type="text" name="pwd" id="pwd" class="form-control" /></td>
  		</tr>
  		<tr>
  			<th>성명</th>
  			<td><input type="text" name="name" id="name" class="form-control" /></td>
  		</tr>
  		<tr>
  			<th>성명</th>
  			<td><input type="text" name="name" id="name" class="form-control" /></td>
  		</tr>
  		<tr>
  			<th>성명</th>
  			<td><input type="text" name="name" id="name" class="form-control" /></td>
  		</tr>
  	</table>
  	
  </form>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>
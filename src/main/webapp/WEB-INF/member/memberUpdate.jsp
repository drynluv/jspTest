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
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
  <h2 class="text-center mb-3">회 원 가 입</h2>
  <form name="myform" method="post" action="MemberUpdateOk.mem">
  	<div class="input-group mb-2">
      <div class="input-group-text bg-secondary-subtle border-secondary-subtle"><label for="mid">아이디</label></div>
      <input type="text" class="form-control" name="mid" id="mid" value="${vo.mid}" readonly />
    </div>
    <div class="input-group mb-2">
      <div class="input-group-text bg-secondary-subtle border-secondary-subtle"><label for="nickName">닉네임</label></div>
      <input type="text" class="form-control" id="nickName" name="nickName" value="${vo.nickName}" required />
      <!-- <input type="button" id="nickNameBtn" value="닉네임 중복체크" class="btn btn-secondary btn-sm" onclick="nickCheck()"/> -->
    </div>
    <div class="input-group mb-2">
      <div class="input-group-text bg-secondary-subtle border-secondary-subtle"><label for="name">성명</label></div>
      <input type="text" class="form-control" id="name" name="name" value="${vo.name}" required />
    </div>
    <div class="input-group mb-2">
      <div class="input-group-text bg-secondary-subtle border-secondary-subtle"><label for="email1">Email address:</label></div>
      <input type="text" class="form-control" id="email1" name="email1" value="${fn:split(vo.email, '@')[0]}" required />
      <div class="input-group-text bg-secondary-subtle">@</div>
      <select name="email2" class="form-select">
        <option value="naver.com" ${fn:split(vo.email, '@')[1]=='naver.com' ? 'selected' : ''}>naver.com</option>
        <option value="hanmail.net" ${fn:split(vo.email, '@')[1]=='hanmail.net' ? 'selected' : ''}>hanmail.net</option>
        <option value="hotmail.com" ${fn:split(vo.email, '@')[1]=='hotmail.com' ? 'selected' : ''}>hotmail.com</option>
        <option value="gmail.com" ${fn:split(vo.email, '@')[1]=='gmail.com' ? 'selected' : ''}>gmail.com</option>
        <option value="nate.com" ${fn:split(vo.email, '@')[1]=='nate.com' ? 'selected' : ''}>nate.com</option>
        <option value="yahoo.com" ${fn:split(vo.email, '@')[1]=='yahoo.com' ? 'selected' : ''}>yahoo.com</option>
      </select>
    </div>
    <div class="input-group mb-2">
      <label class="input-group-text bg-secondary-subtle border-secondary-subtle">성 별</label>
      <div class="border form-control">
      <label class="form-check-label ms-3">
        <input type="radio" name="gender" class="form-check-input me-2" value="남자" ${vo.gender=='남자' ? 'checked' : ''}>남자
      </label>
      <label class="form-check-label">
        <input type="radio" name="gender" class="form-check-input me-2" value="여자" ${vo.gender=='여자' ? 'checked' : ''}>여자
      </label>
      </div>
    </div>
    <div class="input-group mb-2 border-secondary-subtle">
      <div class="input-group-text bg-secondary-subtle border-secondary-subtle"><label for="birthday">생일</label></div>
      <input type="date" name="birthday" value="${fn:substring(vo.birthday,0,10)}" class="form-control"/>
    </div>
    <div class="input-group mb-2 border-secondary-subtle">
      <div class="input-group-text bg-secondary-subtle border-secondary-subtle">전화번호</div>
      <select name="tel1" id="tel1" class="form-select">
        <option value="010" ${fn:split(vo.tel, '-')[0]=='010' ? 'selected' : ''}>010</option>
        <option value="02" ${fn:split(vo.tel, '-')[0]=='02' ? 'selected' : ''}>서울</option>
        <option value="031" ${fn:split(vo.tel, '-')[0]=='031' ? 'selected' : ''}>경기</option>
        <option value="032" ${fn:split(vo.tel, '-')[0]=='032' ? 'selected' : ''}>인천</option>
        <option value="041" ${fn:split(vo.tel, '-')[0]=='041' ? 'selected' : ''}>충남</option>
        <option value="042" ${fn:split(vo.tel, '-')[0]=='042' ? 'selected' : ''}>대전</option>
        <option value="043" ${fn:split(vo.tel, '-')[0]=='043' ? 'selected' : ''}>충북</option>
        <option value="051" ${fn:split(vo.tel, '-')[0]=='051' ? 'selected' : ''}>부산</option>
        <option value="052" ${fn:split(vo.tel, '-')[0]=='052' ? 'selected' : ''}>울산</option>
        <option value="061" ${fn:split(vo.tel, '-')[0]=='061' ? 'selected' : ''}>전북</option>
        <option value="062" ${fn:split(vo.tel, '-')[0]=='062' ? 'selected' : ''}>광주</option>
      </select>
      <div class="input-group-text">-</div>
      <input type="text" id="tel2" name="tel2" value="${fn:trim(fn:split(vo.tel, '-')[1])}" size=4 maxlength=4 class="form-control"/>
      <div class="input-group-text">-</div>
      <input type="text" id="tel3" name="tel3" value="${fn:trim(fn:split(vo.tel, '-')[2])}" size=4 maxlength=4 class="form-control"/>
      </div>
    <div class="mb-2">
			<div class="input-group mb-1">
				<input type="text" name="postcode" id="sample6_postcode" value="${postcode}" onclick="sample6_execDaumPostcode()" placeholder="우편번호를 입력하세요" class="form-control" readonly>
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="btn btn-info">
			</div>	
			<div class="input-group mb-1">
				<input type="text" name="roadAddress" id="sample6_address" value="${roadAddress}" onclick="sample6_execDaumPostcode()" placeholder="주소를 입력하세요" class="form-control" readonly>
			</div>	
			<div class="input-group mb-1">
				<input type="text" name="detailAddress" id="sample6_detailAddress" value="${detailAddress}" placeholder="상세주소를 입력하세요" class="form-control">
				<input type="text" name="extraAddress" id="sample6_extraAddress" value="${extraAddress}" placeholder="참조주소를 입력하세요" class="form-control">
			</div>
		</div>
    <div class="input-group mb-2">
      <div class="input-group-text bg-secondary-subtle border-secondary-subtle"><label for="homepage">Homepage address:</label></div>
      <input type="text" class="form-control" name="homePage" value="https://" id="homePage"/>
    </div>
    <div class="input-group mb-2">
      <div class="input-group-text bg-secondary-subtle border-secondary-subtle"><label for="name">직업</label></div>
      <select class="form-select" id="job" name="job">
        <option ${vo.job==''? 'selected' : ''}>학생</option>
        <option ${vo.job==''? 'selected' : ''}>회사원</option>
        <option ${vo.job==''? 'selected' : ''}>공무원</option>
        <option ${vo.job==''? 'selected' : ''}>군인</option>
        <option ${vo.job==''? 'selected' : ''}>의사</option>
        <option ${vo.job==''? 'selected' : ''}>법조인</option>
        <option ${vo.job==''? 'selected' : ''}>세무인</option>
        <option ${vo.job==''? 'selected' : ''}>자영업</option>
        <option ${vo.job==''? 'selected' : ''}>기타</option>
      </select>
    </div>
    <div class="input-group mb-2">
      <label class="input-group-text bg-secondary-subtle border-secondary-subtle">취미</label>
      <div class="border form-control">
      	<!-- 
        <input type="checkbox" class="form-check-input ms-2 me-1" value="등산" name="hobby"/>등산
        <input type="checkbox" class="form-check-input ms-2 me-1" value="낚시" name="hobby"/>낚시
        <input type="checkbox" class="form-check-input ms-2 me-1" value="수영" name="hobby"/>수영
        <input type="checkbox" class="form-check-input ms-2 me-1" value="독서" name="hobby"/>독서
        <input type="checkbox" class="form-check-input ms-2 me-1" value="영화감상" name="hobby"/>영화감상
        <input type="checkbox" class="form-check-input ms-2 me-1" value="바둑" name="hobby"/>바둑
        <input type="checkbox" class="form-check-input ms-2 me-1" value="축구" name="hobby"/>축구
        <input type="checkbox" class="form-check-input ms-2 me-1" value="기타" name="hobby" checked/>기타
       	-->
       	<c:set var="varHobbys" value="${fn:split('등산/낚시/수영/독서/영화감상/바둑/축구/기타','/')}"/>
       	<c:forEach var="tempHobby" items="${varHobbys}" varStatus="st">
 		       <input type="checkbox" name="hobby" value="${tempHobby}" <c:if test="${fn:contains(vo.hobby,tempHobby)}">checked</c:if> class="form-check-input ms-2 me-1"/> ${tempHobby}&nbsp;
       	</c:forEach>
      </div>
    </div>
    <div class="input-group mb-2">
      <label for="content" class="input-group-text bg-secondary-subtle border-secondary-subtle">자기소개</label>
      <textarea rows="5" class="form-control" id="content" name="content" placeholder="자기소개를 입력하세요.">${vo.content}</textarea>
    </div>
    <div class="input-group mb-2">
      <label class="input-group-text bg-secondary-subtle border-secondary-subtle">정보공개</label>
      <div class="border form-control">
        <label class="form-check-label ms-3">
          <input type="radio" class="form-check-input me-2" name="userInfor" value="공개" ${vo.userInfor=='공개' ? 'checked' : ''}/>공개
        </label>
        <label class="form-check-label">
          <input type="radio" class="form-check-input me-2" name="userInfor" value="비공개" ${vo.userInfor=='비공개' ? 'checked' : ''}/>비공개
        </label>
    	</div>
    </div>
    <div class="input-group mb-1">
      <div class="input-group-text bg-secondary-subtle border-secondary-subtle">회원 사진(파일용량:2MByte이내)</div>
      <input type="file" name="fName" id="file" onchange="imgCheck(this)" class="bg-secondary-subtle form-control"/>
    </div>
    <div><img src="${ctp}/images/member/${vo.photo}" width="100px"/></div>
    <div class="text-end m-0 p-0"><img id="photoDemo" width="100px"/></div>
    <div class="text-center">
	    <button type="button" class="btn btn-success" onclick="fCheck()">회원정보수정</button> &nbsp;
	    <button type="reset" class="btn btn-warning">다시작성</button> &nbsp;
	    <button type="button" class="btn btn-info" onclick="location.href='MemberMain.mem';">돌아가기</button>
    </div>
    <input type="hidden" name="tel" />
    <input type="hidden" name="address" />
    <input type="hidden" name="email" />
  </form>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>
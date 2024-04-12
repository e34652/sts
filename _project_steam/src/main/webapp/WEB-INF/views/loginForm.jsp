<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class=" responsive" lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<meta name="viewport" content="width=device-width,initial-scale=1">
		<meta name="theme-color" content="#171a21">
		<title>로그인</title>
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">

<link href="https://community.cloudflare.steamstatic.com/public/shared/css/motiva_sans.css?v=GfSjbGKcNYaQ&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" >
<link href="https://community.cloudflare.steamstatic.com/public/shared/css/buttons.css?v=tuNiaSwXwcYT&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" >
<link href="https://community.cloudflare.steamstatic.com/public/shared/css/shared_global.css?v=Zj8Lt-uyXH8R&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" >
<link href="https://community.cloudflare.steamstatic.com/public/css/globalv2.css?v=pwVcIAtHNXwg&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" >
<link href="https://community.cloudflare.steamstatic.com/public/shared/css/login.css?v=0H1th98etnSV&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" >
<link href="https://community.cloudflare.steamstatic.com/public/css/skin_1/home.css?v=-6qQi3rZclGf&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" >
<link href="https://community.cloudflare.steamstatic.com/public/shared/css/shared_responsive.css?v=KrKRjQbCfNh0&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" >
<link href="https://community.cloudflare.steamstatic.com/public/css/skin_1/header.css?v=vh4BMeDcNiCU&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" >
<link href="css/login.css" rel="stylesheet" type="text/css">

<script type="text/javascript">VALVE_PUBLIC_PATH = "https:\/\/community.cloudflare.steamstatic.com\/public\/";</script><script type="text/javascript" src="https://community.cloudflare.steamstatic.com/public/javascript/scriptaculous/_combined.js?v=OeNIgrpEF8tL&amp;l=koreana&amp;_cdn=cloudflare&amp;load=effects,controls,slider,dragdrop" ></script>
<script type="text/javascript" src="https://community.cloudflare.steamstatic.com/public/javascript/global.js?v=EToM5vVWVuDV&amp;l=koreana&amp;_cdn=cloudflare" ></script>
<script type="text/javascript" src="https://community.cloudflare.steamstatic.com/public/javascript/jquery-1.11.1.min.js?v=.isFTSRckeNhC&amp;_cdn=cloudflare" ></script>
<script type="text/javascript" src="https://community.cloudflare.steamstatic.com/public/shared/javascript/tooltip.js?v=.zYHOpI1L3Rt0&amp;_cdn=cloudflare" ></script>
<script type="text/javascript" src="https://community.cloudflare.steamstatic.com/public/shared/javascript/shared_global.js?v=WVkjW4cQ29y0&amp;l=koreana&amp;_cdn=cloudflare" ></script>
<script type="text/javascript" src="js/login.js"></script>
	</head>
<body class="login global responsive_page ">



	<div
	role="banner"
	id="global_header"
	data-panel='{"flow-children":"row"}'
  >
	<div class="content">
	  <div class="logo" style="margin-top: -20px; margin-left: 30px;";>
		<span id="logo_holder" >
		  <a
			href="/"
			aria-label="Steam 홈페이지 링크"
		  >
		  <img
                    src="https://store.cloudflare.steamstatic.com/public/shared/images/header/logo_steam.svg?t=962016"
                    width="146"
                    height="86"
                    alt="Steam 홈페이지 링크"
                  />
		  </a>
		</span>
	  </div>

	  <div
          role="navigation"
          class="supernav_container"
          aria-label="공통 메뉴"
        >
          <a
            class="menuitem supernav supernav_active"
            href="/"
            data-tooltip-type="selector"
            data-tooltip-content=".submenu_store"
          >
            상점
          </a>
          <div
            class="submenu_store"
            style="display: none"
            data-submenuid="store"
          >
            <a
              class="submenuitem"
              href="/"
              >상점 홈</a
            >

            <a
              class="submenuitem"
              href="/wishlist"
              >찜 목록</a
            >

            <a
              class="submenuitem"
              href="/news"
              >소식</a
            >
          </div>

          <a
            class="menuitem supernav"
            style="display: block"
            href="/community"
            data-tooltip-type="selector"
            data-tooltip-content=".submenu_community"
          >
            커뮤니티
          </a>
          <div
            class="submenu_community"
            style="display: none"
            data-submenuid="/community"
          >
            <a class="submenuitem" href="/noticeForum"
              >공지사항</a
            >
            <a
              class="submenuitem"
              href="generalForum"
              >자유 게시판</a
            >
          </div>

          <a
            class="menuitem supernav"
            style="display: block"
            href="/myPage"
            data-tooltip-type="selector"
            data-tooltip-content=".submenu_mypage"
          >
            마이페이지
          </a>
          <div
            class="submenu_mypage"
            style="display: none"
            data-submenuid="mypage"
          >
            <a
              class="submenuitem"
              href="/myGames"
              >내 게임</a
            >
            <a class="submenuitem" href="/myOrders"
              >주문 조회</a
            >
            <a class="submenuitem" href="/myInfo"
              >계정 정보</a
            >
          </div>
        </div>

        <!-- 마우스를 가져다 대면 툴팁이 펼쳐짐 -->
        <script type="text/javascript">
          jQuery(function ($) {
            $("#global_header .supernav").v_tooltip({
              // 툴팁이 표시될 위치 지정(nav의 아래쪽)
              location: "bottom",
              // 툴팁이 숨겨질 때 파괴 여부
              destroyWhenDone: false,
              // 툴팁에 적용될 css
              tooltipClass: "supernav_content",
              // 툴팁의 수평 수직 오프셋
              offsetY: -6,
              offsetX: 1,
              // 툴팁과 특정 요소와의 상대적인 위치(현재 global_header .supernav)
              horizontalSnap: 4,
              // 툴팁의 부모 요소 지정(어느 요소 안에 위치할지)
              tooltipParent: "#global_header .supernav_container",
              // 화면 크기에 따른 툴팁 위치 자동 조정 여부
              correctForScreenSize: false,
            });
          });
        </script>

        <div id="global_actions">
          <div role="navigation" id="global_action_menu" aria-label="계정 메뉴">

            <h3><a
              class="global_action_link"
              href="/loginForm"
              >로그인</a
            >
            &nbsp;|&nbsp;
            <a
			class="global_action_link"
			href="/signUpForm"
              >회원가입</a
            ></h3>
          </div>
        </div>
      </div>
         <!-- 글로벌 헤더 끝 -->
      
    </div>
 
 <!-- LOGIN MODULE -->
 <div class="login"  style:"margin-top: 100px;">
	<div class="wrap"  style:"margin-top: 100px;">

		<!-- LOGIN FORM -->
		<div class="user">
			<!-- ACTIONS
			<div class="actions">
				<a class="help" href="#signup-tab-content">회원 가입</a><a class="faq" href="#login-tab-content">로그인</a>
			</div>
			-->
			<!-- LOGO -->
			<div class="logo1">
				<a href=""><img src="http://res.cloudinary.com/dpcloudinary/image/upload/v1506186248/logo.png" alt=""></a>
			</div>
			        <div id="toggle-wrap">
                        <div id="toggle-terms">
                            <div id="cross">
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                    </div>
			<div class="recovery">	
				
						<h2>비밀번호 초기화</h2>
						<p>회원가입시 등록한 <strong>아이디</strong>와 <strong>이메일</strong>을 입력한 후<strong> 찾기</strong> 버튼을 눌러주세요</p>
						<p>본인 확인 후 비밀번호 초기화 및 재설정이 진행됩니다</p>
						<form class="recovery-form" action="" method="post">
							<input type="text" class="input" name="recoveryEmail" id="user_recover" placeholder="Email">
							<input type="submit" class="button" value="이메일 발송">
						</form>
						<p class="mssg">이메일이 발송되었습니다</p>
					</div>
							

			<!-- FORM -->
			<div class="form-wrap" >
				<!-- TABS -->
			  <div class="tabs">
					<h3 class="login-tab"><a class="log-in active" href="#login-tab-content"><span>로그인</span></a></h3>
				<h3 class="signup-tab"><a class="sign-up" href="#signup-tab-content"><span>회원가입</span></a></h3>
			  </div>
				<!-- TABS CONTENT -->
			  <div class="tabs-content">
					<!-- TABS CONTENT LOGIN -->
				<div id="login-tab-content" class="active">
				  <form class="login-form" action="/login" method="post" onsubmit="return validateLoginForm()">
					<input type="text" class="input" id="loginEmail" name="loginEmail" autocomplete="off" placeholder="Email">
					<input type="password" class="input" id="loginPw" name="loginPw" autocomplete="off" placeholder="Password">
					<div class="help-action" style="display: flex; justify-content: space-between;">
					
					<div><input type="checkbox" class="checkbox" name="rememberId" id="remember_me">
					<label for="remember_me">아이디 저장</label></div>
					
					<div style="display: flex;"><p><i class="fa fa-arrow-left" aria-hidden="true"></i><a class="forgotId" href="#" >아이디 찾기</a></p> &nbsp;|&nbsp;
					<p><i class="fa fa-arrow-left" aria-hidden=""></i><a class="forgot" href="#" >비밀번호 찾기</a></p></div>
				  </div>
				<div id="loginWarningMessage" style=" text-align: center; color: red;"></div>
					<input type="submit" class="button" value="로그인">
				  </form>
				 
				</div>
					<!-- TABS CONTENT SIGNUP -->
				<div id="signup-tab-content">
				  <form class="signup-form" action="/signUp" method="post" onsubmit="return validateSignUpForm()">
					<input type="email" class="input" id="signUpEmail" name="signUpEmail" autocomplete="off" placeholder="Email">					
					<input type="password" class="input" id="signUpPw" name="signUpPw" autocomplete="off" placeholder="Password">
					<input type="text" class="input" id="signUpNickname" name="signUpNickname" autocomplete="off" placeholder="Nickname">
					<div class="select"><select id="signUpNationality" name="signUpNationality" >
								<option selected value=none>Nationality</option>
								<option value="korean">Korean</option>
								<option value="chinese">Chinese</option>
								<option value="japanese">Japanese</option>
						</select></div>
						<div id="signUpWarningMessage" style="color: red;"></div>
					<input type="submit" class="button" value="회원가입" style="margin-top: 75px">
				  </form>
				</div>
			  </div>
		  </div>
		  
		</div>
	</div>
	
</div>
<div id="footer_spacer"></div>
    <div id="footer" style="position:fixed;bottom: 0;">
		<div class="footer_content">
		  <div class="rule"></div>
  
		  <div id="footer_text" data-panel='{"flow-children":"row"}'>
			<div style="margin-top: 10px">
			  &copy; 2024 Valve Corporation. All rights reserved. <br />
			  모든 상표는 미국 및 기타 국가에서 해당하는 소유자의 재산입니다.
			</div>
		  </div>
		</div>
	  </div>

	<c:if test="${not empty error}">
		<script>
			validateLoginResult();		
			function validateLoginResult() {
				//필드들의 값을 가져와 변수에 저장
			    let warning = document.getElementById("loginWarningMessage");
			    warning.innerHTML = "<br>아이디 또는 비밀번호가 일치하지 않습니다";
			    }
		</script>
	</c:if>
	
		<c:if test="${loginStatus ne 'visitor'}">
		<script>
			loggedInAlready();		
			function loggedInAlready() {
			    window.history.back();
			}
		</script>
	</c:if>
	
<script>
//로그인 폼 null 체크



function validateLoginForm() {
	//필드들의 값을 가져와 변수에 저장
    let email = document.getElementById("loginEmail").value;
    let password = document.getElementById("loginPass").value;
   

    // 입력 필드의 값이 비어 있는지 확인
   if (email === "" || password === "") {
        // 경고 메시지
        document.getElementById("loginWarningMessage").innerHTML = "모든 필드를 입력해주세요";
        return false; // 폼 제출을 막음
    } else {
        // 모든 필드가 채워져 있으면 제출 허용
        return true;
    }
}
//회원가입 폼 null 체크
function validateSignUpForm() {
    let email = document.getElementById("signUpEmail").value;
    let password = document.getElementById("signUpPw").value;
    let nickname = document.getElementById("signUpNickname").value;
    let nationality = document.getElementById("signUpNationality").value;
    // 기타 필드들의 값을 가져와 변수에 저장

    // 입력 필드의 값이 비어 있는지 확인
   if (email === "" || password === "" || nickname === "" || nationality === "") {
        // 경고 메시지 표시
        document.getElementById("signUpWarningMessage").innerHTML = "모든 필드를 입력해주세요.";
        return false; // 폼 제출을 막음
    } else {
        // 모든 필드가 채워져 있으면 제출 허용
        return true;
    }
}

document.getElementById("loginEmail").addEventListener("input", function(event) {
    var inputValue = event.target.value;
    // 스페이스 제거
    var trimmedValue = inputValue.replace(/\s/g, "");
    // 입력된 값 업데이트
    event.target.value = trimmedValue;
});

</script>
</body>
</html>
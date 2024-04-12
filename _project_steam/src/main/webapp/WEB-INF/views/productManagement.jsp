<%@ page language="java" contentType="text/html; charset=UTF-8"%> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="responsive" lang="ko">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta name="theme-color" content="#171a21" />
    <title>로그인</title>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />

    <link
      href="https://community.cloudflare.steamstatic.com/public/shared/css/motiva_sans.css?v=GfSjbGKcNYaQ&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://community.cloudflare.steamstatic.com/public/shared/css/buttons.css?v=tuNiaSwXwcYT&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://community.cloudflare.steamstatic.com/public/shared/css/shared_global.css?v=Zj8Lt-uyXH8R&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://community.cloudflare.steamstatic.com/public/css/globalv2.css?v=pwVcIAtHNXwg&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://community.cloudflare.steamstatic.com/public/shared/css/login.css?v=0H1th98etnSV&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://community.cloudflare.steamstatic.com/public/css/skin_1/home.css?v=-6qQi3rZclGf&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://community.cloudflare.steamstatic.com/public/shared/css/shared_responsive.css?v=KrKRjQbCfNh0&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://community.cloudflare.steamstatic.com/public/css/skin_1/header.css?v=vh4BMeDcNiCU&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link href="css/management.css" rel="stylesheet" type="text/css" />
    <link href="css/managementForm.css" rel="stylesheet" type="text/css" />
    <link
      href="https://cdn.jsdelivr.net/npm/vanillajs-datepicker@1.1.4/dist/css/datepicker.min.css"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css"
      rel="stylesheet"
      type="text/css"
    />

    <script
      type="text/javascript"
      src="    https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.1/js/bootstrap.min.js"
    ></script>
    <script
      type="text/javascript"
      src="https://cdn.jsdelivr.net/npm/vanillajs-datepicker@1.1.4/dist/js/datepicker-full.min.js"
    ></script>
    <script type="text/javascript">
      VALVE_PUBLIC_PATH =
        "https:\/\/community.cloudflare.steamstatic.com\/public\/";
    </script>
    <script
      type="text/javascript"
      src="https://community.cloudflare.steamstatic.com/public/javascript/scriptaculous/_combined.js?v=OeNIgrpEF8tL&amp;l=koreana&amp;_cdn=cloudflare&amp;load=effects,controls,slider,dragdrop"
    ></script>
    <script
      type="text/javascript"
      src="https://community.cloudflare.steamstatic.com/public/javascript/global.js?v=EToM5vVWVuDV&amp;l=koreana&amp;_cdn=cloudflare"
    ></script>
    <script
      type="text/javascript"
      src="https://community.cloudflare.steamstatic.com/public/javascript/jquery-1.11.1.min.js?v=.isFTSRckeNhC&amp;_cdn=cloudflare"
    ></script>
    <script
      type="text/javascript"
      src="https://community.cloudflare.steamstatic.com/public/shared/javascript/tooltip.js?v=.zYHOpI1L3Rt0&amp;_cdn=cloudflare"
    ></script>
    <script
      type="text/javascript"
      src="https://community.cloudflare.steamstatic.com/public/shared/javascript/shared_global.js?v=WVkjW4cQ29y0&amp;l=koreana&amp;_cdn=cloudflare"
    ></script>
    <script type="text/javascript" src="js/login.js"></script>
  </head>
  <body class="login global responsive_page">
    <div role="banner" id="global_header" data-panel='{"flow-children":"row"}'>
      <div class="content">
        <div class="logo" style="margin-top: -20px; margin-left: 30px">
          <span id="logo_holder">
            <a href="/" aria-label="Steam 홈페이지 링크">
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
            <a class="submenuitem" href="/">상점 홈</a>

            <a class="submenuitem" href="/wishlist">찜 목록</a>

            <a class="submenuitem" href="/news">소식</a>
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
            <a class="submenuitem" href="/noticeForum">공지사항</a>
            <a class="submenuitem" href="/generalForum">자유 게시판</a>
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
            <a class="submenuitem" href="/myGames">내 게임</a>
            <a class="submenuitem" href="/myOrders">주문 조회</a>
            <a class="submenuitem" href="/myInfo">계정 정보</a>
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
          <c:if test="${loginStatus eq 'admin'}">
            <a href="/productManagement">회원관리 | </a>
            <a href="/productManagement">상품관리 | </a>
          </c:if>
          <c:choose>
            <c:when
              test="${loginStatus eq 'product' || loginStatus eq 'admin'}"
            >
              <a href="/logout">로그아웃</a>
            </c:when>
            <c:otherwise>
              <a class="global_action_link" href="/loginForm">로그인</a>
              &nbsp;|&nbsp;
              <a class="global_action_link" href="/loginForm">회원가입</a>
            </c:otherwise>
          </c:choose>
        </div>
      </div>
    </div>
    <!-- 글로벌 헤더 끝 -->

    <!-- 테이블 -->

    <main>
      <div role="region" aria-label="data table" tabindex="0" class="primary">
        <table class="containerMain">
          <thead>
            <tr>
              <th><h1>상품번호</h1></th>
              <th><h1>상품명</h1></th>
              <th><h1>장르</h1></th>
              <th><h1>가격</h1></th>
              <th><h1>출시일자</h1></th>
              <th><h1>소개</h1></th>
              <th colspan="2"><h1>편집</h1></th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <c:forEach var="product" items="${ProductList}">
                <tr>
                  <td>${product.num}</td>
                  <td>${product.name}</td>
                  <td>${product.genre}</td>
                  <td>${product.price}</td>
                  <td>${product.releasedate}</td>
                  <td>
                    <a
                      href="#"
                      class="btn btn-light"
                      onclick="openEditWindow(this)"
                      data-product-num="${product.num}"
                      >열기</a
                    >
                  </td>
                  <td>
                    <a
                      id="edit_${product.num}"
                      href="#"
                      class="btn btn-light edit-button"
                      >수정</a
                    >
                  </td>
                  <td>
                    <a
                      id="clickDelete"
                      href="pDeleteButton?num=${product.num}"
                      class="btn btn-dark"
                      onclick="return confirm('확인을 누르면 상품 정보가 삭제됩니다')"
                      >삭제</a
                    >
                  </td>
                </tr>
              </c:forEach>
            </tr>
          </tbody>
        </table>
      </div>

      <aside>
        <div class="sideForm">
          <form id="manageForm" method="post" action="mInsertButton">
            <div class="title">상품관리</div>
            <div class="input-container ic1">
              <label for="product_num" class="placeholder">상품번호</label>
              <br /><br />
              <input
                id="product_num"
                class="input"
                type="text"
                readonly
                placeholder="상품번호 미입력시 제출 = 삽입"
                name="num"
              />
              <div class="cut"></div>
              <br />
            </div>
            <div class="input-container ic1">
              <label for="product_name" class="placeholder">상품명</label>
              <br /><br />
              <input
                id="product_name"
                class="input"
                type="name"
                placeholder=""
                name="name"
              />
              <div class="cut"></div>
              <br />
            </div>

            <div class="input-container ic1">
              <label for="product_genre" class="placeholder">장르</label>
              <br /><br />
              <select class="select" id="product_genre" name="genre">
                <option selected value="none">장르선택</option>
                <option value="product">액션</option>
                <option value="admin">시뮬레이션</option>
                <option value="admin">어드벤처</option>
                <option value="admin">롤플레잉</option>
                <option value="admin">스포츠</option>
                <option value="admin">전략</option>
              </select>
              <div class="cut"></div>
              <br />
            </div>

            <div class="input-container ic1">
              <label for="product_price" class="placeholder">가격</label>
              <br /><br />
              <input
                id="product_price"
                class="input"
                type="text"
                placeholder=""
                name="price"
              />
              <div class="cut"></div>
              <br />
            </div>

            <div class="input-container ic1">
              <label for="product_releasedate" class="placeholder"
                >출시일자</label
              >
              <br /><br />
              <input
                type="text"
                class="datepicker_input form-control border-2"
                id="datepicker1"
                name="releasedate"
                required
                placeholder="날짜선택"
              />
              <div class="cut"></div>
              <br />
            </div>
            <br />
            <button type="submit" class="submit">제출</button>
          </form>
        </div>
      </aside>
    </main>
    <script>
      function openEditWindow(element) {
        let num = element.getAttribute("data-product-num");
        let url = "/editIntroduction?num=" + num;
        let newWindow = window.open(url, "_blank");

        // 새 창 닫힘 이벤트 핸들러 등록
        newWindow.addEventListener("beforeunload", function() {
            // 새 창이 닫힐 때 기존 페이지 새로고침
            location.reload();
        });
      }
    </script>

    <script>
      $(document).ready(function () {
        // 특정 버튼을 클릭했을 때
        $("a.edit-button").click(function () {
          var productId = $(this).attr("id").split("_")[1];
          $.ajax({
            url: "/pEditButton?num=" + productId,
            type: "POST", // GET 요청
            dataType: "json", // 응답 데이터 타입은 JSON으로 가정
            success: function (data) {
              // 성공적으로 응답을 받았을 때
              // 받은 데이터를 처리하여 페이지에 표시
              $("#product_num").val(data.num); // 결과를 특정 요소에 삽입
              $("#product_name").val(data.name);
              $("#product_genre").val(data.genre);
              $("#product_price").val(data.price);
              $("#product_releasedate").val(data.releasedate);
              $("#product_detail").val(data.detail);
              $("#product_simple").val(data.simple);
            },
            error: function (xhr, status, error) {
              // 요청 실패 시
              console.error("Error:", error); // 콘솔에 에러 로그 출력
            },
          });
        });
      });

      document
        .getElementById("manageForm")
        .addEventListener("submit", function (event) {
          // input 요소의 값 가져오기
          var productNum = document.getElementById("product_num").value;

          // 회원번호가 비어있지 않으면
          if (productNum.trim() !== "") {
            // 폼의 action 변경
            this.action = "/mUpdateButton"; // 새로운 action으로 변경
          }
        });

      const getDatePickerTitle = (elem) => {
        // From the label or the aria-label
        const label = elem.nextElementSibling;
        let titleText = "";
        if (label && label.tagName === "LABEL") {
          titleText = label.textContent;
        } else {
          titleText = elem.getAttribute("aria-label") || "";
        }
        return titleText;
      };

      const elems = document.querySelectorAll(".datepicker_input");
      for (const elem of elems) {
        const datepicker = new Datepicker(elem, {
          format: "yyyy.mm.dd", // UK format
          title: getDatePickerTitle(elem),
          orientation: "auto right", // 달력을 오른쪽으로 열도록 설정
        });
      }
    </script>
  </body>
</html>

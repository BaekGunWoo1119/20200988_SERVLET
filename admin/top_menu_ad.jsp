<%@ page contentType = "text/html;charset=utf-8" %>
<nav class="navbar navbar-expand  navbar-dark bg-dark">
    <div class="dropdown">
  		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		카테고리
  		</button>
    	<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        	<a class="dropdown-item" href="#">최신 게임</a>
            <a class="dropdown-item" href="#">인기 게임</a>
            <a class="dropdown-item" href="#">FPS 게임</a>
            <a class="dropdown-item" href="#">RPG 게임</a>
            <a class="dropdown-item" href="#">액션 게임</a>
            <a class="dropdown-item" href="#">시뮬레이터</a>
            <a class="dropdown-item" href="#">전략 게임</a>
    	</div>
    </div>
    <div>
        <a class="navbar-brand" href="index_ad.jsp"><img src="../image\logo_img.gif" class="img-fluid" alt="main_image"></a>
    </div>
    
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="">메뉴바 : 홈페이지</a>
            <a class="navbar-brand" href="">회원 보기/추가/수정/삭제</a>
            <a class="navbar-brand" href="">상품 보기</a>
            <a class="navbar-brand" href="product_add.jsp">등록</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=update">수정</a>
            <a class="navbar-brand" href="product_delete?edit=delete.jsp">삭제</a>
            <a class="navbar-brand" href="../index.jsp">일반모드</a>

		</div>
	</div>
</nav>
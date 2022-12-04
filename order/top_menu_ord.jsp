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
        <a class="navbar-brand" href="../index.jsp"><img src="../image\logo_img.gif" class="img-fluid" alt="main_image"></a>
    </div>
    
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp">상품목록(기본 홈)</a>
            <% 
               if(session.getAttribute("id") == null){
                    %><a class="navbar-brand" href="../login/login_user.jsp">로그인</a>
                      <a class="navbar-brand" href="../member_join.jsp">회원가입</a><%
                }
                
                else {
                 %><a class="navbar-brand" href=""><%=session.getAttribute("name")%>님</a>
                   <a class="navbar-brand" href="../login/logout.jsp">로그아웃</a><%
            
                }
            %>
            <a class="navbar-brand" href=".././BoardListAction.do?pageNum=1">게시판(고객센터)</a>
            <a class="navbar-brand" href="../admin/index_ad.jsp">관리자모드</a>
		</div>
	</div>
</nav>
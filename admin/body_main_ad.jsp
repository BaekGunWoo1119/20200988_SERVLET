<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%> <!– 자바 mysql 연동 -->
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "현재 페이지는 인기 게임 상품 목록입니다.";
	String tagline = "하단 페이지 : 확인";%>

    <div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>
<%
    ProductRepository dao = ProductRepository.getInstance();
	ArrayList<Product> listOfProducts = dao.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 
<div class="container">
		<div class="row" align="center">
            <%@ include file="../db/db_conn.jsp"%>
            <%
                String sql = "select * from product"; // 조회
                pstmt = conn.prepareStatement(sql); // 연결 생성
                rs = pstmt.executeQuery(); // 쿼리 실행
                while (rs.next()) { // 결과 ResultSet 객체 반복
            %>
			<div class="col-md-4">
                <div class="card bg-dark text-white">
                        <img src="../image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                        <h5 class="card-title"><%=rs.getString("p_name")%></h5>
                        <p class="card-text">지금 구매 후 플레이</p>
                    </div>
                </div>
				<h3><%=rs.getString("p_name")%></h3>
                <p><%=rs.getString("p_description")%>
                <p><%=rs.getString("p_UnitPrice")%>원
                <p><a href="product_delete.jsp?id=<%=rs.getString("p_id")%>" style="color:white;" class="btn btn-danger">삭제 &raquo;></a>
			</div>
			<%
			    } // 반복문 끝난 이후 db 연결 종료	
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            %>
		</div>
		<hr>
</div>
	<div class="card bg-dark text-white">
    	<img src="../image/top.jpg" class="card-img" alt="...">
    	<div class="card-img-overlay">
    		<h5 class="card-title">알비온 온라인</h5>
    		<p class="card-text">출처 : 구글 플레이 스토어</p>
  		</div>
  	</div>

	<div class="container">
		<div class="text-center">
			<h3>
                <br>
				<%=tagline%>
			</h3>
		</div>
		<hr>
	</div>
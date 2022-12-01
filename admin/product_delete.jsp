<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%> <!– 자바 mysql 연동 -->
<script>
    if (confirm("정말 상품을 삭제하시겠습니까?") == true){    //확인
                
         <%@ include file="../db/db_conn.jsp"%>
            <%
                String PrdId = request.getParameter("id");
                String sql = "delete from product where p_id = ?"; // 조회
                pstmt = conn.prepareStatement(sql); // 연결 생성
                pstmt.setString(1, PrdId);
                pstmt.executeUpdate(); // 쿼리 실행
            %>
        alert("삭제가 완료되었습니다!");
        history.back();
    } else{   //취소
        history.back();
    }
</script>
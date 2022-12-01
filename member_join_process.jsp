<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="dto.member"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String UserId = multi.getParameter("Userid");
	String UserName = multi.getParameter("UserName");
    String UserPw = multi.getParameter("Userpw");
    String Gender = multi.getParameter("gender");
	String Email = multi.getParameter("email");

	String sql = "insert into product values(?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql); // 쿼리문 몸체만 넣기
	pstmt.setString(1, productId); // 각 필드 설정 - ? 순서대로
	pstmt.setString(2, name);
	pstmt.setInt(3, price1);
	pstmt.setString(4, description);
	pstmt.setString(5, category);
	pstmt.setString(6, manufacturer);
	pstmt.setLong(7, stock1);
	pstmt.setString(8, condition);
	pstmt.setString(9, fileName);
	pstmt.executeUpdate(); // 최종 SQL 쿼리 실행
	
	if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();

	response.sendRedirect("index_ad.jsp");
%>

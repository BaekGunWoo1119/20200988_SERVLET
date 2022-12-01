<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="dto.Product"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ include file="db/db_conn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	String UserId = request.getParameter("Userid");
	String UserName = request.getParameter("UserName");
    String UserPw = request.getParameter("Userpw");
    String Gender = request.getParameter("gender");
    String Birth = request.getParameter("birth");
	String Email = request.getParameter("email");
    String Phone = request.getParameter("CallNumber");
    String Address = request.getParameter("address");

    Date date = new Date();
    SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
    String strdate = simpleDate.format(date);

	String sql = "insert into member(userid, password, name, gender, birth, mail, phone, address, regist_day) values(?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql); // 쿼리문 몸체만 넣기
	pstmt.setString(1, UserId); // 각 필드 설정 - ? 순서대로
	pstmt.setString(2, UserPw);
	pstmt.setString(3, UserName);
	pstmt.setString(4, Gender);
    pstmt.setString(5, Birth);
	pstmt.setString(6, Email);
	pstmt.setString(7, Phone);
	pstmt.setString(8, Address);
    pstmt.setString(9, strdate);
	pstmt.executeUpdate(); // 최종 SQL 쿼리 실행
	
	if (pstmt != null)
 		pstmt.close();
        
 	if (conn != null)
		conn.close();

    response.sendRedirect("member_join_success.jsp");
%> 


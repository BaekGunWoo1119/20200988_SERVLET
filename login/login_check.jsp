<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");

    String J_UserId = request.getParameter("j_userid");
    String J_UserPw = request.getParameter("j_password");
    String sql = "select * from member where userid = ? and password = ?";
    try{
        // pstmt 생성
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, J_UserId);
        pstmt.setString(2, J_UserPw);
        // sql실행
        rs = pstmt.executeQuery();
        if(rs.next()){ // 로그인 성공(인증의 수단 session)
                J_UserId = rs.getString("userid");
                String username = rs.getString("name");

                session.setAttribute("id", J_UserId);
                session.setAttribute("name", username);

                response.sendRedirect("../index.jsp"); // 페이지이동

        } 

        else{ // 로그인 실패
                response.sendRedirect("login_failed.jsp"); // 실패 페이지
                out.println("<script>alert('존재하지 않는 ID입니다!')</script>");
        }
    }

        catch(Exception e) {
            e.printStackTrace();
            response.sendRedirect("login_failed.jsp"); // 에러가 난 경우도 리다이렉트
        }
		
        finally{
            try{
                if(conn != null) conn.close();
                if(pstmt != null) pstmt.close();
                if(rs != null) rs.close();
            } 
            catch(Exception e){
            e.printStackTrace();
            }
        }
%>
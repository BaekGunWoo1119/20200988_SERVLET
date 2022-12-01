<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="dto.Product"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ include file="../db/db_conn.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");

    String J_UserId = request.getParameter("j_userid");
    String J_UserPw = request.getParameter("j_password");
    String sql = "select password from member where userid = ?";
    pstmt = conn.prepareStatement(SQL);
	pstmt.setString(1, J_UserId); //sql Injection 공격 방어 수단 : 1번째 물음표에 userID 입력
	rs = pstmt.executeQuery(); // 쿼리 실행 
	if (rs.next()) {
		if (rs.getString(1).equals(J_UserPw)) // rs.getString(1) : select된 첫번째 컬럼
            String sql = "select name from member where userid = ?"
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, J_UserId);
            rs = pstmt.executeQuery();
            String User_name = rs.getString(1);
            session.setAttribute("User_id", J_UserId);
            session.setAttribute("User_name", User_name);
			out.println("<script>location.href = 'index.jsp'</script>");
        
            return true;
				else
					out.println("<script>alert('비밀번호가 맞지 않습니다!')</script>");
                return false;
			}
			out.println("<script>alert('존재하지 않는 ID입니다!')</script>");
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return -2; //DB 오류 
%>
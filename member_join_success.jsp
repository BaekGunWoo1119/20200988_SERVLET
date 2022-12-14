<%@ page contentType = "text/html;charset=utf-8" %>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
	window.open("popup/popup1.jsp", "popup", "width=365, height = 250, left = 0, top=0");
</script>
<script type ="text/javascript" src ="js/MemBerJoin.js"></script>
<title>회원 가입 완료</title>
</head>
<body>
	<jsp:include page="top_menu.jsp" />	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 가입이 완료되었습니다</h1>
		</div>
	</div>
	<div class="col-sm-offset-2 col-sm-10 " style ="text-align:center;">
		<input type="submit" class="btn btn-primary" value="메인으로" onclick ="location.href='index.jsp';" >
        <a href="login/login_user.jsp" class="btn btn-sm btn-success pull-right">로그인</a>
	</div>
</body>
</html>
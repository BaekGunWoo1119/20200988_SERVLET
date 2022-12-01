function CheckAddUserJoin() {

	var UserId = document.getElementById("Userid");
	var UserPw = document.getElementById("Userpw");
	var UserPw_Re = document.getElementById("Userpw_re");
    var UserName = document.getElementById("UserName");
    var Gender = document.getElementById("gender");
	var Email = document.getElementById("email");
	
	// 유저아이디 체크
	if (!check(/[^a-z|A-Z|0-9]+$/, UserId.value,
			"[아이디 입력]\nID에는 영어와 숫자만을 포함해주세요!"))
		return false;
    
	if (UserId.value == null) {
		alert("[아이디 입력]\n아이디를 입력하세요!");
		UserId.select();
		UserId.focus();
		return false;
	}
    
    // 유저닉네임 체크
	if (UserName.value.length < 4 || UserName.value.length > 50) {
		alert("[닉네임 입력]\n최소 4자에서 최대 50자까지 입력하세요");
		UserName.select();
		UserName.focus();
		return false;
	}
    
    //이메일 체크
    if (Email.value == null) {
		alert("[이메일 입력]\n 이메일을 입력하세요!");
		Email.select();
		Email.focus();
		return false;
	}
    
    //비밀번호 체크
	if(UserPw.value.length < 8 || UserPw.value.length > 20){
      alert("[비밀번호 입력]\n8자리 ~ 20자리 이내로 입력해주세요.");
      UserPw.select();
	  UserPw.focus();
      return false;
     }else if(UserPw.value.search(/\s/) != -1){
      alert("[비밀번호 입력]\n비밀번호는 공백 없이 입력해주세요.");
      UserPw.select();
	  UserPw.focus();
      return false;
     }else if(UserPw.value.num < 0 || UserPw.value.eng < 0 || UserPw.value.spe < 0 ){
      alert("[비밀번호 입력]\n영문,숫자, 특수문자를 혼합하여 입력해주세요.");
      UserPw.select();
	  UserPw.focus();
      return false;
     }else if(UserPw.value != UserPw_Re.value){
      alert("[비밀번호 입력]\n비밀번호가 확인란과 일치하지 않습니다.");
      UserPw.select();
	  UserPw.focus();
     }else {
        document.memebrJoin.submit();
        return true;
     }

}

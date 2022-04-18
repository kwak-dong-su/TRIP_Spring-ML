<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<script type = "text/javascript" src = "https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>

<body>
	<button onclick="location.href='createMemberForm.jsp'" type="button">Hi-TRIP으로 가입</button>
	
	<div id = "naver_id_login"></div>
	
	<form action="">
		<button type="submit">구글</button>
	</form>
</body>
<script type="text/javascript">
 
         var naver_id_login = new naver_id_login("your key", "http://localhost:8080/trip/member/rgst.jsp");    // Client ID, CallBack URL 삽입
                                            // 단 'localhost'가 포함된 CallBack URL
         var state = naver_id_login.getUniqState();
        
         naver_id_login.setButton("white", 4, 40);
         naver_id_login.setDomain("http://localhost:8090/hansub_project/login");    //  URL
         naver_id_login.setState(state);
         naver_id_login.setPopup();
         naver_id_login.init_naver_id_login();
 
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
	<meta name="copyright" content="ninodezign.com"> 
	<!-- favicon -->
    <link rel="shortcut icon" href="resources/images/ico/favicon.jpg">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../resources/images/ico/apple-touch-icon-57-precomposed.png">
	
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/materialdesignicons.min.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/jquery.mCustomScrollbar.min.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/prettyPhoto.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/unslider.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/template.css" />
<title>회원가입</title>
</head>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<body>

<header id="nino-header">
		<div id="nino-headerInner">
			<%
				if (session.getAttribute("member_name") == null) {
			%>
			<jsp:include page="../header.jsp"></jsp:include>
			<%
				} else {
			%>
			<jsp:include page="../header2.jsp"></jsp:include>
			<%
				}
			%>
		</div>
	</header>

	<button onclick="location.href='createMemberForm.jsp'" type="button">Hi-TRIP으로 가입</button>
	
	<div id = "naverIdLogin"></div>
	
	<form action="">
		<button type="submit">구글</button>
	</form>
</body>
<script type="text/javascript" src="../resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	
  var naverLogin = new naver.LoginWithNaverId(
   {
    clientId: "n0kdjXCYJdG3WwDKAvfR",
    callbackUrl: "http://localhost:8080/trip/member/rgstSelect.jsp",
    loginButton: {color: "green", type: 2, height: 40}
    }
   );
  
    naverLogin.init();
    
    naverLogin.getLoginStatus(function (status) {
      if (status) {
    	  var id=naverLogin.user.getId();
          var gender=naverLogin.user.getGender();
          var birthday=naverLogin.user.getBirthday();
          var birthyear = naverLogin.user.getBirthyear();
          console.log(gender+" "+birthday+" "+birthyear+" "+id)

         if(gender===null||gender===undefined )
         {
            alert("필수 정보 제공에 동의해주세요.");
            naverLogin.reprompt();
            return ;  
         }
         else if(birthday===null||birthday===undefined )
         {
        	 alert("필수 정보 제공에 동의해주세요.");
             naverLogin.reprompt();
             return ; 
         }
         else if(birthyear===null||birthyear===undefined )
         {
        	 alert("필수 정보 제공에 동의해주세요.");
             naverLogin.reprompt();
             return ; 
         }
         else
         {
        	 	var f = document.createElement('form');
        	    
        	    var obj1;
        	    obj1 = document.createElement('input');
        	    obj1.setAttribute('type', 'hidden');
        	    obj1.setAttribute('name', 'id');
        	    obj1.setAttribute('value', id);
        	    
        	    var obj2;
        	    obj2 = document.createElement('input');
        	    obj2.setAttribute('type', 'hidden');
        	    obj2.setAttribute('name', 'gender');
        	    obj2.setAttribute('value', gender);
        	    
        	    var obj3;
        	    obj3 = document.createElement('input');
        	    obj3.setAttribute('type', 'hidden');
        	    obj3.setAttribute('name', 'birthday');
        	    obj3.setAttribute('value', birthday);
        	    
        	    var obj4;
        	    obj4 = document.createElement('input');
        	    obj4.setAttribute('type', 'hidden');
        	    obj4.setAttribute('name', 'birthyear');
        	    obj4.setAttribute('value', birthyear);
        	    
        	    f.appendChild(obj1);
        	    f.appendChild(obj2);
        	    f.appendChild(obj3);
        	    f.appendChild(obj4);
        	    f.setAttribute('method', 'post');
        	    f.setAttribute('action', 'loginNaver');
        	    document.body.appendChild(f);
        	         	    
        	    naverLogin.logout();
        	    
        	    f.submit();

         }
	}
    });
</script>
</html>
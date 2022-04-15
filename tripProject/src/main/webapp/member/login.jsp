<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script>
    $(function()
    {
        $('input[type="button"]').on('click', function()
        {
            login_submit();
        });


        function login_submit()
        {
            
                console.log($('#u_id').val());
                console.log($('#u_pw').val());
                
                if($('#u_id').val()=="")
                {
                    $('p').text("아이디를 입력해주세요.");
                    $('#u_id').focus();
                    return;
                }
                else if($('#u_pw').val()=="")
                {
                    $('p').text("비밀번호를 입력해주세요.");
                    $('#u_pw').focus();
                    return;
                }
                else
                {                          
                    $('h1').text("로그인 중입니다...");
                }
                
        };

    });
    </script>
</head>
<body>
    <h1>로그인</h1>
    <form name="login" action="/1111" method="get">
        <input type="text" id="u_id" placeholder="아이디" autofocus><br>
        <input type="password" id="u_pw" placeholder="패스워드"><br>
        <input type="button" value="로그인"></button>
    </form>
    <p></p>
</body>
</html>
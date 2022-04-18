<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하이트립 로그인</title>
</head>
<script type="text/javascript" src="../resources/js/jquery-3.6.0.min.js"></script>
<script>
    $(function()
    {
        $('#loginHitrip').on('click', function()
        {
            login_submit();
        });


        function login_submit()
        {
            
                console.log($('#member_id').val());
                console.log($('#member_pw').val());
                
                if($('#member_id').val()=="")
                {
                    alert("아이디를 입력해주세요.");
                    $('#member_id').focus();
                    return;
                }
                else if($('#member_pw').val()=="")
                {
                    alert("패스워드를 입력해주세요.");
                    $('#member_pw').focus();
                    return;
                }
                else
                {                          
                	$("form").submit();
                }
                
        };

    });
    </script>
</head>
<body>
    <form action="loginHitrip">
        <input type="text" name="member_id" id="member_id" placeholder="아이디" autofocus><br>
        <input type="password" name="member_pw" id="member_pw" placeholder="패스워드"><br>
        <button id="loginHitrip" type="button">로그인</button>
    </form>
    <p></p>
</body>
</html>
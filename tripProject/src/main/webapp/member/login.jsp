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
                    $('p').text("���̵� �Է����ּ���.");
                    $('#u_id').focus();
                    return;
                }
                else if($('#u_pw').val()=="")
                {
                    $('p').text("��й�ȣ�� �Է����ּ���.");
                    $('#u_pw').focus();
                    return;
                }
                else
                {                          
                    $('h1').text("�α��� ���Դϴ�...");
                }
                
        };

    });
    </script>
</head>
<body>
    <h1>�α���</h1>
    <form name="login" action="/1111" method="get">
        <input type="text" id="u_id" placeholder="���̵�" autofocus><br>
        <input type="password" id="u_pw" placeholder="�н�����"><br>
        <input type="button" value="�α���"></button>
    </form>
    <p></p>
</body>
</html>
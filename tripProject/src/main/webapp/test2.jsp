<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- javascript -->
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>	
	<script type="text/javascript" src="resources/js/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.hoverdir.js"></script>
	<script type="text/javascript" src="resources/js/modernizr.custom.97074.js"></script>
	<script type="text/javascript" src="resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="resources/js/unslider-min.js"></script>
	<script type="text/javascript" src="resources/js/template.js"></script>
	<script type="text/javascript" src="resources/js/test.js"></script>

<script type="text/javascript">

function call() {
	alert('ok')
	                            var arr = [];
	                            var today = new Date();
	                            var week = new Array('일', '월', '화', '수', '목', '금', '토');
	                            var year = today.getFullYear();
	                            var month = today.getMonth() + 1;
	                            var day = today.getDate();
	                            var hours = today.getHours();
	                            var minutes = today.getMinutes();
	                            var hours_al = new Array('02', '05', '08', '11', '14', '17', '20', '23');
	                            var korea = [ {'region' : '서울','nx' : 60,'ny' : 127}, 
	                                {'region' : '인천','nx' : 55,'ny' : 124}, 
	                                {'region' : '경기도','nx' : 60,'ny' : 121}, 
	                                {'region' : '강원도','nx' : 92,'ny' : 131}, 
	                                {'region' : '충청북도','nx' : 69,'ny' : 106}, 
	                                {'region' : '충청남도','nx' : 68,'ny' : 100},
	                                {'region' : '전라북도','nx' : 63,'ny' : 89}, 
	                                {'region' : '전라남도','nx' : 50,'ny' : 67}, 
	                                {'region' : '경상남도','nx' : 90,'ny' : 77}, 
	                                {'region' : '경상북도','nx' : 91,'ny' : 106}, 
	                                {'region' : '제주도','nx' : 52,'ny' : 38} ];
	 
	                            /* $('.weather-date').html(
	                                    month + "월 " + day + "일 "
	                                            + week[today.getDay()] + "요일"); */
	 
	                            /* 동네예보 시간이 0200 0500 ... 3시간 단위로 23시까지 */
	                            for (var i = 0; i < hours_al.length; i++) {
	                                var h = hours_al[i] - hours;
	                                if (h == -1 || h == 0 || h == -2) {
	                                    var now = hours_al[i];
	                                }
	                                if (hours == 00) {
	                                    var now = hours_al[7];
	                                }
	                            }
	 
	                            /* example
	                             * 9시 -> 09시 변경 필요
	                             */
	                            if (hours < 10) {
	                                hours = '0' + hours;
	                            }
	                            if (month < 10) {
	                                month = '0' + month;
	                            }
	                            if (day < 10) {
	                                day = '0' + day;
	                            }
	 
	                            today = year + "" + month + "" + day;
	 
	                            /* 좌표 */
	                            $.each(korea,function(j, k) {
	                                                var _nx = korea[j].nx, _ny = korea[j].ny, region = korea[j].region, 
	                                                apikey = "SqzSmUiDg98oXGI%2FCfXvLhwsTNYDJP9GLNvbwUasTqJmT19uBacY%2FqdWOgeHWAJtXXg%2Bce4UkqQ%2By68xvSREqg%3D%3D", 
	                                                ForecastGribURL = "http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtNcst";
	                                               ForecastGribURL += "?ServiceKey=" + apikey;
	                                                ForecastGribURL += "&base_date=" + today;
	                                                ForecastGribURL += "&base_time=" + now + "00";
	                                                ForecastGribURL += "&nx=" + _nx + "&ny=" + _ny;
	                                                arr.push({'url' : ForecastGribURL, 'region' : region});
	                                                $.ajax({
	                                                            url : arr[j].url,
	                                                            type : 'GET',
	                                                            success : function(data) {
	                                                            	alert('ajax ok~!!!!!!!!!!!!!!!!')
	                                                                var $data = $(data).find("response>body>items>item");
	                                                                var cate = '';
	                                                                var temp = '';
	                                                                var sky = '';
	                                                                var rain = '';
	 
	                                                                $.each($data,function(i,o) {
	                                                                	alert( $(o).find("category").text());
	                                                                 })          
	                                                            }//success func 종료
	                                                        });
	                                            });
	                       }


	call()
</script>
</head>
<body>

</body>
</html>
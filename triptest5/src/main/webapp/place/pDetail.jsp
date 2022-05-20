<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
  
    <title></title>
  </head>
  <body>
  
  <div>
  <div class="sd-title">
						<span>${one.place_info}</span>
	</div>
	<div class="sd-addr">
						<span>${one.place_addr}</span>
					</div>
	<div class="sd-number">
						<span></span>
					</div>
	<div class="sd-img">
						<span>
						<img src = ${one.place_img}></span>
					</div>
	<div class="sd-detail">
						<span>${one.place_detail}</span>
					</div>
	</div>
		
<div id="map" style="width:100%;height:700px;">${one.place_mapy}, ${one.place_mapx}</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=031ef1beec2da906c3e36a639f49b56c&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(${one.place_mapy}, ${one.place_mapx}), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨 
    }; 

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 
 
 //결과값으로 받은 위치를 마커로 표시합니다
	var marker = new kakao.maps.Marker({
    //map: map,
    position: coords
});
	 marker.setMap(map);
	// 지도에 클릭 이벤트를 등록합니다
	// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {   
		 // 클릭한 위도, 경도 정보를 가져옵니다 
	    var latlng = mouseEvent.latLng; 
	    
	    // 마커 위치를 클릭한 위치로 옮깁니다
	    marker.setPosition(latlng);
	    
	    var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
	    message += '경도는 ' + latlng.getLng() + ' 입니다';
	    
	    var resultDiv = document.getElementById('clickLatlng'); 
	    resultDiv.innerHTML = message;
	    
	});
</script>
  
  </body>
</html>
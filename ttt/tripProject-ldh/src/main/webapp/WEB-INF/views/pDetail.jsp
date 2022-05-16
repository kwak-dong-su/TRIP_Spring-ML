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

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('one.place_addr', function(result, status) {

   
	 // 정상적으로 검색이 완료됐으면 
    if (status === kakao.maps.services.Status.OK) {
        var coords = new kakao.maps.LatLng(${one.place_mapy}, ${one.place_mapx});

        
        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            //map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${one.place_info}</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
        marker.setMap(map);
    }  
})
</script>
  
  </body>
</html>
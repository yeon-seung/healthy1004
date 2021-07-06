var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.5175475, 127.136363), // 지도의 중심좌표
        level: 6 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption);	// 지도 생성
var searchPositions = [];
var positions = [/*
    {
        title: '오리역', 
        latlng: new kakao.maps.LatLng(37.338879, 127.109358)
    },
    {
		// 얘는 링크 다는 방식
        title: '<div style="padding:5px;">근린공원 <br><a href="https://www.naver.com/" style="color:blue" target="_blank">네이버링크~ㅋ</a></div>',
        latlng: new kakao.maps.LatLng(33.451393, 126.570738)
    },
    {
        title: '인호네',
        latlng: new kakao.maps.LatLng(37.3344138, 126.842143)
    },
    {
        title: '<div style="padding:5px;">요니~ <br><a href="https://www.naver.com/" style="color:blue" target="_blank">네이버링크~ㅋ</a></div>',
        latlng: new kakao.maps.LatLng(37.5175475, 127.136363)
    }*/
];
var scripts= document.getElementsByTagName('script');
var path= scripts[scripts.length-1].src.split('?')[0];      // remove any ?query
var mydir= path.split('/').slice(0, -1).join('/')+'/';  // remove last filename part of path

// 기본 지도
// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('송파역', function(result, status) {
    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {
        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    

// 마커 이미지의 이미지 주소입니다
//var imageSrc = "https://cdn4.iconfinder.com/data/icons/map-pins-7/64/map_pin_pointer_location_navigation_gym_workout-512.png"; 
var imageSrc = mydir + "../images/marker.png"; 	
// 마커 이미지의 이미지 크기 입니다
var imageSize = new kakao.maps.Size(32, 45); 
// 마커 이미지를 생성합니다    
var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 


for (var i = 0; i < positions.length; i ++) { 
    
	// 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        image : markerImage, // 마커 이미지	
    });
	
	var iwRemoveable = true;
	
	 // 마커에 표시할 인포윈도우를 생성합니다 
    var infowindow = new kakao.maps.InfoWindow({
        content: positions[i].title, // 인포윈도우에 표시할 내용
		removable : iwRemoveable
    });

    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));

}

// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
function makeOverListener(map, marker, infowindow) {
    return function() {
	
		// 마커에 클릭이벤트를 등록합니다
		kakao.maps.event.addListener(marker, 'click', function() {
		      // 마커 위에 인포윈도우를 표시합니다
		      infowindow.open(map, marker);  
		});
    };
}

$(document).ready(function() {
		// 로딩시 모든 크루 위치 마커 표시
		$.ajax({
				type: "get",
//			    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				url: "/getAllCrewList",
				dataType: "JSON",
				success: function(list){
					for(let i=0; i<list.length; i++){
						$("#crewFindResult").append(
							"<div class=\"staff\" style=\"margin-bottom: -1rem;\">"
							+ "<div class=\"text pt-3\">"
							+ "<a href=\"#\"><h3 style=\"margin-bottom: -1rem;\">" +  list[i].crewName
							+ "</h3></a>"
							+ "<br>정원: " + list[i].crewSize + "명"
							+ "<br>위치: " + list[i].crewLocation
							+ "<br>소개: " + list[i].crewInfo
							+ "<br><a href=\"/joinCrew\" class=\"btn btn-primary\" style=\"float: right; margin: 0.5rem 0.25rem 1rem 0;\">참가</a>"
							+ "</div></div><br>");
						// 주소로 좌표 변환하는 코드
						geocoder.addressSearch(list[i].crewLocation, function(result, status) {
						    // 정상적으로 검색이 완료됐으면 
						     if (status === kakao.maps.services.Status.OK) {
						
						        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
								positions.push({
									title: list[i].crewName,
									latlng: coords
								});

								// 마커 이미지의 이미지 주소입니다
								var imageSrc = mydir + "../images/marker.png"; 	
								// 마커 이미지의 이미지 크기 입니다
								var imageSize = new kakao.maps.Size(32, 45); 
								// 마커 이미지를 생성합니다    
								var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 

							    var marker = new kakao.maps.Marker({
						            map: map,
						            position: coords,
									image: markerImage
						        });

								var iwRemoveable = true;
								
								 // 마커에 표시할 인포윈도우를 생성합니다 
							    var infowindow = new kakao.maps.InfoWindow({
							        content: list[i].crewName, // 인포윈도우에 표시할 내용
									removable : iwRemoveable
							    });
							
							    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
							    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
							    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
							    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
//							    map.setCenter(coords);

								// 리스트에서 크루명 클릭해도 인포윈도우를 표시하자~
//							    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow)); 

								// 받아온 크루 위치 리스트의 첫번째 좌표로 지도 이동
						        map.setCenter(positions[0].latlng);
								console.log(positions[0]);
						    } 
						});    

					}
				}
			})
		
		// 검색어로 크루 찾기
		$("#crewFindBtn").click(function() {
			$("#crewFindResult").text("");
			let keyword = $("#crewFindKeyword").val();
			
			// 검색어로 크루 리스트 출력
			$.ajax({
				type: "get",
			    //contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				url: "/findCrewListByName",
				dataType: "JSON",
				data: "crewSearchName="+ keyword,
				success: function(list){
					if (keyword === "") {
						alert("검색어를 입력하세요!");
					} 
//					$("#crewFindResult").append("<br>" + keyword + " 크루 검색 결과" + "<hr>");
//					$("#crewFindResult").append("<hr>");
					for(let i=0; i<list.length; i++){
						$("#crewFindResult").append(
							"<div class=\"staff\" style=\"margin-bottom: -1rem;\">"
							+ "<div class=\"text pt-3\">"
							+ "<a href=\"#\"><h3 style=\"margin-bottom: -1rem;\">" +  list[i].crewName
							+ "</h3></a>"
							+ "<br>정원: " + list[i].crewSize + "명"
							+ "<br>위치: " + list[i].crewLocation
							+ "<br>소개: " + list[i].crewInfo
							+ "<br><a href=\"/joinCrew\" class=\"btn btn-primary\" style=\"float: right; margin: 0.5rem 0.25rem 1rem 0;\">참가</a>"
							+ "</div></div><br>");
							// 주소로 좌표 변환하는 코드
							geocoder.addressSearch(list[i].crewLocation, function(result, status) {
							    // 정상적으로 검색이 완료됐으면 
							     if (status === kakao.maps.services.Status.OK) {
							
							        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
									searchPositions.push({
										title: list[i].crewName,
										latlng: coords
									});
									
//									// 마커 이미지의 이미지 주소입니다
//									var imageSrc = "https://cdn4.iconfinder.com/data/icons/map-pins-7/64/map_pin_pointer_location_navigation_gym_workout-512.png"; 
//									// 마커 이미지의 이미지 크기 입니다
//									var imageSize = new kakao.maps.Size(50, 50); 
//									// 마커 이미지를 생성합니다    
//									var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
//	
								    var marker = new kakao.maps.Marker({
							            map: map,
							            position: coords,
										image: markerImage
							        });
//	
//									var iwRemoveable = true;
//									
//									 // 마커에 표시할 인포윈도우를 생성합니다 
//								    var infowindow = new kakao.maps.InfoWindow({
//								        content: list[i].crewName, // 인포윈도우에 표시할 내용
//										removable : iwRemoveable
//								    });
								
								    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
								    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
								    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
								    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
	
							        map.setCenter(coords);
									// 받아온 크루 위치 리스트의 첫번째 좌표로 지도 이동
//						    	    map.setCenter(searchPositions[0].latlng);
	
									console.log(searchPositions[0]);
							    } 
							});    

					}
					
				}
			})

		});
	});
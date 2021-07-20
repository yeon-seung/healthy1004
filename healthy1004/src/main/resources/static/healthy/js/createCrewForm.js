

// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map1'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 9 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map1 = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps1 = new kakao.maps.services.Places(); 

// jsp에 입력된 주소
var locationInput = $("#crewLocation").val();

// 키워드로 장소를 검색합니다
var keyword1 = "";
//ps1.keywordSearch(keyword1, placesSearchCB); 

var positions1 = [];

var scripts= document.getElementsByTagName('script');
var path= scripts[scripts.length-1].src.split('?')[0];      // remove any ?query
var mydir= path.split('/').slice(0, -1).join('/')+'/';  // remove last filename part of path

// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
function makeOverListener(map1, marker, infowindow) {
    return function() {
		// 마커에 클릭이벤트를 등록합니다
		kakao.maps.event.addListener(marker, 'click', function() {
		      // 마커 위에 인포윈도우를 표시합니다
		      infowindow.open(map1, marker);  
		});
    };
}

$(document).ready(function() {
// $(window).load( function() {
	$("#crewImg").change(function() {
		if(this.files && this.files[0]) {
			var reader = new FileReader;
			reader.onload = function(data) {
				$(".select_img img").attr("src", data.target.result).height(230);
			}
			reader.readAsDataURL(this.files[0]);
		}
		$("#creatBtn").css("margin-top", "2rem");
		
	});
});

//$(document).ready(function() {
$(window).load( function() {
	
	
	// 로딩시 모든 크루 위치 마커 표시
		$.ajax({
				type: "post",
//			    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				url: "/getAllCrewList",
				dataType: "json",
				data:"memberId=0",
				success: function(list){
					console.log(list);
					for(let i=0; i<list.length; i++){
						// 주소로 좌표 변환하는 코드
						geocoder.addressSearch(list[i].crewLocation, function(result, status) {
						    // 정상적으로 검색이 완료됐으면 
						     if (status === kakao.maps.services.Status.OK) {
						
						        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
								positions1.push({
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
						            map: map1,
						            position: coords,
									image: markerImage
						        });

								var iwRemoveable = false;
								
								var iwContent = '<div style="height:2rem; width: 12rem; display: block; text-align: center !important; display:table-cell !important;">' + list[i].crewName + '</div>'
								// 마커에 표시할 인포윈도우를 생성합니다 
							    var infowindow = new kakao.maps.InfoWindow({
//							        content: list[i].crewName, // 인포윈도우에 표시할 내용
							        content: iwContent, // 인포윈도우에 표시할 내용
									removable : iwRemoveable
							    });
			
								
							
							    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
							    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
							    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			
							    // 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다 
						        kakao.maps.event.addListener(marker, 'mouseover', function() {
						            infowindow.open(map1, marker);
						        });
						
						        // 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
						        kakao.maps.event.addListener(marker, 'mouseout', function() {
						            infowindow.close();
						        });							
							
								// 리스트에서 크루명 클릭해도 인포윈도우를 표시하자~
//							    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow)); 

								// 받아온 크루 위치 리스트의 첫번째 좌표로 지도 이동
//						        map.setCenter(positions1[0].latlng);
								console.log(positions1[0]);
						    } 
						});    

					}
				}
			});		
	
	$("#search-keyword-btn").click(function relocateMap() {
				let locKeyword = $("#search-keyword").val();
				ps1.keywordSearch(locKeyword, placesSearchCB); 
				function placesSearchCB (data, status, pagination) {
				    if (status === kakao.maps.services.Status.OK) {
				
				        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				        // LatLngBounds 객체에 좌표를 추가합니다
				        var bounds = new kakao.maps.LatLngBounds();
				
				        for (var i=0; i<data.length; i++) {
				//            displayMarker(data[i]);    
				            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
				        }       
				
				        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
				        map1.setBounds(bounds);
				    } 
				}
	});
	
	// Enter key로도 검색 가능하도록 추가
	$('#search-keyword').keypress(function(event){
   		 if ( event.which == 13 ) {
	         $("#search-keyword-btn").click();
	         return false;
	     }
	});
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
		infowindow = new kakao.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다
	
	// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
	searchAddrFromCoords(map1.getCenter(), displayCenterInfo);
	
	// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
	kakao.maps.event.addListener(map1, 'click', function(mouseEvent) {
	    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
	        if (status === kakao.maps.services.Status.OK) {
	            var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
	            detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
	            
				locationInput = result[0].address.address_name;
//				alert(locationInput);
				$("#crewLocation").val(locationInput);

	            var content = '<div class="bAddr">' +
	                            '<span class="title">법정동 주소정보</span>' + 
	                            detailAddr + 
	                        '</div>';
	
	            // 마커를 클릭한 위치에 표시합니다 
	            marker.setPosition(mouseEvent.latLng);
	            marker.setMap(map1);
	
	            // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
	            infowindow.setContent(content);
	            infowindow.open(map1, marker);
	        }   
	    });
	});
	
	// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
	kakao.maps.event.addListener(map1, 'idle', function() {
	    searchAddrFromCoords(map1.getCenter(), displayCenterInfo);
	});
	
	function searchAddrFromCoords(coords, callback) {
	    // 좌표로 행정동 주소 정보를 요청합니다
	    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
	}
	
	function searchDetailAddrFromCoords(coords, callback) {
	    // 좌표로 법정동 상세 주소 정보를 요청합니다
	    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}
	
	// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
	function displayCenterInfo(result, status) {
	    if (status === kakao.maps.services.Status.OK) {
	        var infoDiv = document.getElementById('centerAddr');
	
	        for(var i = 0; i < result.length; i++) {
	            // 행정동의 region_type 값은 'H' 이므로
	            if (result[i].region_type === 'H') {
	                infoDiv.innerHTML = result[i].address_name;
	                break;
	            }
	        }
	    }    
	}
});
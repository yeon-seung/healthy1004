$(document).ready(function() {
    
	console.log($("#memberId").val());
		// 로딩시 모든 크루 위치 마커 표시
		$.ajax({
				type: "get",
				url: "/getMyCrewList?memberId="+$("#memberId").val(),
				dataType: "JSON",
				success: function(list){
					console.log(list);
					for(let i=0; i<list.length; i++){
						$("#myCrewResult").append(
							"<div class='col-md-6 d-flex align-items-stretch'>"
							+"<div class='project-wrap'>"
							+"<a href='"
							+ $("#pageContext").val() + "crew_board?crewId="
							+ list[i].crewId 
							+ "' class='img' style='background-image: url(https://images.pexels.com/photos/34514/spot-runs-start-la.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260);'>"
							+"</a>"
							+"<div class='text p-4'>"
							+"<h3><a href='"
							+ $("#pageContext").val() + "crew_board?crewId="
							+ list[i].crewId 
							+ "' style='color: #4986fc; font-weight: bold !important;'>"+list[i].crewName+"</a></h3>"
							+"<p style='float: right;'><span>"+list[i].crewSize+"명</span></p>"
							+"<p><span>"+list[i].crewLocation+"</span></p>"
							+"<ul class='d-flex justify-content-between'>"
							+"<li style='color: black;'>"+list[i].crewInfo+"</li>"
//							+"<li class='price'>정원: "+list[i].crewSize+"명</li>"
//							+"<li style='font-weight: normal'>정원: "+list[i].crewSize+"명</li>"
							+"</ul>"
							+"</div>"
							+"</div>"
						);
					}
				}//success :function
			})//$.ajax
	});
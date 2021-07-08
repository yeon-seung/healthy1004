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
							"<a href=\"#\" class =\"img\"" 
							+ "style=\"background-image : url(https://images.pexels.com/photos/34514/spot-runs-start-la.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260);\">"
							+ "</a>"
							+"<div class=\"text p-4\">" 
							+"<h3>"
							+ "<a href=\"#\">" + list[i].crewName+"</h3>"
							+"<p>" + list[i].crewLocation + "</p>"
							+"<ul class=\"d-flex justify-content-between\">"
							+"<li><span class=\"flaticon-shower\"></span>"+ list[i].crewInfo + "</li>"
							+"<li class=\"price\">"+list[i].crewSize+"</li>"
							+"</ul>"
							+"</div>"
							
						);
					}
				}//success :function
			})//$.ajax
	});
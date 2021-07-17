var scripts= document.getElementsByTagName('script');
var path= scripts[scripts.length-1].src.split('?')[0];      // remove any ?query
var mydir= path.split('/').slice(0, -1).join('/')+'/';  // remove last filename part of path

var imageSrc2 = mydir + "../../../imgUpload/";

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
							+ $("#pageContext").val() + "crew_board_paging?crewId="
							+ list[i].crewId 
							+ "' class='img' style='background-image: url(" + imageSrc2 + list[i].crewImg + ");'>"
							+"</a>"
							+"<div class='text p-4'>"
							+"<h3><a href='"
							+ $("#pageContext").val() + "crew_board_paging?crewId="
							+ list[i].crewId 
							+ "' style='color: #4986fc; font-weight: bold !important;'>"+list[i].crewName+"</a></h3>"
							+"<p style='float: right; margin-left: 2rem;'><span>"+  + list[i].crewMemberCount + "/" + list[i].crewSize+"명</span></p>"
							+"<p><span>"+list[i].crewLocation+"</span></p>"
							+"<ul class='d-flex justify-content-between'>"
							+"<li style='color: black;'>"+list[i].crewInfo+"</li>"
							+"</ul>"
							+"</div>"
							+"</div>"
						);
					}
				}//success :function
			})//$.ajax
	});
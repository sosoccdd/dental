//파일업로드
$(document).ready(function(){
	var fileTarget = $('.filebox .upload-hidden');

	fileTarget.on('change', function(){
		if(window.FileReader){
			// 파일명 추출
			var filename = $(this)[0].files[0].name;
		} else {
			// Old IE 파일명 추출
	        var filename = $(this).val().split('/').pop().split('\\').pop();
		};

		$(this).siblings('.upload-name').val(filename);
	});

    //preview image 
    var imgTarget = $('.preview-image .upload-hidden');

    imgTarget.on('change', function(){
    	var parent = $(this).parent();
        parent.children('.upload-display').remove();

        if(window.FileReader){
            //image 파일만
            if (!$(this)[0].files[0].type.match(/image\//)) return;
            
            var reader = new FileReader();
            reader.onload = function(e){
                var src = e.target.result;
                parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
            }
            
            reader.readAsDataURL($(this)[0].files[0]);
        } else {
        	$(this)[0].select();
            $(this)[0].blur();
            
            var imgSrc = document.selection.createRange().text;
            parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

            var img = $(this).siblings('.upload-display').find('img');
            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
        }
	});
});


//경력사항 추가: D join
function addCareer() {
	var careers = $("#career").val();
	
	if(!careers){
		alert("경력사항을 입력해주세요");
		$("#career").focus();
	} else {
		
		//$("#careerList").append("<p class='careers'>" + careers + "<button type='button' class='del' onclick='delCareer()'>x</button></p>");
		$("#careerList").append("<div class='careers'><input type='text' value='" + careers + "' name='carCon' readonly><button type='button' class='del' onclick='delCareer()'>x</button></div>");
		
		$("#career").select();
	}
}
//경력사항 삭제: D join
function delCareer(){
	$(".del").click(function(){
		$(this).parent().remove();
	});
}


//소속의사 추가: C join
function addDentist() {
	var name = $("#dentistName").val();
	var gender = $("input[name=gender]:check").val();
	var field = $("input[name=field]:check").val();
	
	if(field == 10){
		field = "구강내과";
	} else if(field == 20){
		field = "구강악안면 방사선과";
	} else if(field == 30){
		field = "구강악안면외과";
	} else if(field == 40){
		field = "구강외과";
	} else if(field == 50){
		field = "소아치과";
	} else if(field == 60){
		field = "예방치과";
	} else if(field == 70){
		field = "치아교정";
	} else if(field == 80){
		field = "치아마취과";
	} else if(field == 90){
		field = "치아보존과";
	} else if(field == 100){
		field = "치아보철";
	} else {
		field = "치주과";
	}
	
	
	var addCode = "<p>추가되었나?</p>";
	
	if(!nname){
		alert("소속 의사의 이름을 입력해주세요");
		$("#dentistName").focus();
	} else if(!gender){
		alert("소속 의사의 성별을 체크해주세요");
	} else if(!field){
		alert("소속 의사의 전문 분야를 체크해주세요");
	} else {
		$("#dentistList").append(addCode);
	}
	/*
	else {
		
		//$("#careerList").append("<p class='careers'>" + careers + "<button type='button' class='del' onclick='delCareer()'>x</button></p>");
		$("#dentistList").append("<div class='careers'><input type='text' value='" + careers + "' name='carCon' readonly><button type='button' class='del' onclick='delCareer()'>x</button></div>");
		
		$("#career").select();
	}*/
}
//소속의사 삭제: C join
function delCareer(){
	$(".del").click(function(){
		$(this).parent().remove();
	});
}
//파일업로드2
$(document).ready(function(){
	var fileTarget = $('.filebox2 .upload-hidden2');

	fileTarget.on('change', function(){
		if(window.FileReader){
			// 파일명 추출
			var filename = $(this)[0].files[0].name;
		} else {
			// Old IE 파일명 추출
	        var filename = $(this).val().split('/').pop().split('\\').pop();
		};

		$(this).siblings('.upload-name2').val(filename);
	});

    //preview image 
    var imgTarget = $('.preview-image2 .upload-hidden2');

    imgTarget.on('change', function(){
    	var parent = $(this).parent();
        parent.children('.upload-display2').remove();

        if(window.FileReader){
            //image 파일만
            if (!$(this)[0].files[0].type.match(/image\//)) return;
            
            var reader = new FileReader();
            reader.onload = function(e){
                var src = e.target.result;
                parent.prepend('<div class="upload-display2"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
            }
            
            reader.readAsDataURL($(this)[0].files[0]);
        } else {
        	$(this)[0].select();
            $(this)[0].blur();
            
            var imgSrc = document.selection.createRange().text;
            parent.prepend('<div class="upload-display2"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

            var img = $(this).siblings('.upload-display2').find('img');
            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
        }
	});
});


function dJoin(){
	
	
	var work = ($(".careerList").children().text().replace(/x/gi,", ")).slice(0, -2);
	
	var addr = $("#address").val() + ", " + $("#detailAddress").val();

	//console.log(work.slice(0, -1));
	console.log(work);
	console.log(addr);
	return false;
	
}
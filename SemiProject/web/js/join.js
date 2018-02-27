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


//경력사항 추가 삭제
function addCareer() {
	
	arr+=1;
	
	console.log(arr);
	
	
    document.getElementById("careerList").innerHTML += "<div class='careers'>" + document.getElementById("career").value 
    + "<button type='button' class='delCareer' onclick='delCareer(); delBtn()'><i class='fa fa-trash'></i></button>" +
    		"</div>";
}
function delCareer(){
	/*$('.careers').children().first().remove();*/
}
function delBtn(){
	
	$('.careerList').eq($('li').click(function(){
		
		$('li').index(this).remove();
	}));
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

// 아이디 정규식
function regId() {
	var regId = /^[a-z][a-z0-9_-]{5,11}$/;

	if(regId.test($("#mId").val())) $(".idChk").html(" ");
	else $(".idChk").html("<p class='inconcinnity'>아이디는 영어 소문자로 시작하고 6~20자 영문자 또는 숫자이어야 합니다.</p>");
}

//아이디 중복체크
$(function(){
	$("#idCheck").click(function(){
		var mId = $("#mId").val();
		console.log(mId);
		
		$.ajax({
			url: "/semi/IdCheck.me",
			data: {mId:mId},
			success: function(data){
				console.log(data);
				
				if(data === "fail") $(".idChk").html("<p class='inconcinnity'>아이디가 중복됩니다.</p>")
				else $(".idChk").html("<p class='united'>사용할 수 있는 아이디 입니다.</p>")
				
			},
			error: function(msg){
				alert(msg);
			}
		});
	});
});

//비밀번호 정규식
function regPwd() {
	var regPwd = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;

	if(regPwd.test($("#pwd").val())) $(".pwdChk").html(" ");
	else $(".pwdChk").html("<p class='inconcinnity'>비밀번호는 8자 이상, 하나 이상의 숫자 및  특수 문자를 포함해야합니다. </p>");
}

//비밀번화 일치 여부
$(function() {
	$('#pwd2').keyup(function() {
		if ($('#pwd').val() != $('#pwd2').val()) {
		    $('.pwdChk').text('');
			$('.pwdChk').html("<p class='inconcinnity'>패스워드가 일치하지 않습니다.</p>");
		} else {
		    $('.pwdChk').text('');
			$('.pwdChk').html("<p class='united'>패스워드가 일치합니다.</p>");
		}
	}); //#chpass.keyup
});
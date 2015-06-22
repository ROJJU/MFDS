function tiny_box(forms_seq){TINY.box.show('/OTP.do?forms_seq='+forms_seq,1,300,150,1)};

function payment(forms_seq, payment){
	window.open('/Payment.do?forms_seq='+forms_seq+'&payment='+payment,'payment','width=755 height=526 scrollbars=yes');
}

$(function(){
	$('.example_3 ul').promptumenu({
		'height': 500,
		'width':1000,
		'rows': 3,
		'columns': 5,
		'direction': 'horizontal',
		'pages': true
	});
});


function CheckOtp(forms_seq){
	var otp1=document.getElementById("otp1").value;
	var otp2=document.getElementById("otp2").value;
	if(otp1==otp2){
		goUrl('/updateOtp.do?forms_seq='+forms_seq+'&list_seq=1&otp='+otp1);
	}else{
		alert('잘못된 OTP를 입력하셨습니다.');
	}
}


function delForms() {
	 var chkObj = document.getElementsByName("delForm");
	 var chkDelStr = "";
	 
	 for(var i=0; i<chkObj.length; i++) {
	  var chkObjElement = chkObj[i];
	  if(chkObjElement.checked) {
	   chkDelStr = chkDelStr + chkObjElement.value + "/";
	  }
	 }
	 
	 if(chkDelStr == "") {
	  alert("선택된 폴더가 없습니다.");
	  return false;
	 }
	 
	 chkDelStr = chkDelStr.substring(0, chkDelStr.length-1);
	 if(!confirm("선택삭제를 클릭하셨습니다. \r\n\r\n 정말로 삭제하시겠습니까?"))
	    return false;
	    
	   location.href="/selectDel.do?delInfo="+chkDelStr; 
	}


//채크박스 모두 선택 해제 
$(document).ready(function(){
 $('#checkall').click(function(){
  if ($("#checkall").is(":checked")) { 
  $('input:checkbox[id^=delForm]:not(checked)').attr("checked", true); 
  } else { 
  $('input:checkbox[id^=delForm]:checked').attr("checked", false); 
  } 
   
 }); 
}); 
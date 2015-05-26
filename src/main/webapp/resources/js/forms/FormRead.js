//접속 확인
	var xhr = null;
	var data = null;
	function getXMLHttpRequest(){
	    if (window.ActiveXObject) {
	        try {
	            return new ActiveXObject("Msxml2.XMLHTTP");//IE 상위 버젼
	        } catch (e1) {
	            try {
	                return new ActiveXObject("Microsoft.XMLHTTP");//IE 하위 버젼
	            } catch (e2) {
	                return null;
	            }
	        }
	    } else if (window.XMLHttpRequest) {
	        return new XMLHttpRequest();//IE 이외의 브라우저(FireFox 등)
	    } else {
	        return null;
	    }
	}// XMLHttpRequest 객체 얻기
	
	//print form
	var win=null;
	  function printIt(printThis){
	    win = window.open('','offprint','width=755 height=526');
	    self.focus();
	    win.document.open();
	    win.document.write('<'+'html'+'><'+'head'+'><'+'style'+'>');
	    win.document.write('body{font-size:10px;}p{font-size:10px;}');
	    win.document.write('<'+'/'+'style'+'><'+'/'+'head'+'><'+'body'+'>');
	    win.document.write('<hr style="border: solid 1px grey;"/><br/>');
	    win.document.write(printThis);
	    win.document.write('<br/><hr style="border: solid 1px grey;"/>');
	    win.document.write('<'+'/'+'body'+'><'+'/'+'html'+'>');
	    win.document.close();
	    win.print();
	    win.close();
	  }
	//hwp > form
	
		  function HwpIt(forms_seq){
			  alert('변환 되는 한글 파일은 기본 스타일만 적용 됩니다.');
			  for(var i=1;i<=39;i++)
			  window.open('/change_hwpProc.do?forms_seq='+forms_seq+'&num='+i,''+i+'','width=755 height=526 scrollbars=yes');
			  }
		  
		  function save_hwp(){
			  var list_seq = document.getElementById("num").value;
			  alert('변환 되는 한글 파일은 기본 스타일만 적용 됩니다.');
			  if(list_seq=='1'){
				  $(".first_form").attr("width","640px");
				  $(".first_form").attr("border","1");
				  $(".first_form").attr("cellspacing","0");
				  $(".first_form").attr("bordercolor","black");
				  $(".first_th").attr("width","170px");
			  }else if(list_seq=='44'){
				  $(".first_form").attr("width","640px");
				  $(".first_form").attr("border","1");
				  $(".first_form").attr("cellspacing","0");
				  $(".first_form").attr("bordercolor","black");
				  $(".first_th").attr("width","170px");
				  
				  $(".__se_tbl").attr("width","640px");
				  $(".__se_tbl").attr("border","1");
				  $(".__se_tbl").attr("cellspacing","0");
				  $(".__se_tbl").attr("bordercolor","black");
	
				  $(".__se_tbl td").attr("width","");
				  $(".hong td").attr("width","");
				  $(".test td").attr("width","");
				  $(".hong").attr("width","640px");
				  $(".hong").attr("border","1");
				  $(".hong").attr("cellspacing","0");
				  $(".hong").attr("bordercolor","black");
				  $(".test").attr("width","200px");
				  $(".test2").attr("width","440px");
				  $(".rule1").attr("width","240px");
				  $(".rule2").attr("width","100px");
				  $(".rule3").attr("width","100px");
				  $(".rule4").attr("width","100px");
				  $(".rule5").attr("width","100px");
				  $(".__se_tbl td").attr("bordercolor","black");
				  $(".__se_tbl td").attr("height","25px");
				  
				  $(".hong td").attr("height","25px");
				  $(".hong td").attr("bordercolor","black");
				  
				  $(".test td").attr("height","25px");
				  $(".test td").attr("bordercolor","black");
			  }else{
				  $(".__se_tbl").attr("width","640px");
				  $(".__se_tbl").attr("border","1");
				  $(".__se_tbl").attr("cellspacing","0");
				  $(".__se_tbl").attr("bordercolor","black");
	
				  $(".__se_tbl td").attr("width","");
				  $(".hong td").attr("width","");
				  $(".test td").attr("width","");
				  $(".hong").attr("width","640px");
				  $(".hong").attr("border","1");
				  $(".hong").attr("cellspacing","0");
				  $(".hong").attr("bordercolor","black");
				  $(".test").attr("width","200px");
				  $(".test2").attr("width","440px");
				  $(".rule1").attr("width","240px");
				  $(".rule2").attr("width","100px");
				  $(".rule3").attr("width","100px");
				  $(".rule4").attr("width","100px");
				  $(".rule5").attr("width","100px");
				  $(".__se_tbl td").attr("bordercolor","black");
				  $(".__se_tbl td").attr("height","25px");
				  
				  $(".hong td").attr("height","25px");
				  $(".hong td").attr("bordercolor","black");
				  
				  $(".test td").attr("height","25px");
				  $(".test td").attr("bordercolor","black");
			  }
			  
			  
			  
			  
			  document.hwp.action="/download_hwpProc.do";
			  document.hwp.method="post";
			  document.hwp.contents.value=document.getElementById("form").innerHTML;
			  document.hwp.submit();
		  }
	  //change form
	  function selChange(){
		  var test = $("#check1").val();
			if(test=="hi"){
				if(confirm('조합용 의료기기 서류를 삭제 하시겠습니까?')){
				$("#check1").val("ture");
				$( "#find" ).hide();
				}
			}else{
				if(confirm('조합용 의료기기 서류를 추가 하시겠습니까?')){
				$("#check1").val("hi");
				$( "#find" ).show();
				}
			}	
	    }
	  //select all forms
	  function selectAll(){
		  if(confirm('모든 서류 보기를 선택하시겠습니까? 모든 서류 보기(모두선택)에서는 모든 서류 저장 모든 서류 인쇄를 하실 수 있습니다.')){
			  requestHello(3);
		  }
	  }

	 function help(forms_seq, help_state, otp){
		 window.open('/resources/inc/Help_phpup.jsp?forms_seq='+forms_seq+'&help_state='+help_state+'&otp='+otp,'help','width=600 height=580 scrollbars=yes');		 
	 }
	 
	 function HwpItPart1(forms_seq){
		  alert('변환 되는 한글 파일은 기본 스타일만 적용 됩니다.');
		  for(var i=1;i<=14;i++)
		  window.open('/change_hwpProc.do?forms_seq='+forms_seq+'&num='+i,''+i+'','width=755 height=526 scrollbars=yes');
	  }
	 
	 function HwpItPart2(forms_seq){
		  alert('변환 되는 한글 파일은 기본 스타일만 적용 됩니다.');
		  for(var i=15;i<=38;i++)
		  window.open('/change_hwpProc.do?forms_seq='+forms_seq+'&num='+i,''+i+'','width=755 height=526 scrollbars=yes');
	  }
	 
	 function HwpItPart3(forms_seq){
		  alert('변환 되는 한글 파일은 기본 스타일만 적용 됩니다.');
		  for(var i=39;i<=43;i++)
		  window.open('/change_hwpProc.do?forms_seq='+forms_seq+'&num='+i,''+i+'','width=755 height=526 scrollbars=yes');
	  }
	 function CheckOtp(){
			var otp1=document.getElementById("otp1").value;
			var otp2=document.getElementById("otp2").value;
			if(otp1==otp2){
				//..ok
			}else{
				alert('OTP가 잘못되었습니다.. 메인페이지로 돌아갑니다.');
				location.href='/Main.do';
			}
		}CheckOtp();
	var forms_seq2=document.getElementById("forms_seq").value;
	requestHello('1', 'contents1');
	 
	window.onload=function check(){
		if(forms_seq2==null||forms_seq2==""){
		location.href="/resources/inc/Form_check.jsp";
		}
	 }
	function requestHello(num, contents) {
		if(num==44){
			URL = "/LoadAllContent.do?forms_seq="+forms_seq2+"&num="+num+"&contents_name="+contents;
		}else{
			URL = "/LoadContent.do?forms_seq="+forms_seq2+"&num="+num+"&contents_name="+contents;
		}
	    xhr = getXMLHttpRequest();//XMLHttpRequest 객체 얻기
	    xhr.open("GET", URL, true);//연결
	    xhr.onreadystatechange = function () {//콜백 함수  등록
	        if (xhr.readyState == 4) {//완료
	            if (xhr.status == 200) {//오류없이 OK
	                var str = xhr.responseText;//서버에서 보낸 내용 받기
	                document.getElementById("form").innerHTML = str;//보여주기    
	            } else {
	               // alert("Fail : " + xhr.status);알수 없는 오류로 주석 처리
	            }
	        }
	    }// 응답
	    xhr.send(null);//전송
	}// 서버에 요청
	
	function modifyForms(forms_seq, otp){
		if(confirm('[작성 중] 서류로 변환됩니다. 계속 진행하시겠습니까?')){
			goUrl('/updateStateProc2.do?forms_seq='+forms_seq+'&otp='+otp);
		}
	}
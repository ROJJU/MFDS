			function resetForm(forms_seq, list_seq, contents_name){
				var ck_form = document.getElementById("ck_form").value;
				location.href="/ResetForm.do?forms_seq="+forms_seq+"&list_seq="+list_seq+"&contents_name="+contents_name+"&ck_form="+ck_form;
			}
		
		
			var oEditors = [];
			 nhn.husky.EZCreator.createInIFrame({
			 oAppRef: oEditors,
			 elPlaceHolder: document.getElementById('txtContent'), // html editor가 들어갈 textarea id 입니다.
			 sSkinURI: "/resources/se/SmartEditor2Skin.html"  // html editor가 skin url 입니다.
			 });
			 
			var onWrite = function(list_seq){
			 oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용합니다.
			 var boardWriteForm = document.getElementById("boardWriteForm");
				 if(list_seq==1){
					boardWriteForm.action ="/FirstFormsProc.do";  //저장할 페이지로 쏩니다.
				 }else{
				 	boardWriteForm.action ="/FormsProc.do";  //저장할 페이지로 쏩니다.
				 }
			 boardWriteForm.submit(); 
			};
			
			function loadAndSave(forms_seq, list_seq, contents_name){
				 oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용합니다.
				 var getList_seq = document.getElementById("list_seq").value;
				 var boardWriteForm = document.getElementById("boardWriteForm");
				 //to do -> need change url link
				// var firstFormUrl ='http://192.168.0.31/NewForms.do?forms_seq='+forms_seq+'&list_seq=1&contents_name=1';
				 if(getList_seq==1){
					boardWriteForm.action ="/FirstFormsProc.do";  //저장할 페이지로 쏩니다.
				 }else{
				 	boardWriteForm.action ="/FormsProc.do";  //저장할 페이지로 쏩니다.
				 }
			 document.getElementById('p_url').value="/NewForms.do?forms_seq="+forms_seq+"&list_seq="+list_seq+"&contents_name="+contents_name;
			 boardWriteForm.submit(); 
			}
			 
			var pasteHTML = function(filename){                     //업로드한 사진을 화면에 보여주게 만드는 스크립트입니다.
				var url="('/resources/se/ChangeSize.jsp?filename="+filename+"','sizeChange','width=300 height=420 scrollbars=yes')";
			    var sHTML = '<img src="http://sted.kr/resources/upload/'+filename+'" id="'+filename+'" onclick="javaScript:window.open'+url+';">'; //사진이 저장된 경로입니다.
			    //var sHTML = '<img src="http://192.168.0.31/resources/upload/'+filename+'" id="'+filename+'" onclick="javaScript:window.open'+url+';">'; //사진이 저장된 경로입니다.
			    oEditors.getById["txtContent"].exec("PASTE_HTML", [sHTML]);
			};
			
			
			function exit(){
				localStorage.clear();
				history.go(-1);
			}
			
			function finalSave(forms_seq){
				if(confirm('최종 저장 하시겠습니까 ?')){
					location.href="/updateStateProc.do?forms_seq="+forms_seq;
				}
			}
			
			var forms_seq2=document.getElementById("forms_seq").value;
			window.onload=function check(){
				if(forms_seq2==null||forms_seq2==""){
				location.href="/resources/inc/Form_check.jsp";
				}
			 }
			function checkProcess(){
				if(document.getElementById("ck_form1").value==null||document.getElementById("ck_form1").value==""){
					var ck_form1 =0;
				}else{
					var ck_form1 = document.getElementById("ck_form1").value;
				}
				if(document.getElementById("ck_form2").value==null||document.getElementById("ck_form2").value==""){
					var ck_form2 = 0;	
				}else{
					var ck_form2 = document.getElementById("ck_form2").value;
				}
				if(document.getElementById("ck_form3").value==null||document.getElementById("ck_form3").value==""){
					var ck_form3 =0;
				}else{
					var ck_form3 = document.getElementById("ck_form3").value;
				}
				if(document.getElementById("ck_form4").value==null||document.getElementById("ck_form4").value==""){
					var ck_form4 =0;
				}else{
					var ck_form4 = document.getElementById("ck_form4").value;
				}
				if(document.getElementById("ck_form5").value==null||document.getElementById("ck_form5").value==""){
					var ck_form5 =0;
				}else{
					var ck_form5 = document.getElementById("ck_form5").value;
				}
				if(document.getElementById("ck_form6").value==null||document.getElementById("ck_form6").value==""){
					var ck_form6 =0;
				}else{
					var ck_form6 = document.getElementById("ck_form6").value;
				}
				if(document.getElementById("ck_form7").value==null||document.getElementById("ck_form7").value==""){
					var ck_form7 =0;
				}else{
					var ck_form7 = document.getElementById("ck_form7").value;
				}
				if(document.getElementById("ck_form8").value==null||document.getElementById("ck_form8").value==""){
					var ck_form8 = 0;	
				}else{
					var ck_form8 = document.getElementById("ck_form8").value;
				}
				if(document.getElementById("ck_form9").value==null||document.getElementById("ck_form9").value==""){
					var ck_form9 =0;
				}else{
					var ck_form9 = document.getElementById("ck_form9").value;
				}
				if(document.getElementById("ck_form10").value==null||document.getElementById("ck_form10").value==""){
					var ck_form10 =0;
				}else{
					var ck_form10 = document.getElementById("ck_form10").value;
				}
				if(document.getElementById("ck_form11").value==null||document.getElementById("ck_form11").value==""){
					var ck_form11 =0;
				}else{
					var ck_form11 = document.getElementById("ck_form11").value;
				}
				if(document.getElementById("ck_form12").value==null||document.getElementById("ck_form12").value==""){
					var ck_form12 =0;
				}else{
					var ck_form12 = document.getElementById("ck_form12").value;
				}
				if(document.getElementById("ck_form13").value==null||document.getElementById("ck_form13").value==""){
					var ck_form13 =0;
				}else{
					var ck_form13 = document.getElementById("ck_form13").value;
				}
				if(document.getElementById("ck_form14").value==null||document.getElementById("ck_form14").value==""){
					var ck_form14 = 0;	
				}else{
					var ck_form14 = document.getElementById("ck_form14").value;
				}
				if(document.getElementById("ck_form15").value==null||document.getElementById("ck_form15").value==""){
					var ck_form15 =0;
				}else{
					var ck_form15 = document.getElementById("ck_form15").value;
				}
				if(document.getElementById("ck_form16").value==null||document.getElementById("ck_form16").value==""){
					var ck_form16 =0;
				}else{
					var ck_form16 = document.getElementById("ck_form16").value;
				}
				if(document.getElementById("ck_form17").value==null||document.getElementById("ck_form17").value==""){
					var ck_form17 =0;
				}else{
					var ck_form17 = document.getElementById("ck_form17").value;
				}
				if(document.getElementById("ck_form18").value==null||document.getElementById("ck_form18").value==""){
					var ck_form18 =0;
				}else{
					var ck_form18 = document.getElementById("ck_form18").value;
				}
				if(document.getElementById("ck_form19").value==null||document.getElementById("ck_form19").value==""){
					var ck_form19 =0;
				}else{
					var ck_form19 = document.getElementById("ck_form19").value;
				}
				if(document.getElementById("ck_form20").value==null||document.getElementById("ck_form20").value==""){
					var ck_form20 = 0;	
				}else{
					var ck_form20 = document.getElementById("ck_form20").value;
				}
				if(document.getElementById("ck_form21").value==null||document.getElementById("ck_form21").value==""){
					var ck_form21 =0;
				}else{
					var ck_form21 = document.getElementById("ck_form21").value;
				}
				if(document.getElementById("ck_form22").value==null||document.getElementById("ck_form22").value==""){
					var ck_form22 =0;
				}else{
					var ck_form22 = document.getElementById("ck_form22").value;
				}
				if(document.getElementById("ck_form23").value==null||document.getElementById("ck_form23").value==""){
					var ck_form23 =0;
				}else{
					var ck_form23 = document.getElementById("ck_form23").value;
				}
				if(document.getElementById("ck_form24").value==null||document.getElementById("ck_form24").value==""){
					var ck_form24 =0;
				}else{
					var ck_form24 = document.getElementById("ck_form24").value;
				}
				if(document.getElementById("ck_form25").value==null||document.getElementById("ck_form25").value==""){
					var ck_form25 =0;
				}else{
					var ck_form25 = document.getElementById("ck_form25").value;
				}
				if(document.getElementById("ck_form26").value==null||document.getElementById("ck_form26").value==""){
					var ck_form26 = 0;	
				}else{
					var ck_form26 = document.getElementById("ck_form26").value;
				}
				if(document.getElementById("ck_form27").value==null||document.getElementById("ck_form27").value==""){
					var ck_form27 =0;
				}else{
					var ck_form27 = document.getElementById("ck_form27").value;
				}
				if(document.getElementById("ck_form28").value==null||document.getElementById("ck_form28").value==""){
					var ck_form28 =0;
				}else{
					var ck_form28 = document.getElementById("ck_form28").value;
				}
				if(document.getElementById("ck_form29").value==null||document.getElementById("ck_form29").value==""){
					var ck_form29 =0;
				}else{
					var ck_form29 = document.getElementById("ck_form29").value;
				}
				if(document.getElementById("ck_form30").value==null||document.getElementById("ck_form30").value==""){
					var ck_form30 =0;
				}else{
					var ck_form30 = document.getElementById("ck_form30").value;
				}
				if(document.getElementById("ck_form31").value==null||document.getElementById("ck_form31").value==""){
					var ck_form31 =0;
				}else{
					var ck_form31 = document.getElementById("ck_form31").value;
				}
				if(document.getElementById("ck_form32").value==null||document.getElementById("ck_form32").value==""){
					var ck_form32 =0;
				}else{
					var ck_form32 = document.getElementById("ck_form32").value;
				}
				if(document.getElementById("ck_form33").value==null||document.getElementById("ck_form33").value==""){
					var ck_form33 = 0;
				}else{
					var ck_form33 = document.getElementById("ck_form33").value;
				}
				if(document.getElementById("ck_form34").value==null||document.getElementById("ck_form34").value==""){
					var ck_form34 =0;
				}else{
					var ck_form34 = document.getElementById("ck_form34").value;
				}
				if(document.getElementById("ck_form35").value==null||document.getElementById("ck_form35").value==""){
					var ck_form35 =0;
				}else{
					var ck_form35 = document.getElementById("ck_form35").value;
				}
				if(document.getElementById("ck_form36").value==null||document.getElementById("ck_form36").value==""){
					var ck_form36 =0;
				}else{
					var ck_form36 = document.getElementById("ck_form36").value;
				}
				if(document.getElementById("ck_form37").value==null||document.getElementById("ck_form37").value==""){
					var ck_form37 = 0;
				}else{
					var ck_form37 = document.getElementById("ck_form37").value;
				}
				if(document.getElementById("ck_form38").value==null||document.getElementById("ck_form38").value==""){
					var ck_form38 =0;
				}else{
					var ck_form38 = document.getElementById("ck_form38").value;
				}
				if(document.getElementById("ck_form39").value==null||document.getElementById("ck_form39").value==""){
					var ck_form39 =0;
				}else{
					var ck_form39 = document.getElementById("ck_form39").value;
				}
				if(document.getElementById("ck_form40").value==null||document.getElementById("ck_form40").value==""){
					var ck_form40 = 0;
				}else{
					var ck_form40 = document.getElementById("ck_form40").value;
				}
				if(document.getElementById("ck_form41").value==null||document.getElementById("ck_form41").value==""){
					var ck_form41 =0;
				}else{
					var ck_form41 = document.getElementById("ck_form41").value;
				}
				if(document.getElementById("ck_form42").value==null||document.getElementById("ck_form42").value==""){
					var ck_form42 =0;
				}else{
					var ck_form42 = document.getElementById("ck_form42").value;
				}
				if(document.getElementById("ck_form43").value==null||document.getElementById("ck_form43").value==""){
					var ck_form43 = 0;
				}else{
					var ck_form43 = document.getElementById("ck_form43").value;
				}
				var sum = parseInt(ck_form1)+parseInt(ck_form2)+parseInt(ck_form3)+parseInt(ck_form4)+parseInt(ck_form5)+parseInt(ck_form6)+parseInt(ck_form7)+parseInt(ck_form8)+parseInt(ck_form9)+parseInt(ck_form10)+parseInt(ck_form11)+parseInt(ck_form12)+parseInt(ck_form13)+parseInt(ck_form14)+parseInt(ck_form15)+parseInt(ck_form16)+parseInt(ck_form17)+parseInt(ck_form18)+parseInt(ck_form19)+parseInt(ck_form20)+parseInt(ck_form21)+parseInt(ck_form22)+parseInt(ck_form23)+parseInt(ck_form24)+parseInt(ck_form25)+parseInt(ck_form26)+parseInt(ck_form27)+parseInt(ck_form28)+parseInt(ck_form29)+parseInt(ck_form30)+parseInt(ck_form31)+parseInt(ck_form32)+parseInt(ck_form33)+parseInt(ck_form34)+parseInt(ck_form35)+parseInt(ck_form36)+parseInt(ck_form37)+parseInt(ck_form38)+parseInt(ck_form39)+parseInt(ck_form40)+parseInt(ck_form41)+parseInt(ck_form42)+parseInt(ck_form43);
				var result=sum*2.325581395348837;
				document.getElementById("percent").innerHTML="<a style='color:#ffffff; font-size:8px;''>진행도</a><br><b>"+result.toFixed(0)+"</b>%";
				document.getElementById("progressResult").style.width=result.toFixed(0)+"%";
			}
			checkProcess();
			
			//쿠키값 가져오는 함수
			function notice_getCookie( name ) {
			 var nameOfCookie = name + "=";
			 var x = 0;
			 while ( x <= document.cookie.length ) {
			  var y = (x+nameOfCookie.length);
			   if (document.cookie.substring( x, y ) == nameOfCookie ) {
			    if ((endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
			     endOfCookie = document.cookie.length;
			     return unescape( document.cookie.substring( y, endOfCookie ) );
			    }
			    x = document.cookie.indexOf( " ", x ) + 1;
			    if ( x == 0 )
			    break;
			   }
			   return "";
			  }
			//쿠키 체크로 팝업여부 결정
			if ( notice_getCookie( "pop1" ) != "done" ) {
			//팝업창 경로,위치,크기
				window.open('/resources/inc/forms_popup/forms_notice.jsp','formInfo','width=755 height=526 scrollbars=yes');
			}
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
			  function guide(num){
				  window.open('/resources/inc/forms_popup/Forms_guide.jsp?num='+num,'formGuide','width=755 height=526 scrollbars=yes');
			  }
			  
			  function mixCheck(forms_seq, mix, list_seq, contents_name){
				  location.href='/update_mixProc.do?forms_seq='+forms_seq+'&mix='+mix+'&list_seq='+list_seq+'&contents_name='+contents_name;
			  }
				
			  var countSave=0;
			  function autoSave(){
					var min = parseInt(document.getElementById("min").value);
					var sec = parseInt(document.getElementById("sec").value);
					var list_seq = document.getElementById("list_seq").value;
					var countSec = sec-1;
					var resetSec = "10";
					var resetMin = "0";
					var countMin = min;
					var urlLink ="";
					var userErrMsg = "";
					
					if(list_seq==1){
						urlLink="/FirstFormsProc.do";
						userErrMsg="신청서 자동저장을 완료 하였습니다.";
					}else{
						urlLink="/FormsProc.do";
						userErrMsg ="자동저장중 오류가 발생하였습니다."
					}
					
					if(countSec==-1){
						if(countMin==0){
							var formData = $("#boardWriteForm").serialize();
							var response = $('#condition');
							oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []);
							
							$.ajax({
				                type: "POST",
				                url: urlLink,
				                cache: false,
				                data : formData,
				                success: function(data){
				                	response.text('자동저장을 완료 하였습니다. ['+countSave+'회]');
				                	countSave++;
				                },
				                error: function(errMsg) {
				                	response.text(userErrMsg);
				                }          
				          	});
							
							document.getElementById("sec").value=resetSec;
						}else{
							countMin = min-1;
							document.getElementById("sec").value=resetSec;
							document.getElementById("min").value=countMin;
						}
					}else{
						document.getElementById("sec").value=countSec;
					}
				}
				setInterval("autoSave()", 1000);

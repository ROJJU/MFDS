	$(function(){  /* 비밀번호 동일 확인 */
			$("#pw_2").bind("keyup",function(){
				var pw1 = $("#pw_1").val();
				var pw2 = $("#pw_2").val();
				var txt = "";
				if(pw1 == pw2){
					$("#lbl_pw_check").css("color","blue");
					txt = "두 암호가 일치합니다.";
				}else{
					$("#lbl_pw_check").css("color","red");
					txt = "두 암호가 일치하지 않습니다.";
				}
				$("#lbl_pw_check").text(txt);
			});
			$("#pw_1").bind("keyup",function(){
				var pw1 = $("#pw_1").val();
				var pw2 = $("#pw_2").val();
				var txt = "";
				if(pw1 == pw2){
					$("#lbl_pw_check").css("color","blue");
					txt = "두 암호가 일치합니다.";
				}else{
					$("#lbl_pw_check").css("color","red");
					txt = "두 암호가 일치하지 않습니다.";
				}
				$("#lbl_pw_check").text(txt);
			});
		});
		function isFile(company_file){
			if(company_file!=null){
		    var IMG_FORMAT = "\.\(bmp|gif|jpg|jpeg|png)$";
		    var pattern = new RegExp(IMG_FORMAT, "i");
		 
		    return pattern.test(company_file);
			}
			return true;
		}
		function isKor(object){
			var pattern = new RegExp(/^[ㄱ-ㅣ가-힣]+$/);
			return pattern.test(object);
		}
		function isEng(object){
			var pattern = new RegExp(/^[a-zA-Z]+$/);
			return pattern.test(object);
		}
		function isNum(object){
			var pattern = new RegExp(/^[0-9]+$/);
			return pattern.test(object);
		}
		function isPw(pw1){
			var pattern = new RegExp(/^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[~,!,@,#,$,*,(,),=,+,_,.,|]).*$/);
			return pattern.test(pw1);
		}
		function formCheck(){
			var pw1 = document.join.pw_1.value;
			var pw2 = document.join.pw_2.value;
			var kor_name = document.join.kor_name.value;
			var cha_name = document.join.cha_name.value;
			var eng_name = document.join.eng_name.value;
			var address = document.join.address.value;
			var phone1 = document.join.phone1.value;
			var phone2 = document.join.phone2.value;
			var phone3 = document.join.phone3.value;
			var cell_phone1 = document.join.cell_phone1.value;
			var cell_phone2 = document.join.cell_phone2.value;
			var cell_phone3 = document.join.cell_phone3.value;
			var company_kor = document.join.company_kor.value;
			var company_eng = document.join.company_eng.value;
			var company_address = document.join.company_address.value;
			var company_phone1 = document.join.company_phone1.value;
			var company_phone2 = document.join.company_phone2.value;
			var company_phone3 = document.join.company_phone3.value;
			var company_fax1 = document.join.company_fax1.value;
			var company_fax2 = document.join.company_fax2.value;
			var company_fax3 = document.join.company_fax3.value;
			var ceo = document.join.ceo.value;
			var company_file = document.join.company_file.value;
			var insurance_no = document.join.insurance_no.value;
			var product = document.join.product.value;
			var finance = document.join.finance.value;
			var worker = document.join.worker.value;
			
			if(pw1==null || pw1==""){
				alert('비밀번호를 입력해 주세요.');
				document.join.pw_1.focus();
				return false;
			}else if(pw2==null || pw2==""){
				alert('비밀번호 재확인을 입력해 주세요.');
				document.join.pw_2.focus();
				return false;
			}else if(pw1!=pw2){
				alert('비밀번호를 확인해 주세요.');
				document.join.pw_2.focus();
				return false;
			}else if(!isPw(pw1)){
				alert('8~15자의 영문/숫자/특수문자 혼용만 가능합니다.');
				document.join.pw_2.focus();
				return false;
			}else if(kor_name==null || kor_name==""){
				alert('국문 이름을 입력해 주세요.');
				document.join.kor_name.focus();
				return false;
			}else if(!isKor(kor_name)){
				alert('국문만 입력 가능합니다.(공백없이)');
				document.join.kor_name.focus();
				return false;
			}else if(cha_name==null || cha_name==""){
				alert('한문 이름을 입력해 주세요.');
				document.join.cha_name.focus();
				return false;
			}else if(eng_name==null || eng_name==""){
				alert('영문 이름을 입력해 주세요.');
				document.join.eng_name.focus();
				return false;
			}else if(!isEng(eng_name)){
				alert('영문만 입력 가능합니다.(공백없이)');
				document.join.eng_name.focus();
				return false;
			}else if(address==null || address==""){
				alert('주소를 입력해 주세요.');
				document.join.address.focus();
				return false;
			}else if(phone1==null || phone1==""){
				alert('전화번호를 입력해 주세요.');
				document.join.phone1.focus();
				return false;
			}else if(phone2==null || phone2==""){
				alert('전화번호를 입력해 주세요.');
				document.join.phone2.focus();
				return false;
			}else if(phone3==null || phone3==""){
				alert('전화번호를 입력해 주세요.');
				document.join.phone3.focus();
				return false;
			}else if(cell_phone1==null || cell_phone1==""){
				alert('휴대전화번호를 입력해 주세요.');
				document.join.cell_phone1.focus();
				return false;
			}else if(cell_phone2==null || cell_phone2==""){
				alert('휴대전화번호를 입력해 주세요.');
				document.join.cell_phone2.focus();
				return false;
			}else if(cell_phone3==null || cell_phone3==""){
				alert('휴대전화번호를 입력해 주세요.');
				document.join.cell_phone3.focus();
				return false;
			}else if(!isNum(phone1)){
				alert('숫자만 입력 가능합니다.(공백없이)');
				document.join.phone1.focus();
				return false;
			}else if(!isNum(phone1)){
				alert('숫자만 입력 가능합니다.(공백없이)');
				document.join.phone1.focus();
				return false;
			}else if(!isNum(phone2)){
				alert('숫자만 입력 가능합니다.(공백없이)');
				document.join.phone2.focus();
				return false;
			}else if(!isNum(phone3)){
				alert('숫자만 입력 가능합니다.(공백없이)');
				document.join.phone3.focus();
				return false;
			}else if(!isNum(cell_phone1)){
				alert('숫자만 입력 가능합니다.(공백없이)');
				document.join.cell_phone1.focus();
				return false;
			}else if(!isNum(cell_phone2)){
				alert('숫자만 입력 가능합니다.(공백없이)');
				document.join.cell_phone2.focus();
				return false;
			}else if(!isNum(cell_phone3)){
				alert('숫자만 입력 가능합니다.(공백없이)');
				document.join.cell_phone3.focus();
				return false;
			}else if(company_kor==null || company_kor==""){
				alert('회사 국문명을 입력해 주세요.');
				document.join.company_kor.focus();
				return false;
			}else if(company_eng==null || company_eng==""){
				alert('회사 영문명을 입력해 주세요.');
				document.join.company_eng.focus();
				return false;
			}else if(company_address==null || company_address==""){
				alert('회사 주소를 입력해 주세요.');
				document.join.company_address.focus();
				return false;
			}else if(company_phone1==null || company_phone1==""){
				alert('회사 전화번호 입력해 주세요.');
				document.join.company_phone1.focus();
				return false;
			}else if(company_phone2==null || company_phone2==""){
				alert('회사 전화번호를 입력해 주세요.');
				document.join.company_phone2.focus();
				return false;
			}else if(company_phone3==null || company_phone3==""){
				alert('회사 전화번호를 입력해 주세요.');
				document.join.company_phone3.focus();
				return false;
			}else if(company_fax1==null || company_fax1==""){
				alert('회사 팩스번호를 입력해 주세요.');
				document.join.company_fax1.focus();
				return false;
			}else if(company_fax2==null || company_fax2==""){
				alert('회사 팩스번호를 입력해 주세요.');
				document.join.company_fax2.focus();
				return false;
			}else if(company_fax3==null || company_fax3==""){
				alert('회사 팩스번호를 입력해 주세요.');
				document.join.company_fax3.focus();
				return false;
			}else if(!isNum(company_phone1)){
				alert('숫자만 입력 가능합니다.');
				document.join.company_phone1.focus();
				return false;
			}else if(!isNum(company_phone2)){
				alert('숫자만 입력 가능합니다.');
				document.join.company_phone2.focus();
				return false;
			}else if(!isNum(company_phone3)){
				alert('숫자만 입력 가능합니다.');
				document.join.company_phone3.focus();
				return false;
			}else if(!isNum(company_fax1)){
				alert('숫자만 입력 가능합니다.');
				document.join.company_fax1.focus();
				return false;
			}else if(!isNum(company_fax2)){
				alert('숫자만 입력 가능합니다.');
				document.join.company_fax2.focus();
				return false;
			}else if(ceo==null || ceo==""){
				alert('대표자 성명을 입력해 주세요.');
				document.join.ceo.focus();
				return false;
			}else if(insurance_no==null || insurance_no==""){
			
				alert('고용보험 관리번호를 등록해 주세요.');
				document.join.insurance_no.focus();
				return false;
			}else if(product==null || product==""){
				alert('주요생산품을 등록해 주세요.');
				document.join.product.focus();
				return false;
			}else if(finance==null || finance==""){
				alert('매출액을 등록해 주세요.');
				document.join.finance.focus();
				return false;
			}else if(worker==null || worker==""){
				alert('종업원수를 등록해 주세요.');
				document.join.worker.focus();
				return false;
			}else{
				document.join.submit();	
			}
		}
		
		function getPost(num){
			window.open('/Post.do?num='+num,'getPost','width=501 height=618 scrollbars=yes');
		}
		function copy(){
			var address = document.join.address.value;
			var phone1 = document.join.phone1.value;
			var phone2 = document.join.phone2.value;
			var phone3 = document.join.phone3.value;
			
			document.join.company_address.value=address;
			document.join.company_phone1.value=phone1;
			document.join.company_phone2.value=phone2;
			document.join.company_phone3.value=phone3;
		}
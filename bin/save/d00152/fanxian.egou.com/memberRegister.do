

	


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>�׹��� �� ��д������Ϣ</title>
<link rel="stylesheet" rev="stylesheet" href="http://static.egou.com/p/egou_fuzhu/egou_login/zhc_css.css?2014" type="text/css"/>
<script type="text/javascript" src="/js/j.js"></script>
<script type="text/javascript" src="/js/ajax.js"></script>
<script language="javascript" src="/js/util.js"></script>
<script type="text/javascript" src="/js/front/StringLength.js"></script>
<script type="text/javascript" src="/js/front/base.js"></script>
<script language="javascript" type="text/javascript">
		window.FXURL="";
		var regType="";
		var msgs = {
			userNameMsg: '�����3-12�ֽڣ�����������',
			passwordMsg: '�����6-16���ַ����Ƽ�ʹ��Ӣ����ĸ�����ֻ���ŵ��������',
			repeatPasswordMsg: '��������ٴ����������õ����룬��ȷ����������һ��',
			emailMsg: '���������д��Ч��Email��ַ���Է������һ��û���������',
			checkCodeMsg: '�����������ͼ�п���������'
		};
		
	   var showPwdLenth = false;
	   function isIE(){if(document.all)return true;return false;}
	   
	   function onkey(form){
	   		var evnt=arguments[1]||window.event;
 			var currentKey = evnt.charCode||evnt.keyCode;
		  	if (currentKey==13) { 
		  		check(form);
		  	}
	  	}
	   //�Ƿ��ַ���   
	  function   ischarkey(evn,nkey)     
	  {   
		  if(!evn.altKey&&!evn.ctrlKey&&((nkey>=65&&nkey<=90)||     
			  (nkey>=48&&nkey<=57)||(nkey>=96&&nkey<=105)||nkey==106||     
			  nkey==107||nkey==109||nkey==110||nkey==111||nkey==32||     
			  (nkey>=186&&nkey<=192)||(nkey>=219&&nkey<=222)))   
			  return   true;     
			  else     
			  return   false;     
	  }   
	   
	  	var flagPwd=true;
	   function onkeyPwd(pwd){
	    var evnt=arguments[1]||window.event;
 		var currentKey = evnt.charCode||evnt.keyCode;
	    if(ischarkey(evnt,currentKey)){
	    	var keyChar=String.fromCharCode(currentKey); 
	    	if(/\s/.test(keyChar)){
	 		 flagPwd=false;
	 		 }else if(pwd.value.length>=16){
	 		 flagPwd=false;
	 		 }else{
	 		 flagPwd=true;
	 		 }
			 if(!flagPwd&&!isIE()){
		     evnt.preventDefault();
		     }else if(!flagPwd){
		     evnt.returnValue=false;
		     }
	    }else{
	    }
	   }
	   var flagCheck=true;
	   function onkeyCheck(inputElement){//ʵ�ֿհ��ַ���������
	 		 var evnt=arguments[1]||window.event;
	 		 var currentKey = evnt.charCode||evnt.keyCode;
	 		 if(ischarkey(evnt,currentKey)){
	    	 var keyChar=String.fromCharCode(currentKey); 
	    	 if(/\s/.test(keyChar)){
	 		 flagCheck=false;
	 		 }else{
	 		 flagCheck=true;
	 		 }
			 if(!flagCheck&&!isIE()){
		     evnt.preventDefault();
		     }else if(!flagCheck){
		     evnt.returnValue=false;
		     }
		    }else{
		    }
		 }
		function setFocusStyle(v){
				var obj = document.getElementById(v);
				obj.innerHTML = "";
			}
	 
		 var strLen = new StringLength();
		
		 function focusName(obj){
				obj.style.color='#333';
				var pwdclass =jQuery("#login_name").attr("class");
				if(pwdclass.indexOf("mailbox_text_h")==-1){
					jQuery("#login_name").addClass('mailbox_text_h');
				}
				if(obj.value == "�������û���"){
					obj.value='';
				}
				jQuery('#userNameMsg').hide();
			}
		 
		function checkUserName(obj){
			var userNameMsg = document.getElementById("userNameMsg");
			var username = document.getElementById("username").value;
			var nameclass =jQuery("#login_name").attr("class");
			if(nameclass.indexOf("mailbox_text_h")>0){
				jQuery("#login_name").removeClass('mailbox_text_h');
			}
			if(obj.value == ""){
				obj.style.color='#c1c1c1';
				obj.value='�������û���';
				userNameMsg.innerHTML="�û�������Ϊ��";
				jQuery("#userNameMsg").show();
			}
			var result=true;
			if(''!=username){ 
				var uLength = strLen.getRealLength(username);
				if(uLength>=3 && uLength<13){
				    var filter=/^\s*[A-Za-z0-9\u4e00-\u9fa5_-]{3,12}\s*$/; 
				    if('�������û���'==jQuery('#username').val()){
				    	userNameMsg.innerHTML="�û�������Ϊ��";
						jQuery("#userNameMsg").show();
						result=false;
				    	
				    }else if (!filter.test(username)){
				     userNameMsg.innerHTML="3-12���ַ�(������ĸ�����֡����ġ��»��ߡ��л���)";
		             jQuery("#userNameMsg").show();
					 result=false;
				    }
				    else
				    {
					
					jQuery.ajax({
	 					  type: "POST",
	 					  url: "checkUserName.do",
	 				      data: "username="+username,
	 				      success: function(data){
						var result = data;
				        var userNameMsg = document.getElementById("userNameMsg");
				        if('true'==result){
				        	userNameMsg.innerHTML="";
				        }else{
							userNameMsg.innerHTML="�û�����ռ��";
							jQuery("#userNameMsg").show();				        }
	 					 }
	 				});
					}
				}else{
					userNameMsg.innerHTML="3-12���ַ�(������ĸ�����֡����ġ��»��ߡ��л���)";
					jQuery("#userNameMsg").show();
					result=false;
				}
			}else{
				userNameMsg.innerHTML="�������û���";
				jQuery("#userNameMsg").show();
				result=false;
			}
			return result;
		}
		
		function callback(req){
			return function (){
				if (req.readyState == 4) {
					if (req.status == 200) {
				        var result = req.responseText;
				        var userNameMsg = document.getElementById("userNameMsg");
				        if('true'==result){
				        	userNameMsg.innerHTML="�û�������";
				        	jQuery("#userNameMsg").show();
				        }else{
							userNameMsg.innerHTML="�û����Ѿ���ռ���ˣ��뻻һ��";
							jQuery("#userNameMsg").show();
				        }
				        
			        }
				}
			}
		}
		    //�����У��(��һ��)
    function checkPassword(obj){
    	var pwdclass =jQuery("#login_pwd").attr("class");
		if(pwdclass.indexOf("mailbox_text_h")>0){
			jQuery("#login_pwd").removeClass('mailbox_text_h');
		}
    	var result = true;
    	var password = document.getElementById("password");
    	var passwordMsg = document.getElementById("passwordError");
    	var classname=jQuery("#passwordError").attr("class");
    	if('mail_text_error mail_text_error2 font12 color_99' == classname){
    		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
    		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
    	}
    	//��һ����passwordӦ���㲻�����հ��ַ�
    	if(password.value.search(/\s/g) != -1){
    		passwordMsg.innerHTML = "����ֻ��ʹ��Ӣ����ĸ�����ֺͷ���";
    		var classname=jQuery("#passwordError").attr("class");
        	if('mail_text_error2 font12 color_99' == classname){
        		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
        		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
        	}
    		jQuery("#passwordError").show();
    		result = false;
    	}else{
			//�ڶ�����passwordӦ����"������6��16λ֮��"
	    	if(password.value.length < 6){
	    		if(password.value.length==0){
	    			passwordMsg.innerHTML = "���벻��Ϊ��";
	    			var classname=jQuery("#passwordError").attr("class");
	            	if('mail_text_error2 font12 color_99' == classname){
	            		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
	            		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
	            	}
		    		jQuery("#passwordError").show();
		    		result = false;
	    		}else{
	    		passwordMsg.innerHTML = "����̫�̣�����Ϊ6���ַ�";
	    		var classname=jQuery("#passwordError").attr("class");
	        	if('mail_text_error2 font12 color_99' == classname){
	        		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
	        		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
	        	}
	    		jQuery("#passwordError").show();
	    		result = false;}
	    	}else if(password.value.length > 16){
	    		passwordMsg.innerHTML = "�������Ϊ16���ַ�";
	    		var classname=jQuery("#passwordError").attr("class");
	        	if('mail_text_error2 font12 color_99' == classname){
	        		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
	        		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
	        	}
	    		jQuery("#passwordError").show();
	    		result = false;
	    	}else{
		    	var numberCount = 0,letterCount = 0,bigCount=0,samCount = 1;
		    	var pvalue = password.value;
		    	var username = document.getElementById("username").value;
		    	var email = document.register.email.value;
		    	for(var i=0;i<pvalue.length;i++){
			    	var c = pvalue.charAt(i);
					if(c >= 0 && c <= 9){
						numberCount ++;
					}else if((c >= 'a' && c <= 'z')){
						letterCount ++;
					}else if(c >= 'A' && c <= 'Z'){
						bigCount++;
					}
		    	}
		    	var c0 = pvalue.charAt(0);
		    	for(var i=1;i<pvalue.length;i++){
					if(c0 == pvalue.charAt(i)){
						samCount ++;
					}
		    	}
		    	if(pvalue.length == 6 && (numberCount == 6 || letterCount == 6 || bigCount==6)){
		    		passwordMsg.innerHTML = "���벻��Ϊ������6λ�ַ�������ʹ����ĸ/����/�ַ������";
		    		var classname=jQuery("#passwordError").attr("class");
		        	if('mail_text_error2 font12 color_99' == classname){
		        		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
		        		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
		        	}
		    		jQuery("#passwordError").show();
		    		result = false;
		    	}else if(samCount == pvalue.length){
		    		passwordMsg.innerHTML = "���벻��Ϊ��ͬ�ַ�������ʹ����ĸ/����/�ַ������";
		    		var classname=jQuery("#passwordError").attr("class");
		        	if('mail_text_error2 font12 color_99' == classname){
		        		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
		        		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
		        	}
		    		jQuery("#passwordError").show();
		    		result = false;
				}else if(username == pvalue){
					passwordMsg.innerHTML = "���벻�����û�����ͬ��̫Σ���ˣ��뻻һ������";
					var classname=jQuery("#passwordError").attr("class");
		        	if('mail_text_error2 font12 color_99' == classname){
		        		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
		        		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
		        	}
					jQuery("#passwordError").show();
		    		result = false;
				}else if(email == pvalue){
					passwordMsg.innerHTML = "���벻����������ͬ��̫Σ���ˣ��뻻һ������";
					var classname=jQuery("#passwordError").attr("class");
		        	if('mail_text_error2 font12 color_99' == classname){
		        		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
		        		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
		        	}
					jQuery("#passwordError").show();
		    		result = false;
				}else if(email.substring(0,email.indexOf("@")) == pvalue){
					passwordMsg.innerHTML = "��������ײ³���̫Σ���ˣ��뻻һ������";
					var classname=jQuery("#passwordError").attr("class");
		        	if('mail_text_error2 font12 color_99' == classname){
		        		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
		        		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
		        	}
					jQuery("#passwordError").show();
		    		result = false;
				}else{
		    		//������������Ϲ�����ôpassword�������ǺϷ���.
		    		showPwdLenth=true;
		    		passwordMsg.innerHTML = "";
		    		showPwdSafe();
		    		//���һ�������ȷ�������Ƿ�������һ��
		    	}
	    	}
	    }
    	return result;
    }
    
 //�����У��
    function checkRePassword(){
    	var pwdclass =jQuery("#login_repeatpwd").attr("class");
		if(pwdclass.indexOf("mailbox_text_h")>0){
			jQuery("#login_repeatpwd").removeClass('mailbox_text_h');
		}
    	var result = true;
    	var password = document.getElementById("password");
    	var repassword = document.getElementById("repeatPassword");
    	var repasswordMsg = document.getElementById("repeatPasswordMsg");
    	if(repassword.value==""){
    		repasswordMsg.innerHTML = "ȷ�����벻��Ϊ��";
    		jQuery("#repeatPasswordMsg").show();
    		result = false;
    	}else if(password.value != repassword.value){
    		repasswordMsg.innerHTML = "������������벻һ��";
    		jQuery("#repeatPasswordMsg").show();
    		result = false;
    	}else{
    		jQuery("#repeatPasswordMsg").hide();
    	}
    	return result;
    }
    
    function focusrepeatpwd(obj){
    	obj.style.color='#333';
		var pwdclass =jQuery("#login_repeatpwd").attr("class");
		if(pwdclass.indexOf("mailbox_text_h")==-1){
			jQuery("#login_repeatpwd").addClass('mailbox_text_h');
		}
		jQuery('#repeatPasswordMsg').hide();
	}
	   function isEmail(s)   
				{   
				var emailRegS=/^([a-zA-Z0-9_\-\.\+]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
				if (!emailRegS.exec(s)){
					 return false ;
				}
				return true  ;
				}
	   
	   function isPhone(s){
		   var regMobile = /^0?1[3|4|5|7|8][0-9]\d{8}$/;//�ֻ�
		   if (!regMobile.exec(s)){
				 return false ;
			}
			return true  ;
		}
	   
	   function focusEmail(obj){//login_tc_name
			obj.style.color='#333';
			var mailclass =jQuery("#login_mail").attr("class");
			if(mailclass.indexOf("mailbox_text_h")==-1){
				jQuery("#login_mail").addClass('mailbox_text_h');
			}
			if(obj.value == "����������/�ֻ���")
				obj.value='';
			jQuery('#emailMsg').hide();
		}
	   
		function checkEmail(obj){
			var result = true;
			var email = document.register.email.value;
			var emailMsg = document.getElementById("emailMsg");
			var mailclass =jQuery("#login_mail").attr("class");
			if(mailclass.indexOf("mailbox_text_h")>0){
				jQuery("#login_mail").removeClass('mailbox_text_h');
			}
			if(obj.value == ""){
				obj.style.color='#c1c1c1';
				obj.value='����������/�ֻ���';
				emailMsg.innerHTML = "����/�ֻ���ʽ����ȷ";
				jQuery("#emailMsg").show();
			}
			if(''!=email){ 
				if(isEmail(email)){
					regType='email';
					jQuery("#checkIsPhone").hide();
					var req = getHttpRequest();
					if(req){
						req.onreadystatechange = callbackEmail(req,regType);
						var url = 'checkEmail.do?email='+email+'&type='+regType;
						req.open("POST",url,true );
		 				req.send(null);
					}
				}else if (isPhone(email)){
					regType='phone';
					jQuery("#checkIsPhone").show();jQuery("#checkIsEmail").hide();
					var req = getHttpRequest();
					if(req){
						req.onreadystatechange = callbackEmail(req,regType);
						var url = 'checkEmail.do?email='+email+'&type='+regType;
						req.open("POST",url,true );
		 				req.send(null);
					}
				}else{
					emailMsg.innerHTML = "����/�ֻ���ʽ����ȷ";
					jQuery("#emailMsg").show();
					result=false;
				}
			}else{
				emailMsg.innerHTML = "����/�ֻ�����Ϊ��";
				jQuery("#emailMsg").show();
    			result=false;
			}
			return result;
		}
		function callbackEmail(req,type){
			return function (){
				if (req.readyState == 4) {
					if (req.status == 200) {
				        var result = req.responseText;
				        var emailMsg = document.getElementById("emailMsg");
				        if('true'==result){
				        	emailMsg.innerHTML = "";
				        }else{
				        	if('phone'==type){
				        		emailMsg.innerHTML = '�ֻ������ѱ�ע��';
				        		jQuery("#emailMsg").show();
				        	}else{
				        		emailMsg.innerHTML = '�����Ѿ��ù�';
				        		jQuery("#emailMsg").show();
				        	}
				        }
			        }
				}
			}
		}
	 function focusYzm(obj){
		 obj.style.color='#333';
			var yzmclass =jQuery("#login_yzm").attr("class");
			if(yzmclass.indexOf("mailbox_text_yzm_h")==-1){
				jQuery("#login_yzm").addClass('mailbox_text_yzm_h');
			}
			jQuery('#checkCodeMsg').hide();
		}
	 
	 function focusPyzm(obj){
		 obj.style.color='#333';
			var yzmclass =jQuery("#login_phoneyzm").attr("class");
			if(yzmclass.indexOf("mailbox_text_yzm_h")==-1){
				jQuery("#login_phoneyzm").addClass('mailbox_text_yzm_h');
			}
			jQuery('#checkPhoneCodeMsg').hide();
		}
			//У����֤��
	function validateCode(){
		var yzmclass =jQuery("#login_yzm").attr("class");
		if(yzmclass.indexOf("mailbox_text_yzm_h")>0){
			jQuery("#login_yzm").removeClass('mailbox_text_yzm_h');
		}
		var result = true;
		var checkCode = document.getElementById("randNum");
		var checkCodeMsg = document.getElementById("checkCodeMsg");
		if(checkCode.value == ""){
			checkCodeMsg.innerHTML = "��֤�벻��Ϊ�գ�������";
			jQuery("#checkCodeMsg").show();
			result = false;
		}
		return result;
	}
	
		function refreshCode(){
			var img = document.getElementById("img");
			if(img){
				nowDate = new Date();
				img.src = "/validataImage.do?d="+nowDate.getTime();
			}
		}
		
		//�ύ
	function check(form){
		if(checkAll()){
			disableAll();
			form.action = '/memberRegister.do';
			return true;
		}
		return false;
    }
    
    //У��ȫ���ֶ�
    function checkAll(){
    	var result = true;
    	if(!jQuery("#memorize").attr("checked")){
    		alert("δ�����׹�����ע��Э�飬�޷�ע�ᣡ");
    		result = false;
    	}
    	if(!checkUserName(this))
    		result = false;
   		if(!checkPassword(this))
    		result = false;
    	if(!checkRePassword(this))
    		result = false;
    	if(!checkEmail(this))
    		result = false;
    	if(!validateCode(this))
	    	result = false;	
    	return result;
    }
    
    function changeStatus(){
        
        }
    
    var partner_source_t = "";
    
    var partner_source_type = "";
    
    function sinalogin(){
    	window.location = window.FXURL+"/authorize.do?from=sinawb&source="+encodeURIComponent(window.location.href) + partner_source_t + partner_source_type;
    }
    function taobaologin(){
    	window.location = window.FXURL+"/authorize.do?from=taobao&source="+encodeURIComponent(window.location.href) + partner_source_t + partner_source_type;
    }
    function landinglogin(){
    	window.location = window.FXURL+"/authorize.do?from=alipay&source="+encodeURIComponent(window.location.href) + partner_source_t + partner_source_type;
    }
    function qqlogin(){
    	window.location = window.FXURL+"/authorize.do?from=qq&source="+encodeURIComponent(window.location.href) + partner_source_t + partner_source_type;
    }
    function weiXinLogin(){
  		window.open(window.FXURL+"/authorize.do?from=weixin&bind=1&source="+encodeURI(window.location.href),'_self');
  		return false;
  	}
    var firstShowTips =0;
    function showPwdTips(obj){
    	 obj.style.color='#333';
    	var pwdclass =jQuery("#login_pwd").attr("class");
		if(pwdclass.indexOf("mailbox_text_h")==-1){
			jQuery("#login_pwd").addClass('mailbox_text_h');
		}
    	if(firstShowTips==0){
    	var np_tip = jQuery("#passwordError");
    	np_tip.html("������6-16λ����ַ�(�ַ������֡�����)��ɣ����ִ�Сд");
    	firstShowTips++;
    	var classname=jQuery("#passwordError").attr("class");
    	if('mail_text_error2 font12 color_99' == classname){
    		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
    		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
    	}
    	jQuery("#passwordError").show();
    	}
    }
    function showPwdSafe(){//չʾ�û����밲ȫ������
    	if(showPwdLenth){
    	var objValue = jQuery.trim(jQuery("#password").val());
    	var patrn1 = /^[0-9]{1,20}$/; //������20λ���������
    	var patrn2 =/^[0-9|a-z|A-Z|\\S\\s]{1,20}$/; //����ĸ��������ɣ�������20λ �����ַ�
    	var patrn3 =/^[a-zA-Z]{1,20}$/; //����ĸ������20λ
    	
        if(null!=objValue && objValue.length<6){
        	var classname=jQuery("#passwordError").attr("class");
        	if('mail_text_error font12 color_99' == classname){
        		jQuery("#passwordError").removeClass("mail_text_error font12 color_99");
        		jQuery("#passwordError").addClass("mail_text_error2 font12 color_99");
        	}
        	jQuery("#passwordError").html('<div class="mail_mm"><span class="mail_qd"></span></div><span class="mail_zi">��</span>');//��
        	
        }else{
    	if(patrn1.exec(objValue)){//ȫ������
    		var numberCount = 0,samCount = 1;
        	for(var i=0;i<objValue.length;i++){
    	    	var c = objValue.charAt(i);
    			if(c >= 0 && c <= 9){
    				numberCount ++;
    			}
        	}
        	var c0 = objValue.charAt(0);
        	for(var i=1;i<objValue.length;i++){
    			if(c0 == objValue.charAt(i)){
    				samCount ++;
    			}
        	}
        	if(samCount == objValue.length  ||  numberCount == 6){
        		jQuery("#passwordError").removeClass("mail_text_error font12 color_99");
            	jQuery("#passwordError").addClass("mail_text_error2 font12 color_99");
        		jQuery("#passwordError").html('<div class="mail_mm"><span class="mail_qd"></span></div><span class="mail_zi">��</span>');//�� ��ͬ�ַ�,6λ�����ַ�
        	}else{
        		jQuery("#passwordError").removeClass("mail_text_error font12 color_99");
            	jQuery("#passwordError").addClass("mail_text_error2 font12 color_99");
        		jQuery("#passwordError").html('<div class="mail_mm"><span class="mail_qd1"></span></div><span class="mail_zi1">��</span>');//��
        	}
    		
    	}else if(patrn3.exec(objValue)){//ȫ����ĸ
    		var letterCount=0,bigCount = 0,samCount = 1;
        	for(var i=0;i<objValue.length;i++){
    	    	var c = objValue.charAt(i);
    	    	if(c >= 'a' && c <= 'z'){
    				letterCount ++;
    			}else if(c >= 'A' && c <= 'Z'){
    				bigCount++;
    			}
        	}
        	var c0 = objValue.charAt(0);
        	for(var i=1;i<objValue.length;i++){
    			if(c0 == objValue.charAt(i)){
    				samCount ++;
    			}
        	}
        	if(samCount == objValue.length || letterCount == 6 || bigCount == 6){
        		jQuery("#passwordError").removeClass("mail_text_error font12 color_99");
            	jQuery("#passwordError").addClass("mail_text_error2 font12 color_99");
        		jQuery("#passwordError").html('<div class="mail_mm"><span class="mail_qd"></span></div><span class="mail_zi">��</span>');//�� ��ͬ�ַ�,6λ���ַ�
        	}else{
        		jQuery("#passwordError").removeClass("mail_text_error font12 color_99");
            	jQuery("#passwordError").addClass("mail_text_error2 font12 color_99");
        		jQuery("#passwordError").html('<div class="mail_mm"><span class="mail_qd1"></span></div><span class="mail_zi1">��</span>');//��
        	}
    	}else if(patrn2.exec(objValue)){
    		jQuery("#passwordError").removeClass("mail_text_error font12 color_99");
        	jQuery("#passwordError").addClass("mail_text_error2 font12 color_99");
    		jQuery("#passwordError").html('<div class="mail_mm"><span class="mail_qd2"></span></div><span class="mail_zi2">ǿ</span>');//ǿ
    	}else{
    		jQuery("#passwordError").removeClass("mail_text_error font12 color_99");
        	jQuery("#passwordError").addClass("mail_text_error2 font12 color_99");
    		jQuery("#passwordError").html('<div class="mail_mm"><span class="mail_qd2"></span></div><span class="mail_zi2">ǿ</span>');//ǿ�������ַ�
    	}
        }
    	}
    } 
    
	function sendActPhone() {
		validateCode();
		var phone = document.register.email.value;
		jQuery.ajax({
			type : "POST",
			url  : "/validataImage.do",
			data : {num : jQuery('#randNum').val(),action : "validateCode"},
		    success : function(date){
		    	if("T" == date){
		jQuery.ajax({
			type : "POST",
			url : "/i/phonecode.do",
			data : {
				phoneNum : jQuery.trim(phone),
				type : 'register_phone',
				action: 'send'
			},
			success : function(res) {
				if (res == "1") {
					startTimer();
				} else if (res == "2") {
					alert("���ֻ����Ѿ���֤�����뻻һ���ֻ��ţ�");
				} else if (res == "34") {
					alert("�ϴη�����֤�뻹û�й��ڣ�");
				} else {
					alert("��֤�뷢��ʧ�ܣ�");
				}
			}
		});
		    	}else{
		    		if( document.getElementById("randNum").value!=""){
					document.getElementById("checkCodeMsg").innerHTML = "��֤���������������";
					jQuery("#checkCodeMsg").show();
		    		}
					return false;
		    		
			}
		    }
		});
	}
	
	function startTimer() {
		var leftTime = 90;
		jQuery("#time_left").text(leftTime);
		jQuery("#time_left_span").show();
		jQuery("#getnum_span").hide();
		jQuery("#getnum_span_1").show();
		var resendLeftTime = window.setInterval(function() {
			if (leftTime <= 0) {
				window.clearInterval(resendLeftTime);
				jQuery("#time_left_span").hide();
				jQuery("#getnum_span").show();
				jQuery("#getnum_span_1").hide();
			} else {
				jQuery("#time_left").text(leftTime);
				leftTime--;
			}
		}, 1000);
	}
	
	function hzshow(){
		$("#weibo").show();
		$("#taobao").show();
		$("#zfb").show();
		$("#width_ul").addClass("width_ul");
		$("#hz").addClass("hover");
	}
	function hzhide(){
		$("#weibo").hide();
		$("#taobao").hide();
		$("#zfb").hide();
		if($("#width_ul").attr("class") == 'width_ul'){
			$("#width_ul").removeClass("width_ul");
		}
		if($("#hz").attr("class") == 'hover'){
			$("#hz").removeClass("hover");
		}
	}
	</script>
</head>

<body onload="changeStatus();">
<!--�°�ע�� statr-->
<div class="mailbox_top">
	<div class="mailbox_logo">
   	  <a href="http://www.egou.com" class="mailbox_tp"><img src="http://egouimg1.qutu.com/egou_fuzhu/egou_login/egou_zh_logo.png" /></a>
      <p class="mailbox_p font14">�����׹����˺ţ�<a href="/login.do">������¼</a></p>
    </div>
</div>
<div class="mailbox_zht">
<div class="mailbox_main">
	<form method="post" id="register" action='/memberRegister.do' name="register" onkeydown="onkey(this,event);" onsubmit="return check(document.register);"> 
	<input name="sourcePost" value="" type="hidden"/>
	<input name="vid" type="hidden" value="" />
	<input name="cid" type="hidden" value="" />
	<input name="wid" type="hidden" value="" />
	<input name="vwid" type="hidden" value="" />
	<input name="fbt" type="hidden" value="" />
	<div class="mailbox_m_l">
	 
    	<div class="mailbox_user">
          <span class="mail_zhc font14 color_66">�û�����</span>
            <div class="mailbox_text" id="login_name">	
                <div class="mail_user"><input type="text" class="zhc_text"
                id="username" name="username"  value="" 
                onblur="checkUserName(this);" onfocus="focusName(this);setFocusStyle('userNameMsg');" 
                tabindex="1" onkeydown="onkeyCheck(this,event);"
                onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"  
                /></div>
            </div>
            <div class="mail_error"><div class="mail_text_error font12 color_99" id="userNameMsg" style="display: none;">�û�������ΪΪ�����֣����ܺ����ų��»����⣡</div></div>
            <script language="javascript" type="text/javascript">
              var msg='';
              if(""!=msg){
               	document.getElementById("userNameMsg").innerHTML=msg;
               	jQuery("#userNameMsg").show();
              }
            </script>
        </div>
	
	
        <div class="mailbox_user">
            <span class="mail_zhc font14 color_66">����/�ֻ���</span>
            <div class="mailbox_text" id="login_mail">	
                <div class="mail_user"><input type="text" class="zhc_text" 
                name="email" id="email" 
	                value="" 
	                onfocus="focusEmail(this);setFocusStyle('emailMsg')" onblur="checkEmail(this)"  
	                tabindex="2" onkeydown="onkeyCheck(this,event);" /></div>
            </div>
            <div class="mail_error"><div class="mail_text_error font12 color_99" id="emailMsg" style="display: none;"></div></div>
            <script language="javascript" type="text/javascript">
	              msg='';
	              if(""!=msg){
	              	document.getElementById("emailMsg").innerHTML=msg;
	              	jQuery("#emailMsg").show();
	              }
           </script>
        </div>
     
      
        <div class="mailbox_user">
            <span class="mail_zhc font14 color_66">���룺</span>
            <div class="mailbox_text" id="login_pwd">	
                <div class="mail_user"><input type="password" class="zhc_text" 
                name="password" id="password" 
                	 onKeyUp="showPwdSafe(this);"
                	onfocus="showPwdTips(this);" onblur="checkPassword(this)"
                	tabindex="3"   onkeydown="onkeyPwd(this,event);"
                   onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"   
                   autocomplete=off   ondragenter="javascript:return false;"  onpaste="return false" /></div>
            </div>
          <div class="mail_error"><div class="mail_text_error font12 color_99" style="display: none;" id="passwordError" >
          <script language="javascript" type="text/javascript">
             msg='';
             if(""!=msg){
             	document.getElementById("passwordError").innerHTML=msg;
             	var classname=jQuery("#passwordError").attr("class");
            	if('mail_text_error2 font12 color_99' == classname){
            		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
            		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
            	}
             	jQuery("#passwordError").show();
             }
          </script>
          </div></div>
        </div>
	
	
        <div class="mailbox_user">
            <span class="mail_zhc font14 color_66">ȷ�����룺</span>
            <div class="mailbox_text" id="login_repeatpwd">	
                <div class="mail_user"><input type="password" class="zhc_text" 
                name="repeatPassword" id="repeatPassword" 
                onfocus="focusrepeatpwd(this);setFocusStyle('repeatPasswordMsg');" onblur="checkRePassword();"
                tabindex="4" onkeydown="onkeyPwd(this,event);"
                onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"   autocomplete=off   ondragenter="javascript:return false;"   onpaste="return false"/></div>
            </div>
            <div class="mail_error">
          <div class="mail_text_error font12 color_99"  id="repeatPasswordMsg" style="display: none;">
        		<script language="javascript" type="text/javascript">
	              msg='';
	              if(""!=msg){
	              	document.getElementById("repeatPasswordMsg").innerHTML=msg;
	              	jQuery("#repeatPasswordMsg").show();
	              }
              </script>
          </div>
          </div>
        </div>
	
	
        <div class="mailbox_user">
            <span class="mail_zhc font14 color_66">��֤�룺</span>
				<div class="mailbox_text_yzm" id="login_yzm">	
                <input  type="text" class="zhc_yzm" 
                name="randNum" 
                id="randNum"  
                onfocus="focusYzm(this);setFocusStyle('checkCodeMsg');" onblur="validateCode();"
                tabindex="5" onkeydown="onkeyCheck(this,event);" value=""/>
          		</div>
            	<div class="mail_zhc_yzm"><img src="/validataImage.do" id="img" /></div>
            	<div class="mail_zhc_h"><a  href="javascript:refreshCode();" class="color_66">��һ�ţ�</a></div>
            <div class="mail_error">
                <div class="mail_text_error font12 color_99"  id="checkCodeMsg" style="display: none;"></div></div>
            	<script language="javascript" type="text/javascript">
	              msg='';
	              if(""!=msg){
	              	document.getElementById("checkCodeMsg").innerHTML=msg;
	              	jQuery("#checkCodeMsg").show();
	              }
                </script>
           
        </div>
     
    
        <div class="mailbox_user" style="display: none;" id="checkIsPhone">
            <span class="mail_zhc font14 color_66">�ֻ���֤�룺</span>
				<div class="mailbox_text_yzm" id="login_phoneyzm">	
                <input  type="text" class="zhc_yzm" 
                name="phoneRandNum" 
                id="phoneRandNum"  
                onfocus="focusPyzm(this);setFocusStyle('checkPhoneCodeMsg');" onblur="validateCode();"
                tabindex="5" onkeydown="onkeyCheck(this,event);" value=""/>
          		</div>
            <div class="mobile_zhc_yzm">
            <span id="getnum_span"><a class="font14 color_66 mf_yzm" href="javascript:void(0);" onclick="sendActPhone();">��ѻ�ȡ��֤��</a></span>
            <span id="getnum_span_1" style="display: none">��֤���Ѿ�����</span><span id="time_left_span" style="display: none">(<span id="time_left"></span>����ط�)</span>
            </div>
            <div class="mail_error">
                <div class="mail_text_error font12 color_99"  id="checkPhoneCodeMsg" style="display: none;"></div></div>
            	<script language="javascript" type="text/javascript">
	              msg='';
	              if(""!=msg){
	              	document.getElementById("checkPhoneCodeMsg").innerHTML=msg;
	              	jQuery("#checkPhoneCodeMsg").show();
	              }
                </script>
                
                
        </div>
     
 	<div class="mail_login_jizhu"><input id="memorize" type="checkbox" checked="checked" />�����Ķ���ͬ���׹�����<a href="/html/user_protocol.jsp" target="_blank">ʹ��Э��</a></div>
       <input type="hidden" name="_finish" /> 
        <div class="mailbox_login_ann"><button type="submit" name="Submit" class="font18" tabindex="7" >����ע��</button></div>
        <div class="clear"></div>
  </div>
</form>
  	<div class="mailbox_m_r">
    	<ul id="bigSlideUl">
            <li><img src="http://egouimg1.qutu.com/egou_fuzhu/egou_login/banner1.png" /></li>
            <li><img src="http://egouimg1.qutu.com/egou_fuzhu/egou_login/banner2.png" /></li>
            <li><img src="http://egouimg1.qutu.com/egou_fuzhu/egou_login/banner3.png" /></li>
        </ul>
        <div class="mailbox_qh">
			<ul id="smallSlideUl" class="info_btn">
		  		<li class="info-cur"><span>1</span></li>
				<li><span>2</span></li>
				<li><span>3</span></li>
  			</ul>
        </div>
		<script type="text/javascript" src="http://static.egou.com/p/egou_fuzhu/egou_login/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="http://static.egou.com/p/egou_fuzhu/egou_login/js/zsucai.js"></script>
    </div>
  <div class="clear"></div>
</div> 
<div class="mailbox_fx">
  <div class="mailbox_login_hzname">ʹ�ú�����վ�˺ŵ�¼</div>
	<div class="mailbox_login_hznr" >
     	<ul id="width_ul"  onmouseover="hzshow();" onmouseout="hzhide();">
         	<li class="qq" id="qq" ><a href="javascript:void(0)" onclick="qqlogin()"></a></li>
         	<li class="weibo" id="weibo"><a href="javascript:void(0)" onclick="sinalogin();"></a></li>
         	<li class="taobao" id="taobao"><a href="javascript:void(0)" onclick="taobaologin();"></a></li>
         	<li class="zfb" id="zfb"><a href="javascript:void(0)" onclick="landinglogin();"></a></li>
         	<li class="weixin" id="weixin"><a href="javascript:void(0)" onclick="weiXinLogin();"></a></li>
         </ul>
         <div class="login_jt" ><a href="javascript:void(0);" id="hz"></a></div>
     </div>
</div>
<div class="clear"></div>
</div>
<!-- end -->


<div class="clear"></div>
<link rel="stylesheet" rev="stylesheet" href="http://static.egou.com/egoufooter/footer_all.css" type="text/css"/>
<div class="footer_top">
	<div class="footer_main">
        <ul class="footer_about_list">
            <li>
                <em class="icon_1"></em>
                �й������<br>���ﷵ����
            </li>
            <li>
                <em class="icon_2"></em>
                500��ҵ�<br>�̺������
            </li>
            <li>
                <em class="icon_3"></em>
                3��ѡ��<br>�����̺���
            </li>
            <li>
                <em class="icon_4"></em>
                �ۼƷ���<br>5000���û�
            </li>
            <li>
                <em class="icon_5"></em>
                ȫ����ֵ��<br>����Ʒ����
            </li>
            <li>
                <em class="icon_6"></em>
                7X14Сʱ<br>�ͷ�����
            </li>
            <div class="clear"></div>
        </ul>
    	<div class="clear"></div>
    </div>
</div>
<div class="footer_bottom_bg">
	<div class="footer_main">
    	<ul class="footer_nav">
        	<a target="_blank" rel="nofollow" href="http://fanxian.egou.com/help/aboutegou.html">�����׹�<em></em></a>
        	<a href="http://fanxian.egou.com/help/mediumreported.html" target="_blank">ý�屨��<em></em></a>
        	<a href="http://www.egou.com/map/" target="_blank">�����ȫ<em></em></a>
        	<a href="http://fanxian.egou.com/help/advertisement.html" target="_blank">������<em></em></a>
        	<a href="http://bbs.egou.com/forum-16-1.html" target="_blank">��������<em></em></a>
        	<a href="http://fanxian.egou.com/help/" target="_blank">��վ����<em></em></a>
        	<a href="http://fanxian.egou.com/shop_index.html" target="_blank">���̴�ȫ<em></em></a>
        	<a href="http://fanxian.egou.com/help/sitemap.html" target="_blank">��վ��ͼ<em></em></a>
        	<a href="http://fanxian.egou.com/help/links.html"  target="_blank">��������<em></em></a>
        	<a href="http://fanxian.egou.com/help/contactus.html" target="_blank">��ϵ����<em></em></a>
        	<a href="http://www.egou.com/brand/" target="_blank">Ʒ�ƴ�ȫ</a>
    		<div class="clear"></div>
        </ul>
    	<div class="clear"></div>
        <ul class="footer_logos">
        	<li><a href="https://search.szfw.org/cert/l/CX20130128002166002282" target="_blank"><img src="http://egouimg1.qutu.com/egoufooter/foot_1.png"></a></li>
        	<li><a href="http://about.58.com/fqz/index.html" target="_blank"><img src="http://egouimg1.qutu.com/egoufooter/foot_2.png"></a></li>
        	<li><a href="http://www.cnr.cn/gundong/201106/t20110620_508119107.shtml" target="_blank"><img src="http://egouimg1.qutu.com/egoufooter/foot_3.png"></a></li>
        	<li><a href="http://pub.alimama.com/" target="_blank"><img src="http://egouimg1.qutu.com/egoufooter/foot_4.png"></a></li>
        	<li><a href="http://www.so.com/s?ie=utf-8&src=360sou_home&q=site%3Awww.egou.com" target="_blank"><img src="http://egouimg1.qutu.com/egoufooter/foot_5.png"></a></li>
        </ul>
        <div class="footer_word"><p class="englist_one">Copyright &copy; 2004-2014 by www.egou.com all rights reserved</p><p>�����������˴�ý������޹�˾ ������վ ����������110105000795 ��ICP��10005197��-5</p></div>
    	<div class="clear"></div>
    </div>
</div>
<script language="javascript" type="text/javascript">
		var eid=getUrlValue('eid');
		var yid=getUrlValue('yid');
		var keyword=getUrlValue('keyword');
		var cookieName='';
		var cookieValue='';
		if(keyword!=''){
			if(eid!=''){
				cookieName='EqifaKeyword';
				cookieValue='_eid_'+eid+'_'+keyword;
				cookieCallback(cookieValue);	
				//encoder.encoder(cookieValue,cookieCallback);
			}else if(yid!=''){
				cookieName='YiqifaKeyword';
				cookieValue='_yid_'+yid+'_'+keyword;
				cookieCallback(cookieValue);
				//encoder.encoder(cookieValue,cookieCallback);
			}
		}
		function cookieCallback(msg){
			cookieValue=msg;
			var name=cookieName;
			var value=cookieValue;
			var expires=1;
			var path="/";
			var domain=".egou.com";
			var secure="";
			var today = new Date();    
		  	today.setTime( today.getTime() );    
		   	if (expires) {     
		       expires = expires * 1000 * 60 * 30;     
		   	}
		    var expires_date = new Date( today.getTime() + (expires));   
		    document.cookie = name+'='+(value)+((expires) ? ';expires='+expires_date.toGMTString() : '')+((path) ? ';path=' + path : '') +((domain) ? ';domain=' + domain : '')+((secure) ? ';secure' : ''); 
		}
		
		
		function getUrlValue(qs){
	        var s = location.href;
	        s = s.replace("?","?&").split("&");
	        var re = "";
	        for(i=0;i<s.length;i++){
	           if(s[i].indexOf(qs+"=")==0){
	             re = s[i].replace(qs+"=","");
	             break;
	            }
	        }
	        return re;
		}	 
</script>
<script type="text/javascript" src="http://static.egou.com/b=p/bi/js&f=alltracker.js"></script>
<script type="text/javascript">
var _egtk = _egtk || {"site": 2};
(function() {
 var eg = document.createElement('script'); eg.type = 'text/javascript'; eg.async = true;
 eg.src = 'http://static.egou.com/js/egoutracker.js';
 var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(eg, s);
})();
</script>

	<div style="display:none;visibility: hidden"><script src="http://s22.cnzz.com/stat.php?id=3120101&web_id=3120101" language="JavaScript"></script></div>

<script type="text/javascript">
if(''==jQuery('#username').val()){
				jQuery('#username').val('�������û���');
			}
if(''==jQuery('#email').val()){
	jQuery("#checkIsPhone").hide();
	jQuery('#email').val('����������/�ֻ���');
}else{
	if (isPhone(jQuery('#email').val())){
		jQuery("#checkIsPhone").show();
	}else{
		jQuery("#checkIsPhone").hide();
	}
}
</script>
</body>
</html>

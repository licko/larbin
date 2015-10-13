

	


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>易购网 － 填写基本信息</title>
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
			userNameMsg: '必填项，3-12字节，可以用中文',
			passwordMsg: '必填项，6-16个字符，推荐使用英文字母加数字或符号的组合密码',
			repeatPasswordMsg: '必填项，请再次输入您设置的密码，并确保两次输入一致',
			emailMsg: '必填项，请填写有效的Email地址，以方便您找回用户名和密码',
			checkCodeMsg: '必填项，请输入图中看到的数字'
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
	   //是否字符键   
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
	   function onkeyCheck(inputElement){//实现空白字符不能输入
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
				if(obj.value == "请输入用户名"){
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
				obj.value='请输入用户名';
				userNameMsg.innerHTML="用户名不能为空";
				jQuery("#userNameMsg").show();
			}
			var result=true;
			if(''!=username){ 
				var uLength = strLen.getRealLength(username);
				if(uLength>=3 && uLength<13){
				    var filter=/^\s*[A-Za-z0-9\u4e00-\u9fa5_-]{3,12}\s*$/; 
				    if('请输入用户名'==jQuery('#username').val()){
				    	userNameMsg.innerHTML="用户名不能为空";
						jQuery("#userNameMsg").show();
						result=false;
				    	
				    }else if (!filter.test(username)){
				     userNameMsg.innerHTML="3-12个字符(包括字母、数字、中文、下划线、中划线)";
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
							userNameMsg.innerHTML="用户名被占用";
							jQuery("#userNameMsg").show();				        }
	 					 }
	 				});
					}
				}else{
					userNameMsg.innerHTML="3-12个字符(包括字母、数字、中文、下划线、中划线)";
					jQuery("#userNameMsg").show();
					result=false;
				}
			}else{
				userNameMsg.innerHTML="请输入用户名";
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
				        	userNameMsg.innerHTML="用户名可用";
				        	jQuery("#userNameMsg").show();
				        }else{
							userNameMsg.innerHTML="用户名已经被占用了，请换一个";
							jQuery("#userNameMsg").show();
				        }
				        
			        }
				}
			}
		}
		    //密码的校验(第一个)
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
    	//第一步，password应满足不包含空白字符
    	if(password.value.search(/\s/g) != -1){
    		passwordMsg.innerHTML = "密码只能使用英文字母、数字和符号";
    		var classname=jQuery("#passwordError").attr("class");
        	if('mail_text_error2 font12 color_99' == classname){
        		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
        		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
        	}
    		jQuery("#passwordError").show();
    		result = false;
    	}else{
			//第二步，password应满足"长度在6至16位之间"
	    	if(password.value.length < 6){
	    		if(password.value.length==0){
	    			passwordMsg.innerHTML = "密码不能为空";
	    			var classname=jQuery("#passwordError").attr("class");
	            	if('mail_text_error2 font12 color_99' == classname){
	            		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
	            		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
	            	}
		    		jQuery("#passwordError").show();
		    		result = false;
	    		}else{
	    		passwordMsg.innerHTML = "密码太短，至少为6个字符";
	    		var classname=jQuery("#passwordError").attr("class");
	        	if('mail_text_error2 font12 color_99' == classname){
	        		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
	        		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
	        	}
	    		jQuery("#passwordError").show();
	    		result = false;}
	    	}else if(password.value.length > 16){
	    		passwordMsg.innerHTML = "密码最多为16个字符";
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
		    		passwordMsg.innerHTML = "密码不能为连续的6位字符，建议使用字母/数字/字符的组合";
		    		var classname=jQuery("#passwordError").attr("class");
		        	if('mail_text_error2 font12 color_99' == classname){
		        		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
		        		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
		        	}
		    		jQuery("#passwordError").show();
		    		result = false;
		    	}else if(samCount == pvalue.length){
		    		passwordMsg.innerHTML = "密码不能为相同字符，建议使用字母/数字/字符的组合";
		    		var classname=jQuery("#passwordError").attr("class");
		        	if('mail_text_error2 font12 color_99' == classname){
		        		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
		        		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
		        	}
		    		jQuery("#passwordError").show();
		    		result = false;
				}else if(username == pvalue){
					passwordMsg.innerHTML = "密码不能与用户名相同，太危险了，请换一个密码";
					var classname=jQuery("#passwordError").attr("class");
		        	if('mail_text_error2 font12 color_99' == classname){
		        		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
		        		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
		        	}
					jQuery("#passwordError").show();
		    		result = false;
				}else if(email == pvalue){
					passwordMsg.innerHTML = "密码不能与邮箱相同，太危险了，请换一个密码";
					var classname=jQuery("#passwordError").attr("class");
		        	if('mail_text_error2 font12 color_99' == classname){
		        		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
		        		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
		        	}
					jQuery("#passwordError").show();
		    		result = false;
				}else if(email.substring(0,email.indexOf("@")) == pvalue){
					passwordMsg.innerHTML = "密码很容易猜出，太危险了，请换一个密码";
					var classname=jQuery("#passwordError").attr("class");
		        	if('mail_text_error2 font12 color_99' == classname){
		        		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
		        		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
		        	}
					jQuery("#passwordError").show();
		    		result = false;
				}else{
		    		//如果以上两步合规则，那么password的输入是合法的.
		    		showPwdLenth=true;
		    		passwordMsg.innerHTML = "";
		    		showPwdSafe();
		    		//最后一步，检查确认密码是否与密码一致
		    	}
	    	}
	    }
    	return result;
    }
    
 //密码的校验
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
    		repasswordMsg.innerHTML = "确认密码不能为空";
    		jQuery("#repeatPasswordMsg").show();
    		result = false;
    	}else if(password.value != repassword.value){
    		repasswordMsg.innerHTML = "两次输入的密码不一致";
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
		   var regMobile = /^0?1[3|4|5|7|8][0-9]\d{8}$/;//手机
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
			if(obj.value == "请输入邮箱/手机号")
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
				obj.value='请输入邮箱/手机号';
				emailMsg.innerHTML = "邮箱/手机格式不正确";
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
					emailMsg.innerHTML = "邮箱/手机格式不正确";
					jQuery("#emailMsg").show();
					result=false;
				}
			}else{
				emailMsg.innerHTML = "邮箱/手机不能为空";
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
				        		emailMsg.innerHTML = '手机号码已被注册';
				        		jQuery("#emailMsg").show();
				        	}else{
				        		emailMsg.innerHTML = '邮箱已经用过';
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
			//校验验证码
	function validateCode(){
		var yzmclass =jQuery("#login_yzm").attr("class");
		if(yzmclass.indexOf("mailbox_text_yzm_h")>0){
			jQuery("#login_yzm").removeClass('mailbox_text_yzm_h');
		}
		var result = true;
		var checkCode = document.getElementById("randNum");
		var checkCodeMsg = document.getElementById("checkCodeMsg");
		if(checkCode.value == ""){
			checkCodeMsg.innerHTML = "验证码不能为空，请输入";
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
		
		//提交
	function check(form){
		if(checkAll()){
			disableAll();
			form.action = '/memberRegister.do';
			return true;
		}
		return false;
    }
    
    //校验全部字段
    function checkAll(){
    	var result = true;
    	if(!jQuery("#memorize").attr("checked")){
    		alert("未接受易购网的注册协议，无法注册！");
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
    	np_tip.html("密码由6-16位半角字符(字符、数字、符号)组成，区分大小写");
    	firstShowTips++;
    	var classname=jQuery("#passwordError").attr("class");
    	if('mail_text_error2 font12 color_99' == classname){
    		jQuery("#passwordError").removeClass("mail_text_error2 font12 color_99");
    		jQuery("#passwordError").addClass("mail_text_error font12 color_99");
    	}
    	jQuery("#passwordError").show();
    	}
    }
    function showPwdSafe(){//展示用户密码安全级别条
    	if(showPwdLenth){
    	var objValue = jQuery.trim(jQuery("#password").val());
    	var patrn1 = /^[0-9]{1,20}$/; //不超过20位的数字组合
    	var patrn2 =/^[0-9|a-z|A-Z|\\S\\s]{1,20}$/; //由字母、数字组成，不超过20位 特殊字符
    	var patrn3 =/^[a-zA-Z]{1,20}$/; //由字母不超过20位
    	
        if(null!=objValue && objValue.length<6){
        	var classname=jQuery("#passwordError").attr("class");
        	if('mail_text_error font12 color_99' == classname){
        		jQuery("#passwordError").removeClass("mail_text_error font12 color_99");
        		jQuery("#passwordError").addClass("mail_text_error2 font12 color_99");
        	}
        	jQuery("#passwordError").html('<div class="mail_mm"><span class="mail_qd"></span></div><span class="mail_zi">弱</span>');//弱
        	
        }else{
    	if(patrn1.exec(objValue)){//全是数字
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
        		jQuery("#passwordError").html('<div class="mail_mm"><span class="mail_qd"></span></div><span class="mail_zi">弱</span>');//弱 相同字符,6位连续字符
        	}else{
        		jQuery("#passwordError").removeClass("mail_text_error font12 color_99");
            	jQuery("#passwordError").addClass("mail_text_error2 font12 color_99");
        		jQuery("#passwordError").html('<div class="mail_mm"><span class="mail_qd1"></span></div><span class="mail_zi1">中</span>');//中
        	}
    		
    	}else if(patrn3.exec(objValue)){//全是字母
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
        		jQuery("#passwordError").html('<div class="mail_mm"><span class="mail_qd"></span></div><span class="mail_zi">弱</span>');//弱 相同字符,6位纯字符
        	}else{
        		jQuery("#passwordError").removeClass("mail_text_error font12 color_99");
            	jQuery("#passwordError").addClass("mail_text_error2 font12 color_99");
        		jQuery("#passwordError").html('<div class="mail_mm"><span class="mail_qd1"></span></div><span class="mail_zi1">中</span>');//中
        	}
    	}else if(patrn2.exec(objValue)){
    		jQuery("#passwordError").removeClass("mail_text_error font12 color_99");
        	jQuery("#passwordError").addClass("mail_text_error2 font12 color_99");
    		jQuery("#passwordError").html('<div class="mail_mm"><span class="mail_qd2"></span></div><span class="mail_zi2">强</span>');//强
    	}else{
    		jQuery("#passwordError").removeClass("mail_text_error font12 color_99");
        	jQuery("#passwordError").addClass("mail_text_error2 font12 color_99");
    		jQuery("#passwordError").html('<div class="mail_mm"><span class="mail_qd2"></span></div><span class="mail_zi2">强</span>');//强，特殊字符
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
					alert("该手机号已经验证过，请换一个手机号！");
				} else if (res == "34") {
					alert("上次发送验证码还没有过期！");
				} else {
					alert("验证码发送失败！");
				}
			}
		});
		    	}else{
		    		if( document.getElementById("randNum").value!=""){
					document.getElementById("checkCodeMsg").innerHTML = "验证码错误，请重新输入";
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
<!--新版注册 statr-->
<div class="mailbox_top">
	<div class="mailbox_logo">
   	  <a href="http://www.egou.com" class="mailbox_tp"><img src="http://egouimg1.qutu.com/egou_fuzhu/egou_login/egou_zh_logo.png" /></a>
      <p class="mailbox_p font14">已有易购网账号，<a href="/login.do">立即登录</a></p>
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
          <span class="mail_zhc font14 color_66">用户名：</span>
            <div class="mailbox_text" id="login_name">	
                <div class="mail_user"><input type="text" class="zhc_text"
                id="username" name="username"  value="" 
                onblur="checkUserName(this);" onfocus="focusName(this);setFocusStyle('userNameMsg');" 
                tabindex="1" onkeydown="onkeyCheck(this,event);"
                onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"  
                /></div>
            </div>
            <div class="mail_error"><div class="mail_text_error font12 color_99" id="userNameMsg" style="display: none;">用户名不能为为纯数字，不能含符号除下划线外！</div></div>
            <script language="javascript" type="text/javascript">
              var msg='';
              if(""!=msg){
               	document.getElementById("userNameMsg").innerHTML=msg;
               	jQuery("#userNameMsg").show();
              }
            </script>
        </div>
	
	
        <div class="mailbox_user">
            <span class="mail_zhc font14 color_66">邮箱/手机：</span>
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
            <span class="mail_zhc font14 color_66">密码：</span>
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
            <span class="mail_zhc font14 color_66">确认密码：</span>
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
            <span class="mail_zhc font14 color_66">验证码：</span>
				<div class="mailbox_text_yzm" id="login_yzm">	
                <input  type="text" class="zhc_yzm" 
                name="randNum" 
                id="randNum"  
                onfocus="focusYzm(this);setFocusStyle('checkCodeMsg');" onblur="validateCode();"
                tabindex="5" onkeydown="onkeyCheck(this,event);" value=""/>
          		</div>
            	<div class="mail_zhc_yzm"><img src="/validataImage.do" id="img" /></div>
            	<div class="mail_zhc_h"><a  href="javascript:refreshCode();" class="color_66">换一张？</a></div>
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
            <span class="mail_zhc font14 color_66">手机验证码：</span>
				<div class="mailbox_text_yzm" id="login_phoneyzm">	
                <input  type="text" class="zhc_yzm" 
                name="phoneRandNum" 
                id="phoneRandNum"  
                onfocus="focusPyzm(this);setFocusStyle('checkPhoneCodeMsg');" onblur="validateCode();"
                tabindex="5" onkeydown="onkeyCheck(this,event);" value=""/>
          		</div>
            <div class="mobile_zhc_yzm">
            <span id="getnum_span"><a class="font14 color_66 mf_yzm" href="javascript:void(0);" onclick="sendActPhone();">免费获取验证码</a></span>
            <span id="getnum_span_1" style="display: none">验证码已经发送</span><span id="time_left_span" style="display: none">(<span id="time_left"></span>秒后重发)</span>
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
     
 	<div class="mail_login_jizhu"><input id="memorize" type="checkbox" checked="checked" />我已阅读并同意易购网的<a href="/html/user_protocol.jsp" target="_blank">使用协议</a></div>
       <input type="hidden" name="_finish" /> 
        <div class="mailbox_login_ann"><button type="submit" name="Submit" class="font18" tabindex="7" >立即注册</button></div>
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
  <div class="mailbox_login_hzname">使用合作网站账号登录</div>
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
                中国最早的<br>购物返利网
            </li>
            <li>
                <em class="icon_2"></em>
                500多家电<br>商合作伙伴
            </li>
            <li>
                <em class="icon_3"></em>
                3万精选淘<br>宝店铺合作
            </li>
            <li>
                <em class="icon_4"></em>
                累计服务超<br>5000万用户
            </li>
            <li>
                <em class="icon_5"></em>
                全网超值低<br>价商品保障
            </li>
            <li>
                <em class="icon_6"></em>
                7X14小时<br>客服服务
            </li>
            <div class="clear"></div>
        </ul>
    	<div class="clear"></div>
    </div>
</div>
<div class="footer_bottom_bg">
	<div class="footer_main">
    	<ul class="footer_nav">
        	<a target="_blank" rel="nofollow" href="http://fanxian.egou.com/help/aboutegou.html">关于易购<em></em></a>
        	<a href="http://fanxian.egou.com/help/mediumreported.html" target="_blank">媒体报道<em></em></a>
        	<a href="http://www.egou.com/map/" target="_blank">分类大全<em></em></a>
        	<a href="http://fanxian.egou.com/help/advertisement.html" target="_blank">广告合作<em></em></a>
        	<a href="http://bbs.egou.com/forum-16-1.html" target="_blank">建议疑问<em></em></a>
        	<a href="http://fanxian.egou.com/help/" target="_blank">网站帮助<em></em></a>
        	<a href="http://fanxian.egou.com/shop_index.html" target="_blank">网商大全<em></em></a>
        	<a href="http://fanxian.egou.com/help/sitemap.html" target="_blank">网站地图<em></em></a>
        	<a href="http://fanxian.egou.com/help/links.html"  target="_blank">友情链接<em></em></a>
        	<a href="http://fanxian.egou.com/help/contactus.html" target="_blank">联系我们<em></em></a>
        	<a href="http://www.egou.com/brand/" target="_blank">品牌大全</a>
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
        <div class="footer_word"><p class="englist_one">Copyright &copy; 2004-2014 by www.egou.com all rights reserved</p><p>北京亿玛联盟传媒广告有限公司 旗下网站 京公网安备110105000795 京ICP备10005197号-5</p></div>
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
				jQuery('#username').val('请输入用户名');
			}
if(''==jQuery('#email').val()){
	jQuery("#checkIsPhone").hide();
	jQuery('#email').val('请输入邮箱/手机号');
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

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	��������
</title><meta http-equiv="Content-Type" content="text/html; charset=gb2312" />	
	<link type="text/css" rel="stylesheet" href="http://misc.360buyimg.com/lib/skin/2013/base.css" /><link type="text/css" rel="stylesheet" href="http://misc.360buyimg.com/skin/201006/link.2012.css" />
	<link type="text/css" rel="stylesheet" href="http://misc.360buyimg.com/skin/jquery.validate.1.4.0.css" />
	<script type="text/javascript" src="http://misc.360buyimg.com/lib/js/e/jquery-1.2.6.pack.js"></script>

	
	<script defer="defer" type="text/javascript">
	$(
		function()
		{  
			$("#form1").validate(
				{  
					rules:
					{  
						name:
							{  
								required: true,
								maxlength: 100
							},
						url:
							{  
								required: true,
								url: true,
								maxlength: 100
							},
						email:
							{  
								required: true,
								email: true,
								maxlength: 50
							}
					},
					messages:
					{  
						name:
							{  
								required: "����д��վ���ƣ�������1-100λ�ַ�֮��",
								rangelength: "��վ���Ƴ���ֻ����1-100λ�ַ�֮��"
							},
						url:
							{  
								required: "����д��ַ��������1-100λ�ַ�֮��",
								url: "��ַ��ʽ����ȷ",
								maxlength: "��ַ����ֻ����1-100λ�ַ�֮��"
							},
						email:
							{  
								required: "����д�������䣬������1-50λ�ַ�֮��",
								email: "���������ʽ����ȷ",
								maxlength: "�������䳤��ֻ����1-50λ�ַ�֮��"
							}
					}
				});
		});
	
	function validate()
	{  
		return $("#form1").valid();
	}
	</script>
<script type="text/javascript">
window.pageConfig={
	compatible:true
	
};
</script>
</head>
<body>
	<form name="form1" method="post" action="links.aspx" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE4MjEwMDE2MDJkZEpwjz4y0X8eGwlbCS8VhCQAAAAA" />
</div>

<div>

	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWAgKL18L5CwLc1IWHDaDFod3e/Xb+SeoxNDN3WHIAAAAA" />
</div>
<script type="text/javascript" >
	function saveFriendLink(ob){
		 	$(ob).unbind('click').unbind('onclick').removeAttr('onclick');
			$(ob).attr('value','���ڱ���');		
     		var name = $('#name').val();
     		var url = $('#url').val();
     		var email = $('#email').val();
     		var intro = $('#intro').val();     		
            $.ajax({
            	type : "POST",
            	url:"http://club.jd.com/index.php",
            	data:{
            		mod:"FriendLink",
        			action:"saveLinkAddress",
               	 	name: name,
               	 	url: url,
               	 	email :email,
               	 	intro :intro
            	},
            	dataType:"json",
            	success:function(data) {
            	if(data.status==1) 
            		 {
            		 	alert('�������ύ����ȴ�����Ա��ˣ�');
            		 	$(ob).val('�ύ����');
            		 	$('#name,#url,#email,#intro').val('');
            			$(ob).click(function(){ saveFriendLink(ob); });
            		 }
            	else
            		 {
            		 	alert('�ύʧ�ܣ����Ժ�����');   
            		 	$(ob).val('�ύ����');
            			$(ob).click(function(){ saveFriendLink(ob); });
            		 }
            	},
            	error:function(data){
            		alert('���ã���������ԭ���������ӱ���ʧ��'); 
            		$(ob).val('�ύ����');
         			$(ob).click(function(){ saveFriendLink(ob); });            		 
            	}
           });   
            
   }
</script>
	<script type="text/javascript" src="http://misc.360buyimg.com/lib/js/2012/base-v1.js" charset="gb2312"></script>
<div id="shortcut-2013">
	<div class="w">
		<ul class="fl lh">
			<li class="fore1 ld"><b></b><a href="javascript:addToFavorite()" rel="nofollow">�ղؾ���</a></li>
		</ul>
		<ul class="fr lh">
			<li class="fore1" id="loginbar">���ã���ӭ����������<a href="javascript:login()">[��¼]</a>&nbsp;<a href="javascript:regist()">[���ע��]</a></li>
			<li class="fore2 ld">
				<s></s>
				<a href="http://order.jd.com/center/list.action" rel="nofollow">�ҵĶ���</a>
			</li>
			<li class="fore2-1 ld" id="jd-vip">
				<i></i>
				<s></s>
				<a target="_blank" rel="nofollow" href="http://vip.jd.com">������Ա</a>
			</li>
			<li class="fore3 ld menu" id="app-jd" data-widget="dropdown">
				<s></s><i></i><span class="outline"></span><span class="blank"></span>
				<a href="http://app.jd.com/" target="_blank">�ֻ�����</a><b></b>
			</li>
			<li class="fore4 ld menu" id="biz-service" data-widget="dropdown">
				<s></s>
				<span class="outline"></span>
				<span class="blank"></span>
				�ͻ�����
				<b></b>
				<div class="dd">
					<div><a href="http://help.jd.com/index.html" target="_blank">��������</a></div>
					<div><a href="http://myjd.jd.com/repair/orderlist.action" target="_blank" rel="nofollow">�ۺ����</a></div>
					<div><a href="http://chat.jd.com/jdchat/custom.action" target="_blank" rel="nofollow">���߿ͷ�</a></div>
					<div><a href="http://myjd.jd.com/opinion/orderList.action" target="_blank" rel="nofollow">�������</a></div>
					<div><a href="http://www.jd.com/contact/service.html" target="_blank">�ͷ�����</a></div>
				</div>
			</li>
			<li class="fore5 ld menu" id="site-nav" data-widget="dropdown">
				<s></s>
				<span class="outline"></span>
				<span class="blank"></span>
				��վ����
				<b></b>
				<div class="dd lh">
					<dl class="item fore1">
						<dt>��ɫ��Ŀ</dt>
						<dd>
							<div><a target="_blank" href="http://mobile.jd.com/index.do">����ͨ��</a></div>
							<div><a href="http://jdstar.jd.com/" target="_blank">У԰֮��</a></div>
							<div><a target="_blank" href="http://my.jd.com/personal/guess.html">Ϊ���Ƽ�</a></div>
							<div><a target="_blank" href="http://shipingou.jd.com/">��Ƶ����</a></div>
							<div><a target="_blank" href="http://club.jd.com/">��������</a></div>							
							<div><a target="_blank" href="http://read.jd.com/">���߶���</a></div>
							<div><a target="_blank" href="http://diy.jd.com/">װ����ʦ</a></div>
							<div><a target="_blank" href="http://giftcard.jd.com/market/index.action">����E��</a></div>
							<div><a target="_blank" href="http://channel.jd.com/jiazhuang.html">��װ��</a></div>
							<div><a target="_blank" href="http://dapeigou.jd.com/">���乺</a></div>
							<div><a target="_blank" href="http://xihuan.jd.com/">��ϲ��</a></div>
						</dd>
					</dl>
					<dl class="item fore2">
						<dt>��ҵ����</dt>
						<dd>
							<div><a target="_blank" href="http://giftcard.jd.com/company/index">��ҵ�ͻ�</a></div>
							<div><a target="_blank" href="http://sale.jd.com/p10997.html">�칫ֱͨ��</a></div>
						</dd>
					</dl>
					<dl class="item fore3">
						<dt>������վ</dt>
						<dd>
							<div><a target="_blank" href="http://en.jd.com/">English Site</a></div>
						</dd>
					</dl>
				</div>
			</li>
		</ul>
		<span class="clr"></span>
	</div>
</div><!--shortcut end--> 
	<div id="o-header-2013">
	<div class="w" id="header-2013">
		<div id="logo-2013" class="ld"><a href="http://www.jd.com/" hidefocus="true"><b></b><img src="http://misc.360buyimg.com/lib/img/e/logo-201305.png" width="270" height="60" alt="����"></a></div>
		<!--logo end-->
		<div id="search-2013">
			<div class="i-search ld">
				<ul id="shelper" class="hide">
				</ul>
				<div class="form">
					<input type="text" class="text" accesskey="s" id="key" autocomplete="off" onkeydown="javascript:if(event.keyCode==13) search('key');">
					<input type="button" value="����" class="button" onclick="search('key');return false;">
				</div>
			</div>
			<div id="hotwords"></div>
		</div>
		<!--search end-->
		<div id="my360buy-2013">
			<dl>
				<dt class="ld"><s></s><a href="http://home.jd.com/">�ҵľ���</a><b></b></dt>
				<dd>
					<div class="loading-style1"><b></b>�����У����Ժ�...</div>
				</dd>
			</dl>
		</div>
		<!--my360buy end-->
		<div id="settleup-2013">
			<dl>
				<dt class="ld"><s></s><span class="shopping"><span id="shopping-amount"></span></span><a href="http://cart.jd.com/cart/cart.html" id="settleup-url">ȥ���ﳵ����</a> <b></b> </dt>
				<dd>
					<div class="prompt">
						<div class="loading-style1"><b></b>�����У����Ժ�...</div>
					</div>
				</dd>
			</dl>
		</div>
		<!--settleup end-->
	</div>
	<!--header end-->
	<div class="w">
		<div id="nav-2013">
			<div id="categorys-2013">
				<div class="mt ld">
					<h2><a href="http://www.jd.com/allSort.aspx">ȫ����Ʒ����<b></b></a></h2>
				</div>
				<div id="_JD_ALLSORT" class="mc"></div>
			</div>
			<div id="treasure"></div>
			<ul id="navitems-2013">
				<li class="fore1" id="nav-home"><a href="http://www.jd.com/">��ҳ</a></li>
				<li class="fore2" id="nav-fashion"><a href="http://fashion.jd.com/">��װ��</a></li>
				<li class="fore3" id="nav-chaoshi"><a href="http://channel.jd.com/chaoshi.html">��ʳ</a></li>
				<li class="fore4" id="nav-tuan"><a href="http://tuan.jd.com/" target="_blank">�Ź�</a></li>
				<li class="fore5" id="nav-auction"><a href="http://auction.jd.com/">�ᱦ��</a></li>
				<li class="fore6" id="nav-shan"><a href="http://red.jd.com/">����</a></li>
				<li class="fore7" id="nav-jinrong"><a href="http://jr.jd.com/" target="_blank">����</a></li>
				<li class="fore8" id="nav-smart"><a href="http://smart.jd.com/" target="_blank" >����</a></li>
			</ul>
		</div>
	</div>
</div>
<script type="text/javascript">
(function(){if(pageConfig.navId){var object=document.getElementById("nav-"+pageConfig.navId);if(object)object.className+=" curr";}})();
</script>
<!-- header end -->		<div class="w">
			<div class="link_box">
				<div class="link_top"><div class="top_right"></div><div class="top_left"></div></div>
				<div class="link_content">
					<h3 class="link_tit">
						��������</h3>
					<ul class="link_list">
												<li><a href="http://xuan.jd.com/?jxnei_source=jxnei9" target="_blank">��������� </a></li>
												<li><a href="http://www.jd.hk/" target="_blank">ȫ�� </a></li>
												<li><a href="http://gb.jd.com" target="_blank">�������G </a></li>
												<li><a href="http://xiangqing.jd.com" target="_blank">��������ҳģ���г� </a></li>
												<li><a href="http://www.shangti.cn" target="_blank">������ </a></li>
												<li><a href="http://licai.jd.com/" target="_blank">������� </a></li>
												<li><a href="http://www.aguo.com" target="_blank">��׿���� </a></li>
												<li><a href="http://www.5173.com/" target="_blank">5173��Ϸ������ </a></li>
												<li><a href="http://vip.jd.com" target="_blank">������Ա </a></li>
												<li><a href="http://item.jd.com/11417193.html" target="_blank">���˺�ķ </a></li>
												<li><a href="http://vip.jd.com/" target="_blank">������Ա���ֲ� </a></li>
												<li><a href="http://jandan.net/" target="_blank">�嵰�� </a></li>
												<li><a href="http://www.huihui.cn/" target="_blank">���׻ݻ� </a></li>
												<li><a href="http://www.vancl.com/" target="_blank">���ͳ�Ʒ </a></li>
												<li><a href="http://www.shangti.cn/topic/����" target="_blank">���� </a></li>
												<li><a href="http://www.1hai.cn" target="_blank">һ���⳵ </a></li>
												<li><a href="http://www.wadongxi.com" target="_blank">�ȼ��� </a></li>
												<li><a href="http://xiaozhao.renren.com" target="_blank">Ӧ����У���� </a></li>
												<li><a href="http://www.manxiangyi.com" target="_blank">������ </a></li>
												<li><a href="http://www.yicai.com" target="_blank">һ���� </a></li>
												<li><a href="http://it.cntv.cn" target="_blank">������IT </a></li>
												<li><a href="http://www.100ec.cn" target="_blank">�й����������о����� </a></li>
												<li><a href="http://www.bbtnews.com.cn/" target="_blank">�����̱� </a></li>
												<li><a href="http://en.jd.com" target="_blank">Online Shopping </a></li>
												<li><a href="http://www.zhubajie.com/" target="_blank">��˽������� </a></li>
												<li><a href="http://digi.163.com/" target="_blank">�������� </a></li>
												<li><a href="http://www.vipshop.com" target="_blank">ΨƷ�� </a></li>
												<li><a href="http://www.app111.com" target="_blank">ƻ��԰ </a></li>
												<li><a href="http://www.meilishuo.com" target="_blank">����˵ </a></li>
												<li><a href="http://www.ku6.com" target="_blank">��6�� </a></li>
												<li><a href=" http://www.cjcp.com.cn" target="_blank">�ʾ��� </a></li>
												<li><a href="http://www.xiu.com/" target="_blank">������  </a></li>
												<li><a href="http://t.dianping.com/beijing" target="_blank">�����Ź� </a></li>
												<li><a href="http://www.womai.com/ " target="_blank">�������Ϲ��� </a></li>
												<li><a href="http://www.beareyes.com.cn" target="_blank">С������ </a></li>
												<li><a href="http://www.moonbasa.com" target="_blank">�ΰ�ɯ </a></li>
												<li><a href="http://www.xinnet.com/index.html" target="_blank">�������� </a></li>
												<li><a href="http://www.265.com/" target="_blank">�ȸ�265���� </a></li>
												<li><a href="http://www.chinaz.com" target="_blank">վ��֮�� </a></li>
												<li><a href="http://re.jd.com/" target="_blank">�������� </a></li>
												<li><a href="http://www.wangyin.com" target="_blank">����Ǯ�� </a></li>
												<li><a href="http://m.mdpda.com" target="_blank">��׿��� </a></li>
												<li><a href="http://www.tangdou.com" target="_blank">�Ƕ��� </a></li>
												<li><a href="http://luopan.jd.com" target="_blank">������������ </a></li>
												<li><a href="http://smarthome.jd.com/" target="_blank">���������� </a></li>
												<li><a href="http://www.pps.tv" target="_blank">PPSӰ�� </a></li>
												<li><a href="http://www.dadou.com" target="_blank">���� </a></li>
												<li><a href="http://wiki.jd.com/" target="_blank">����֪ʶ�� </a></li>
												<li><a href="http://www.smzdm.com" target="_blank">ʲôֵ���� </a></li>
												<li><a href="http://creditcard.ecitic.com/" target="_blank">�����������ÿ����� </a></li>
												<li><a href="http://www.k369.com/" target="_blank">��Ƽ������  </a></li>
												<li><a href="http://www.paidai.com/" target="_blank">�������� </a></li>
												<li><a href="http://www.tg.com.cn/" target="_blank">��ҼҾ��� </a></li>
												<li><a href="http://www.rayi.cn" target="_blank">������ </a></li>
												<li><a href="http://m.bqruan.com" target="_blank">�ֻ���� </a></li>
												<li><a href="http://www.hiapk.com" target="_blank">��׿��  </a></li>
												<li><a href="http://sj.91.com  " target="_blank">91�ֻ����� </a></li>
												<li><a href="http://www.jiatx.com/" target="_blank">�����¼Ҿ��̳� </a></li>
												<li><a href="http://www.letao.com" target="_blank">������ </a></li>
												<li><a href="http://hao.360.cn" target="_blank">360��ַ���� </a></li>
												<li><a href="http://www.jd-ex.com/" target="_blank">������� </a></li>
												<li><a href="http://yao.jd.com" target="_blank">����ҽҩ�� </a></li>
												<li><a href="http://jae.jd.com" target="_blank">�������� </a></li>
												<li><a href="http://www.mfrbee.com" target="_blank">������-��ó </a></li>
												<li><a href="http://www.ludashi.com" target="_blank">³��ʦ���� </a></li>
												<li><a href="http://www.damai.cn" target="_blank">������ </a></li>
												<li><a href="http://www.lefeng.com" target="_blank">�ַ��� </a></li>
												<li><a href="http://movie.jd.com/m_5626" target="_blank">Сʱ����Ӱ </a></li>
												<li><a href="http://www.sowu.com" target="_blank">������ </a></li>
												<li><a href="http://www.84ju.com/" target="_blank">���ľ� </a></li>
												<li><a href="http://www.popwan.com" target="_blank">��������ҳ��Ϸ </a></li>
												<li><a href="http://www.doulai.com" target="_blank">������ҳ��Ϸ </a></li>
												<li><a href="http://web.ali213.net/" target="_blank">������ҳ��Ϸ </a></li>
												<li><a href="http://www.jingpaidang.com" target="_blank">���ĵ� </a></li>
												<li><a href="http://movie.jd.com/c_620" target="_blank">����Ӱ�� </a></li>
												<li><a href="http://www.dotamingxingdian.com/" target="_blank">��Ʒ��˾ </a></li>
												<li><a href="http://www.centaur.cn" target="_blank">E�걦 </a></li>
												<li><a href="http://www.jumei.com/" target="_blank">������Ʒ�Ź� </a></li>
												<li><a href="http://www.tootoo.cn/" target="_blank">�������� </a></li>
												<li><a href="http://jsningyi.com/" target="_blank">�����׽� </a></li>
												<li><a href="http://www.tuan800.com" target="_blank">��800 </a></li>
												<li><a href="http://www.yiguo.com" target="_blank">�׹���  </a></li>
												<li><a href="http://www.ba-li.com/ " target="_blank">��������  </a></li>
												<li><a href="http://www.tian10.com" target="_blank">��Ÿ�ֱ� </a></li>
												<li><a href="http://www.hljsenwang.com/" target="_blank">���� </a></li>
												<li><a href="http://www.xlkorganic.com/" target="_blank">��̬С�� </a></li>
												<li><a href="http://www.dearkiss.com.cn/" target="_blank">�ٶ���˹ </a></li>
												<li><a href="http://www.coolpad.cn" target="_blank">����  </a></li>
												<li><a href="http://twabc.com.cn/" target="_blank">ABC </a></li>
												<li><a href="http://www.openedmall.com/" target="_blank">�������� </a></li>
												<li><a href="http://www.yunfuxie.cn" target="_blank">ӭ�� </a></li>
												<li><a href="http://yueji.com" target="_blank">�ü� </a></li>
												<li><a href="http://www.crc1964.com/" target="_blank">�й���Ƭ���ݹ�˾ </a></li>
												<li><a href="http://www.sodisc.com" target="_blank">���ǵ�������������������ι�˾ </a></li>
												<li><a href="http://www.caphbook.com/" target="_blank">�й�������� </a></li>
												<li><a href="http://www.softabc.com" target="_blank">�������ն����Ƽ����޹�˾ </a></li>
												<li><a href="http://www.shuren-soft.com/" target="_blank">����������������Ƽ����޹�˾ </a></li>
												<li><a href="http://www.shuhai.com/" target="_blank">�麣С˵�� </a></li>
												<li><a href="http://www.hinabook.com/" target="_blank">���˳��湫˾ </a></li>
												<li><a href="http://www.fmx.cn/" target="_blank">������С˵�� </a></li>
											</ul>

					<div class="Pagination">
						<a class='current'>1</a> <a href="http://club.jd.com/links.aspx?page=2"  >2</a><a class="next" href="http://club.jd.com/links.aspx?page=2"  >��һҳ<b></b></a>
					</div>
				</div>
				<div class="link_bottom"><div class="bottom_right"></div><div class="bottom_left"></div></div>
			</div>
			<div class="link_box_a">
				<div class="link_top"><div class="top_right"></div><div class="top_left"></div></div>
				<div class="link_content">
					<h3 class="link_tit">

						������������</h3>
					<ul class="link_step">
						<li class="link_step_tit">���벽�裺</li>
						<li>
							<div class="float_Left">
								1.</div>
							<div class="margin_l_12">

								�����ڹ���վ���þ����������������ӣ�<br />
								�������֣��������ӵ�ַ��<a href="http://www.jd.com" target="_blank">http://www.jd.com</a></div>
						</li>
						<li>2.�������Ӻ������Ҳ���д������Ϣ������ֻ�������������������ӡ�</li>
						<li>
							<div class="float_Left">
								3.</div>

							<div class="margin_l_12">
								�Ѿ���ͨ��վ�������������ݽ��������ϱ�վ��������Ҫ�����վ������������Ա��˺󣬿�����ʾ�ڴ���������ҳ�档</div>
						</li>
						<li>
							<div class="float_Left">
								4.</div>

							<div class="margin_l_12">
								��ͨ���Ҳ��ύ���룬ע���������������롣</div>
						</li>
					</ul>
					<table cellpadding="0" cellspacing="0" class="link_table" width="309">
						<tr>
							<td height="29" colspan="2" valign="top" class="link_step_tit">
								������Ϣ</td>

						</tr>
						<tr>
							<td height="29">
								��վ���ƣ�
							</td>
							<td height="29">
								<input id="name" name="name" type="text" class="w247" /></td>
						</tr>
						<tr>

							<td height="29">
								��&nbsp;&nbsp;&nbsp;&nbsp;ַ��
							</td>
							<td height="29">
								<input id="url" name="url" type="text" class="w247" value="http://" /></td>
						</tr>
						<tr>
							<td height="35">
								�������䣺
							</td>

							<td height="29">
								<input id="email" name="email" type="text" class="w247" /></td>
						</tr>
						<tr>
							<td width="61" height="29" valign="top">
								��վ���ܣ�
							</td>
							<td width="348" valign="top">
								<textarea id="intro" name="intro" cols="" rows="" class="w247h60"></textarea></td>

						</tr>
						<tr>
							<td height="45" colspan="2" align="center" valign="middle">
								<input type="button" name="bttSubmit" value="�ύ����" onclick="saveFriendLink(this)" id="bttSubmit" class="link_button" />
							</td>
						</tr>
					</table>
				</div>
			<div class="link_bottom"><div class="bottom_right"></div><div class="bottom_left"></div></div>

			</div>
		</div>
<!-- footer begin--> 
<div class="w">
	<div id="service-2013">
		<dl class="fore1">
			<dt><b></b><strong>����ָ��</strong></dt>
			<dd>
				<div><a href="http://help.jd.com/user/issue/list-29.html" target="_blank" rel="nofollow">��������</a></div>
				<div><a href="http://help.jd.com/user/issue/list-151.html" target="_blank" rel="nofollow">��Ա����</a></div>
				<div><a href="http://help.jd.com/user/issue/list-297.html" target="_blank" rel="nofollow">��������/�Ź�</a></div>
				<div><a href="http://help.jd.com/user/issue.html" target="_blank" rel="nofollow">��������</a></div>
				<div><a href="http://help.jd.com/user/issue/list-136.html" target="_blank" rel="nofollow">��ҵ�</a></div>
				<div><a href="http://help.jd.com/user/index.html" target="_blank" rel="nofollow">��ϵ�ͷ�</a></div>
			</dd>
		</dl>
		<dl class="fore2">		
			<dt><b></b><strong>���ͷ�ʽ</strong></dt>
			<dd>
				<div><a href="http://help.jd.com/user/issue/list-81-100.html" target="_blank" rel="nofollow">��������</a></div>
				<div><a href="http://help.jd.com/user/issue/list-81.html" target="_blank" rel="nofollow">211��ʱ��</a></div>
				<div><a href="http://help.jd.com/user/issue/103-983.html" target="_blank" rel="nofollow">���ͷ����ѯ</a></div>
				<div><a href="http://help.jd.com/user/issue/109-188.html" target="_blank" rel="nofollow">���ͷ���ȡ��׼</a></div>
				<div><a href="http://en.jd.com/chinese.html" target="_blank">��������</a></div>
			</dd>
		</dl>
		<dl class="fore3">
			<dt><b></b><strong>֧����ʽ</strong></dt>
			<dd>
				<div><a href="http://help.jd.com/user/issue/list-172.html" target="_blank" rel="nofollow">��������</a></div>
				<div><a href="http://help.jd.com/user/issue/list-173.html" target="_blank" rel="nofollow">����֧��</a></div>
				<div><a href="http://help.jd.com/user/issue/list-176.html" target="_blank" rel="nofollow">���ڸ���</a></div>
				<div><a href="http://help.jd.com/user/issue/list-174.html" target="_blank" rel="nofollow">�ʾֻ��</a></div>
				<div><a href="http://help.jd.com/user/issue/list-175.html" target="_blank" rel="nofollow">��˾ת��</a></div>
			</dd>
		</dl>
		<dl class="fore4">		
			<dt><b></b><strong>�ۺ����</strong></dt>
			<dd>
				<div><a href="http://help.jd.com/user/issue/321-981.html" target="_blank" rel="nofollow">�ۺ�����</a></div>
				<div><a href="http://help.jd.com/user/issue/list-132.html" target="_blank" rel="nofollow">�۸񱣻�</a></div>
				<div><a href="http://help.jd.com/user/issue/130-978.html" target="_blank" rel="nofollow">�˿�˵��</a></div>
				<div><a href="http://myjd.jd.com/repair/repairs.action" target="_blank" rel="nofollow">����/�˻���</a></div>
				<div><a href="http://help.jd.com/user/issue/list-50.html" target="_blank" rel="nofollow">ȡ������</a></div>
			</dd>
		</dl>
		<dl class="fore5">
			<dt><b></b><strong>��ɫ����</strong></dt>
			<dd>			
				<div><a href="http://help.jd.com/user/issue/list-133.html" target="_blank">�ᱦ��</a></div>
				<div><a href="http://help.jd.com/user/issue/list-134.html" target="_blank">DIYװ��</a></div>
				<div><a href="http://fuwu.jd.com/" target="_blank" rel="nofollow">�ӱ�����</a></div>
				<div><a href="http://giftcard.jd.com/market/index.action" target="_blank" rel="nofollow">����E��</a></div>
				<div><a href="http://mobile.jd.com/" target="_blank" rel="nofollow">����ͨ��</a></div>
			</dd>
		</dl>
		<span class="clr"></span>
	</div>
</div><!-- service end --><div class="w">
	<div id="footer-2013">
		<div class="links"><a href="http://www.jd.com/intro/about.aspx" target="_blank" rel="nofollow">��������</a>|<a href="http://www.jd.com/contact/" target="_blank" rel="nofollow">��ϵ����</a>|<a href="http://www.jd.com/contact/joinin.aspx" target="_blank" rel="nofollow">�̼���פ</a>|<a href="http://jzt.jd.com" target="_blank" rel="nofollow">Ӫ������</a>|<a href="http://app.jd.com/" target="_blank" rel="nofollow">�ֻ�����</a>|<a href="http://club.jd.com/links.aspx" target="_blank">��������</a>|<a href="http://media.jd.com/" target="_blank">��������</a>|<a target="_blank" href="http://club.jd.com/">��������</a>|<a target="_blank" href="http://gongyi.jd.com">��������</a></div>
		<div class="copyright">�����й����ֳ����־ֱ������110105014669&nbsp;&nbsp;|&nbsp;&nbsp;��ICP֤070359��&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://img14.360buyimg.com/da/jfs/t256/349/769670066/270505/3b03e0bb/53f16c24N7c04d9e9.jpg" target="_blank">������ҩƷ��Ϣ�����ʸ�֤���(��)-��Ӫ��-2014-0008</a><br><a target="_blank" href="http://misc.360buyimg.com/skin/df/i/com/f_music.jpg" rel="nofollow">������Ʒ��Ӫ���֤������005��</a>&nbsp;&nbsp;|&nbsp;&nbsp;�����ﾭӪ���֤����³���(��)���ֵ�N-012��&nbsp;&nbsp;|&nbsp;&nbsp;�������������֤����³���֤(��)��150��<br><a target="_blank" href="http://misc.360buyimg.com/wz/wlwhjyxkz.jpg">�����Ļ���Ӫ���֤������[2014]2148-348��</a>&nbsp;&nbsp;�����������������ٱ��绰��4006561155&nbsp;&nbsp;Copyright&nbsp;&copy;&nbsp;2004-2015&nbsp;&nbsp;����JD.com&nbsp;��Ȩ����<br />����������վ��<a target="_blank" href="http://en.jd.com/">English Site</a></div>
		<div class="authentication"><a href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202007080200026" target="_blank" rel="nofollow"><img data-lazyload="http://img10.360buyimg.com/da/20110329/108_40_zZOKnl.gif" width="108" height="40" alt="��Ӫ����վ��������"></a><script type="text/JavaScript">function CNNIC_change(eleId){var str= document.getElementById(eleId).href;var str1 =str.substring(0,(str.length-6));str1+=CNNIC_RndNum(6); document.getElementById(eleId).href=str1;}function CNNIC_RndNum(k){var rnd=""; for (var i=0;i < k;i++) rnd+=Math.floor(Math.random()*10); return rnd;}</script><a href="https://ss.knet.cn/verifyseal.dll?sn=2008070300100000031&ct=df&pa=294005" tabindex="-1" id="urlknet" target="_blank" rel="nofollow"><img alt="&#x53EF;&#x4FE1;&#x7F51;&#x7AD9;" name="CNNIC_seal" border="true" data-lazyload="http://img11.360buyimg.com/da/g8/M03/0C/0E/rBEHaFCFC5QIAAAAAAASVQX9RAYAACb2wHUV1kAABJt760.gif" width="108" height="40" oncontextmenu="return false;" onclick="CNNIC_change('urlknet')" /></a><a href="http://www.bj.cyberpolice.cn/index.do" target="_blank" rel="nofollow"><img data-lazyload="http://img12.360buyimg.com/da/g5/M02/0D/17/rBEIDE_nzcIIAAAAAAB30mYXo5QAACrhACj22IAAHfq378.png" width="108" height="40" alt="�������羯��"></a><a href="https://search.szfw.org/cert/l/CX20120111001803001836" target="_blank" rel="nofollow"><img data-lazyload="http://img13.360buyimg.com/da/20120221/112_40_WvArIl.png" width="112" height="40"></a></div>
	</div>
</div><!-- footer end --><!-- footer end--> 
	 <script type="text/javascript" src="http://misc.360buyimg.com/lib/js/2012/lib-v1.js"></script>
	 <script type="text/javascript" src="http://www.jd.com/script/jquery-plugins-vs2.js"></script>
     <script type="text/javascript" src="http://d.jd.com/hotwords/get?position=A-index-001"></script>
<script type="text/javascript" src="http://wl.jd.com/wl.js"></script>
</form>
</body>
</html>

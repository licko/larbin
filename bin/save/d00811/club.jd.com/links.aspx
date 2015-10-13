<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	友情链接
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
								required: "请填写网站名称，长度在1-100位字符之间",
								rangelength: "网站名称长度只能在1-100位字符之间"
							},
						url:
							{  
								required: "请填写网址，长度在1-100位字符之间",
								url: "网址格式不正确",
								maxlength: "网址长度只能在1-100位字符之间"
							},
						email:
							{  
								required: "请填写电子邮箱，长度在1-50位字符之间",
								email: "电子邮箱格式不正确",
								maxlength: "电子邮箱长度只能在1-50位字符之间"
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
			$(ob).attr('value','正在保存');		
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
            		 	alert('申请已提交，请等待管理员审核！');
            		 	$(ob).val('提交申请');
            		 	$('#name,#url,#email,#intro').val('');
            			$(ob).click(function(){ saveFriendLink(ob); });
            		 }
            	else
            		 {
            		 	alert('提交失败，请稍后重试');   
            		 	$(ob).val('提交申请');
            			$(ob).click(function(){ saveFriendLink(ob); });
            		 }
            	},
            	error:function(data){
            		alert('您好，由于网络原因，友情链接保存失败'); 
            		$(ob).val('提交申请');
         			$(ob).click(function(){ saveFriendLink(ob); });            		 
            	}
           });   
            
   }
</script>
	<script type="text/javascript" src="http://misc.360buyimg.com/lib/js/2012/base-v1.js" charset="gb2312"></script>
<div id="shortcut-2013">
	<div class="w">
		<ul class="fl lh">
			<li class="fore1 ld"><b></b><a href="javascript:addToFavorite()" rel="nofollow">收藏京东</a></li>
		</ul>
		<ul class="fr lh">
			<li class="fore1" id="loginbar">您好！欢迎来到京东！<a href="javascript:login()">[登录]</a>&nbsp;<a href="javascript:regist()">[免费注册]</a></li>
			<li class="fore2 ld">
				<s></s>
				<a href="http://order.jd.com/center/list.action" rel="nofollow">我的订单</a>
			</li>
			<li class="fore2-1 ld" id="jd-vip">
				<i></i>
				<s></s>
				<a target="_blank" rel="nofollow" href="http://vip.jd.com">京东会员</a>
			</li>
			<li class="fore3 ld menu" id="app-jd" data-widget="dropdown">
				<s></s><i></i><span class="outline"></span><span class="blank"></span>
				<a href="http://app.jd.com/" target="_blank">手机京东</a><b></b>
			</li>
			<li class="fore4 ld menu" id="biz-service" data-widget="dropdown">
				<s></s>
				<span class="outline"></span>
				<span class="blank"></span>
				客户服务
				<b></b>
				<div class="dd">
					<div><a href="http://help.jd.com/index.html" target="_blank">帮助中心</a></div>
					<div><a href="http://myjd.jd.com/repair/orderlist.action" target="_blank" rel="nofollow">售后服务</a></div>
					<div><a href="http://chat.jd.com/jdchat/custom.action" target="_blank" rel="nofollow">在线客服</a></div>
					<div><a href="http://myjd.jd.com/opinion/orderList.action" target="_blank" rel="nofollow">意见建议</a></div>
					<div><a href="http://www.jd.com/contact/service.html" target="_blank">客服邮箱</a></div>
				</div>
			</li>
			<li class="fore5 ld menu" id="site-nav" data-widget="dropdown">
				<s></s>
				<span class="outline"></span>
				<span class="blank"></span>
				网站导航
				<b></b>
				<div class="dd lh">
					<dl class="item fore1">
						<dt>特色栏目</dt>
						<dd>
							<div><a target="_blank" href="http://mobile.jd.com/index.do">京东通信</a></div>
							<div><a href="http://jdstar.jd.com/" target="_blank">校园之星</a></div>
							<div><a target="_blank" href="http://my.jd.com/personal/guess.html">为我推荐</a></div>
							<div><a target="_blank" href="http://shipingou.jd.com/">视频购物</a></div>
							<div><a target="_blank" href="http://club.jd.com/">京东社区</a></div>							
							<div><a target="_blank" href="http://read.jd.com/">在线读书</a></div>
							<div><a target="_blank" href="http://diy.jd.com/">装机大师</a></div>
							<div><a target="_blank" href="http://giftcard.jd.com/market/index.action">京东E卡</a></div>
							<div><a target="_blank" href="http://channel.jd.com/jiazhuang.html">家装城</a></div>
							<div><a target="_blank" href="http://dapeigou.jd.com/">搭配购</a></div>
							<div><a target="_blank" href="http://xihuan.jd.com/">我喜欢</a></div>
						</dd>
					</dl>
					<dl class="item fore2">
						<dt>企业服务</dt>
						<dd>
							<div><a target="_blank" href="http://giftcard.jd.com/company/index">企业客户</a></div>
							<div><a target="_blank" href="http://sale.jd.com/p10997.html">办公直通车</a></div>
						</dd>
					</dl>
					<dl class="item fore3">
						<dt>旗下网站</dt>
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
		<div id="logo-2013" class="ld"><a href="http://www.jd.com/" hidefocus="true"><b></b><img src="http://misc.360buyimg.com/lib/img/e/logo-201305.png" width="270" height="60" alt="京东"></a></div>
		<!--logo end-->
		<div id="search-2013">
			<div class="i-search ld">
				<ul id="shelper" class="hide">
				</ul>
				<div class="form">
					<input type="text" class="text" accesskey="s" id="key" autocomplete="off" onkeydown="javascript:if(event.keyCode==13) search('key');">
					<input type="button" value="搜索" class="button" onclick="search('key');return false;">
				</div>
			</div>
			<div id="hotwords"></div>
		</div>
		<!--search end-->
		<div id="my360buy-2013">
			<dl>
				<dt class="ld"><s></s><a href="http://home.jd.com/">我的京东</a><b></b></dt>
				<dd>
					<div class="loading-style1"><b></b>加载中，请稍候...</div>
				</dd>
			</dl>
		</div>
		<!--my360buy end-->
		<div id="settleup-2013">
			<dl>
				<dt class="ld"><s></s><span class="shopping"><span id="shopping-amount"></span></span><a href="http://cart.jd.com/cart/cart.html" id="settleup-url">去购物车结算</a> <b></b> </dt>
				<dd>
					<div class="prompt">
						<div class="loading-style1"><b></b>加载中，请稍候...</div>
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
					<h2><a href="http://www.jd.com/allSort.aspx">全部商品分类<b></b></a></h2>
				</div>
				<div id="_JD_ALLSORT" class="mc"></div>
			</div>
			<div id="treasure"></div>
			<ul id="navitems-2013">
				<li class="fore1" id="nav-home"><a href="http://www.jd.com/">首页</a></li>
				<li class="fore2" id="nav-fashion"><a href="http://fashion.jd.com/">服装城</a></li>
				<li class="fore3" id="nav-chaoshi"><a href="http://channel.jd.com/chaoshi.html">美食</a></li>
				<li class="fore4" id="nav-tuan"><a href="http://tuan.jd.com/" target="_blank">团购</a></li>
				<li class="fore5" id="nav-auction"><a href="http://auction.jd.com/">夺宝岛</a></li>
				<li class="fore6" id="nav-shan"><a href="http://red.jd.com/">闪购</a></li>
				<li class="fore7" id="nav-jinrong"><a href="http://jr.jd.com/" target="_blank">金融</a></li>
				<li class="fore8" id="nav-smart"><a href="http://smart.jd.com/" target="_blank" >智能</a></li>
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
						友情链接</h3>
					<ul class="link_list">
												<li><a href="http://xuan.jd.com/?jxnei_source=jxnei9" target="_blank">京东促销活动 </a></li>
												<li><a href="http://www.jd.hk/" target="_blank">全球购 </a></li>
												<li><a href="http://gb.jd.com" target="_blank">京东钢镚 </a></li>
												<li><a href="http://xiangqing.jd.com" target="_blank">京东详情页模板市场 </a></li>
												<li><a href="http://www.shangti.cn" target="_blank">尚体网 </a></li>
												<li><a href="http://licai.jd.com/" target="_blank">京东理财 </a></li>
												<li><a href="http://www.aguo.com" target="_blank">安卓下载 </a></li>
												<li><a href="http://www.5173.com/" target="_blank">5173游戏交易网 </a></li>
												<li><a href="http://vip.jd.com" target="_blank">京东会员 </a></li>
												<li><a href="http://item.jd.com/11417193.html" target="_blank">贝克汉姆 </a></li>
												<li><a href="http://vip.jd.com/" target="_blank">京东会员俱乐部 </a></li>
												<li><a href="http://jandan.net/" target="_blank">煎蛋网 </a></li>
												<li><a href="http://www.huihui.cn/" target="_blank">网易惠惠 </a></li>
												<li><a href="http://www.vancl.com/" target="_blank">凡客诚品 </a></li>
												<li><a href="http://www.shangti.cn/topic/健身车" target="_blank">健身车 </a></li>
												<li><a href="http://www.1hai.cn" target="_blank">一嗨租车 </a></li>
												<li><a href="http://www.wadongxi.com" target="_blank">比价网 </a></li>
												<li><a href="http://xiaozhao.renren.com" target="_blank">应届生校招网 </a></li>
												<li><a href="http://www.manxiangyi.com" target="_blank">蛮相宜 </a></li>
												<li><a href="http://www.yicai.com" target="_blank">一财网 </a></li>
												<li><a href="http://it.cntv.cn" target="_blank">央视网IT </a></li>
												<li><a href="http://www.100ec.cn" target="_blank">中国电子商务研究中心 </a></li>
												<li><a href="http://www.bbtnews.com.cn/" target="_blank">北京商报 </a></li>
												<li><a href="http://en.jd.com" target="_blank">Online Shopping </a></li>
												<li><a href="http://www.zhubajie.com/" target="_blank">猪八戒威客网 </a></li>
												<li><a href="http://digi.163.com/" target="_blank">网易数码 </a></li>
												<li><a href="http://www.vipshop.com" target="_blank">唯品会 </a></li>
												<li><a href="http://www.app111.com" target="_blank">苹果园 </a></li>
												<li><a href="http://www.meilishuo.com" target="_blank">美丽说 </a></li>
												<li><a href="http://www.ku6.com" target="_blank">酷6网 </a></li>
												<li><a href=" http://www.cjcp.com.cn" target="_blank">彩经网 </a></li>
												<li><a href="http://www.xiu.com/" target="_blank">走秀网  </a></li>
												<li><a href="http://t.dianping.com/beijing" target="_blank">北京团购 </a></li>
												<li><a href="http://www.womai.com/ " target="_blank">我买网上购物 </a></li>
												<li><a href="http://www.beareyes.com.cn" target="_blank">小熊在线 </a></li>
												<li><a href="http://www.moonbasa.com" target="_blank">梦芭莎 </a></li>
												<li><a href="http://www.xinnet.com/index.html" target="_blank">新网数码 </a></li>
												<li><a href="http://www.265.com/" target="_blank">谷歌265导航 </a></li>
												<li><a href="http://www.chinaz.com" target="_blank">站长之家 </a></li>
												<li><a href="http://re.jd.com/" target="_blank">京东热卖 </a></li>
												<li><a href="http://www.wangyin.com" target="_blank">网银钱包 </a></li>
												<li><a href="http://m.mdpda.com" target="_blank">安卓软件 </a></li>
												<li><a href="http://www.tangdou.com" target="_blank">糖豆网 </a></li>
												<li><a href="http://luopan.jd.com" target="_blank">京东数据罗盘 </a></li>
												<li><a href="http://smarthome.jd.com/" target="_blank">京东智能云 </a></li>
												<li><a href="http://www.pps.tv" target="_blank">PPS影音 </a></li>
												<li><a href="http://www.dadou.com" target="_blank">大豆网 </a></li>
												<li><a href="http://wiki.jd.com/" target="_blank">京东知识库 </a></li>
												<li><a href="http://www.smzdm.com" target="_blank">什么值得买 </a></li>
												<li><a href="http://creditcard.ecitic.com/" target="_blank">中信银行信用卡中心 </a></li>
												<li><a href="http://www.k369.com/" target="_blank">美萍导航网  </a></li>
												<li><a href="http://www.paidai.com/" target="_blank">电子商务 </a></li>
												<li><a href="http://www.tg.com.cn/" target="_blank">齐家家居网 </a></li>
												<li><a href="http://www.rayi.cn" target="_blank">锐意网 </a></li>
												<li><a href="http://m.bqruan.com" target="_blank">手机软件 </a></li>
												<li><a href="http://www.hiapk.com" target="_blank">安卓网  </a></li>
												<li><a href="http://sj.91.com  " target="_blank">91手机娱乐 </a></li>
												<li><a href="http://www.jiatx.com/" target="_blank">家天下家居商城 </a></li>
												<li><a href="http://www.letao.com" target="_blank">乐淘网 </a></li>
												<li><a href="http://hao.360.cn" target="_blank">360网址导航 </a></li>
												<li><a href="http://www.jd-ex.com/" target="_blank">京东快递 </a></li>
												<li><a href="http://yao.jd.com" target="_blank">京东医药城 </a></li>
												<li><a href="http://jae.jd.com" target="_blank">京东云擎 </a></li>
												<li><a href="http://www.mfrbee.com" target="_blank">美蜂网-外贸 </a></li>
												<li><a href="http://www.ludashi.com" target="_blank">鲁大师官网 </a></li>
												<li><a href="http://www.damai.cn" target="_blank">大麦网 </a></li>
												<li><a href="http://www.lefeng.com" target="_blank">乐蜂网 </a></li>
												<li><a href="http://movie.jd.com/m_5626" target="_blank">小时代电影 </a></li>
												<li><a href="http://www.sowu.com" target="_blank">搜物网 </a></li>
												<li><a href="http://www.84ju.com/" target="_blank">八四居 </a></li>
												<li><a href="http://www.popwan.com" target="_blank">泡泡玩网页游戏 </a></li>
												<li><a href="http://www.doulai.com" target="_blank">都来网页游戏 </a></li>
												<li><a href="http://web.ali213.net/" target="_blank">游侠网页游戏 </a></li>
												<li><a href="http://www.jingpaidang.com" target="_blank">京拍档 </a></li>
												<li><a href="http://movie.jd.com/c_620" target="_blank">东都影城 </a></li>
												<li><a href="http://www.dotamingxingdian.com/" target="_blank">礼品公司 </a></li>
												<li><a href="http://www.centaur.cn" target="_blank">E店宝 </a></li>
												<li><a href="http://www.jumei.com/" target="_blank">聚美优品团购 </a></li>
												<li><a href="http://www.tootoo.cn/" target="_blank">沱沱工社 </a></li>
												<li><a href="http://jsningyi.com/" target="_blank">宁谊幼教 </a></li>
												<li><a href="http://www.tuan800.com" target="_blank">团800 </a></li>
												<li><a href="http://www.yiguo.com" target="_blank">易果网  </a></li>
												<li><a href="http://www.ba-li.com/ " target="_blank">芭黎世家  </a></li>
												<li><a href="http://www.tian10.com" target="_blank">海鸥手表 </a></li>
												<li><a href="http://www.hljsenwang.com/" target="_blank">奥宇 </a></li>
												<li><a href="http://www.xlkorganic.com/" target="_blank">生态小镇 </a></li>
												<li><a href="http://www.dearkiss.com.cn/" target="_blank">蒂尔凯斯 </a></li>
												<li><a href="http://www.coolpad.cn" target="_blank">酷派  </a></li>
												<li><a href="http://twabc.com.cn/" target="_blank">ABC </a></li>
												<li><a href="http://www.openedmall.com/" target="_blank">都澎世家 </a></li>
												<li><a href="http://www.yunfuxie.cn" target="_blank">迎宝 </a></li>
												<li><a href="http://yueji.com" target="_blank">悦己 </a></li>
												<li><a href="http://www.crc1964.com/" target="_blank">中国唱片广州公司 </a></li>
												<li><a href="http://www.sodisc.com" target="_blank">红星电子音像出版社有限责任公司 </a></li>
												<li><a href="http://www.caphbook.com/" target="_blank">中国宇航出版社 </a></li>
												<li><a href="http://www.softabc.com" target="_blank">北京明日东方科技有限公司 </a></li>
												<li><a href="http://www.shuren-soft.com/" target="_blank">北京华夏树人数码科技有限公司 </a></li>
												<li><a href="http://www.shuhai.com/" target="_blank">书海小说网 </a></li>
												<li><a href="http://www.hinabook.com/" target="_blank">后浪出版公司 </a></li>
												<li><a href="http://www.fmx.cn/" target="_blank">凤鸣轩小说网 </a></li>
											</ul>

					<div class="Pagination">
						<a class='current'>1</a> <a href="http://club.jd.com/links.aspx?page=2"  >2</a><a class="next" href="http://club.jd.com/links.aspx?page=2"  >下一页<b></b></a>
					</div>
				</div>
				<div class="link_bottom"><div class="bottom_right"></div><div class="bottom_left"></div></div>
			</div>
			<div class="link_box_a">
				<div class="link_top"><div class="top_right"></div><div class="top_left"></div></div>
				<div class="link_content">
					<h3 class="link_tit">

						申请友情链接</h3>
					<ul class="link_step">
						<li class="link_step_tit">申请步骤：</li>
						<li>
							<div class="float_Left">
								1.</div>
							<div class="margin_l_12">

								请先在贵网站做好京东的文字友情链接：<br />
								链接文字：京东链接地址：<a href="http://www.jd.com" target="_blank">http://www.jd.com</a></div>
						</li>
						<li>2.做好链接后，请在右侧填写申请信息。京东只接受申请文字友情链接。</li>
						<li>
							<div class="float_Left">
								3.</div>

							<div class="margin_l_12">
								已经开通我站友情链接且内容健康，符合本站友情链接要求的网站，经京东管理员审核后，可以显示在此友情链接页面。</div>
						</li>
						<li>
							<div class="float_Left">
								4.</div>

							<div class="margin_l_12">
								请通过右侧提交申请，注明：友情链接申请。</div>
						</li>
					</ul>
					<table cellpadding="0" cellspacing="0" class="link_table" width="309">
						<tr>
							<td height="29" colspan="2" valign="top" class="link_step_tit">
								申请信息</td>

						</tr>
						<tr>
							<td height="29">
								网站名称：
							</td>
							<td height="29">
								<input id="name" name="name" type="text" class="w247" /></td>
						</tr>
						<tr>

							<td height="29">
								网&nbsp;&nbsp;&nbsp;&nbsp;址：
							</td>
							<td height="29">
								<input id="url" name="url" type="text" class="w247" value="http://" /></td>
						</tr>
						<tr>
							<td height="35">
								电子邮箱：
							</td>

							<td height="29">
								<input id="email" name="email" type="text" class="w247" /></td>
						</tr>
						<tr>
							<td width="61" height="29" valign="top">
								网站介绍：
							</td>
							<td width="348" valign="top">
								<textarea id="intro" name="intro" cols="" rows="" class="w247h60"></textarea></td>

						</tr>
						<tr>
							<td height="45" colspan="2" align="center" valign="middle">
								<input type="button" name="bttSubmit" value="提交申请" onclick="saveFriendLink(this)" id="bttSubmit" class="link_button" />
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
			<dt><b></b><strong>购物指南</strong></dt>
			<dd>
				<div><a href="http://help.jd.com/user/issue/list-29.html" target="_blank" rel="nofollow">购物流程</a></div>
				<div><a href="http://help.jd.com/user/issue/list-151.html" target="_blank" rel="nofollow">会员介绍</a></div>
				<div><a href="http://help.jd.com/user/issue/list-297.html" target="_blank" rel="nofollow">生活旅行/团购</a></div>
				<div><a href="http://help.jd.com/user/issue.html" target="_blank" rel="nofollow">常见问题</a></div>
				<div><a href="http://help.jd.com/user/issue/list-136.html" target="_blank" rel="nofollow">大家电</a></div>
				<div><a href="http://help.jd.com/user/index.html" target="_blank" rel="nofollow">联系客服</a></div>
			</dd>
		</dl>
		<dl class="fore2">		
			<dt><b></b><strong>配送方式</strong></dt>
			<dd>
				<div><a href="http://help.jd.com/user/issue/list-81-100.html" target="_blank" rel="nofollow">上门自提</a></div>
				<div><a href="http://help.jd.com/user/issue/list-81.html" target="_blank" rel="nofollow">211限时达</a></div>
				<div><a href="http://help.jd.com/user/issue/103-983.html" target="_blank" rel="nofollow">配送服务查询</a></div>
				<div><a href="http://help.jd.com/user/issue/109-188.html" target="_blank" rel="nofollow">配送费收取标准</a></div>
				<div><a href="http://en.jd.com/chinese.html" target="_blank">海外配送</a></div>
			</dd>
		</dl>
		<dl class="fore3">
			<dt><b></b><strong>支付方式</strong></dt>
			<dd>
				<div><a href="http://help.jd.com/user/issue/list-172.html" target="_blank" rel="nofollow">货到付款</a></div>
				<div><a href="http://help.jd.com/user/issue/list-173.html" target="_blank" rel="nofollow">在线支付</a></div>
				<div><a href="http://help.jd.com/user/issue/list-176.html" target="_blank" rel="nofollow">分期付款</a></div>
				<div><a href="http://help.jd.com/user/issue/list-174.html" target="_blank" rel="nofollow">邮局汇款</a></div>
				<div><a href="http://help.jd.com/user/issue/list-175.html" target="_blank" rel="nofollow">公司转账</a></div>
			</dd>
		</dl>
		<dl class="fore4">		
			<dt><b></b><strong>售后服务</strong></dt>
			<dd>
				<div><a href="http://help.jd.com/user/issue/321-981.html" target="_blank" rel="nofollow">售后政策</a></div>
				<div><a href="http://help.jd.com/user/issue/list-132.html" target="_blank" rel="nofollow">价格保护</a></div>
				<div><a href="http://help.jd.com/user/issue/130-978.html" target="_blank" rel="nofollow">退款说明</a></div>
				<div><a href="http://myjd.jd.com/repair/repairs.action" target="_blank" rel="nofollow">返修/退换货</a></div>
				<div><a href="http://help.jd.com/user/issue/list-50.html" target="_blank" rel="nofollow">取消订单</a></div>
			</dd>
		</dl>
		<dl class="fore5">
			<dt><b></b><strong>特色服务</strong></dt>
			<dd>			
				<div><a href="http://help.jd.com/user/issue/list-133.html" target="_blank">夺宝岛</a></div>
				<div><a href="http://help.jd.com/user/issue/list-134.html" target="_blank">DIY装机</a></div>
				<div><a href="http://fuwu.jd.com/" target="_blank" rel="nofollow">延保服务</a></div>
				<div><a href="http://giftcard.jd.com/market/index.action" target="_blank" rel="nofollow">京东E卡</a></div>
				<div><a href="http://mobile.jd.com/" target="_blank" rel="nofollow">京东通信</a></div>
			</dd>
		</dl>
		<span class="clr"></span>
	</div>
</div><!-- service end --><div class="w">
	<div id="footer-2013">
		<div class="links"><a href="http://www.jd.com/intro/about.aspx" target="_blank" rel="nofollow">关于我们</a>|<a href="http://www.jd.com/contact/" target="_blank" rel="nofollow">联系我们</a>|<a href="http://www.jd.com/contact/joinin.aspx" target="_blank" rel="nofollow">商家入驻</a>|<a href="http://jzt.jd.com" target="_blank" rel="nofollow">营销中心</a>|<a href="http://app.jd.com/" target="_blank" rel="nofollow">手机京东</a>|<a href="http://club.jd.com/links.aspx" target="_blank">友情链接</a>|<a href="http://media.jd.com/" target="_blank">销售联盟</a>|<a target="_blank" href="http://club.jd.com/">京东社区</a>|<a target="_blank" href="http://gongyi.jd.com">京东公益</a></div>
		<div class="copyright">北京市公安局朝阳分局备案编号110105014669&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://img14.360buyimg.com/da/jfs/t256/349/769670066/270505/3b03e0bb/53f16c24N7c04d9e9.jpg" target="_blank">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a><br><a target="_blank" href="http://misc.360buyimg.com/skin/df/i/com/f_music.jpg" rel="nofollow">音像制品经营许可证苏宿批005号</a>&nbsp;&nbsp;|&nbsp;&nbsp;出版物经营许可证编号新出发(苏)批字第N-012号&nbsp;&nbsp;|&nbsp;&nbsp;互联网出版许可证编号新出网证(京)字150号<br><a target="_blank" href="http://misc.360buyimg.com/wz/wlwhjyxkz.jpg">网络文化经营许可证京网文[2014]2148-348号</a>&nbsp;&nbsp;文明办网文明上网举报电话：4006561155&nbsp;&nbsp;Copyright&nbsp;&copy;&nbsp;2004-2015&nbsp;&nbsp;京东JD.com&nbsp;版权所有<br />京东旗下网站：<a target="_blank" href="http://en.jd.com/">English Site</a></div>
		<div class="authentication"><a href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202007080200026" target="_blank" rel="nofollow"><img data-lazyload="http://img10.360buyimg.com/da/20110329/108_40_zZOKnl.gif" width="108" height="40" alt="经营性网站备案中心"></a><script type="text/JavaScript">function CNNIC_change(eleId){var str= document.getElementById(eleId).href;var str1 =str.substring(0,(str.length-6));str1+=CNNIC_RndNum(6); document.getElementById(eleId).href=str1;}function CNNIC_RndNum(k){var rnd=""; for (var i=0;i < k;i++) rnd+=Math.floor(Math.random()*10); return rnd;}</script><a href="https://ss.knet.cn/verifyseal.dll?sn=2008070300100000031&ct=df&pa=294005" tabindex="-1" id="urlknet" target="_blank" rel="nofollow"><img alt="&#x53EF;&#x4FE1;&#x7F51;&#x7AD9;" name="CNNIC_seal" border="true" data-lazyload="http://img11.360buyimg.com/da/g8/M03/0C/0E/rBEHaFCFC5QIAAAAAAASVQX9RAYAACb2wHUV1kAABJt760.gif" width="108" height="40" oncontextmenu="return false;" onclick="CNNIC_change('urlknet')" /></a><a href="http://www.bj.cyberpolice.cn/index.do" target="_blank" rel="nofollow"><img data-lazyload="http://img12.360buyimg.com/da/g5/M02/0D/17/rBEIDE_nzcIIAAAAAAB30mYXo5QAACrhACj22IAAHfq378.png" width="108" height="40" alt="朝阳网络警察"></a><a href="https://search.szfw.org/cert/l/CX20120111001803001836" target="_blank" rel="nofollow"><img data-lazyload="http://img13.360buyimg.com/da/20120221/112_40_WvArIl.png" width="112" height="40"></a></div>
	</div>
</div><!-- footer end --><!-- footer end--> 
	 <script type="text/javascript" src="http://misc.360buyimg.com/lib/js/2012/lib-v1.js"></script>
	 <script type="text/javascript" src="http://www.jd.com/script/jquery-plugins-vs2.js"></script>
     <script type="text/javascript" src="http://d.jd.com/hotwords/get?position=A-index-001"></script>
<script type="text/javascript" src="http://wl.jd.com/wl.js"></script>
</form>
</body>
</html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Mimic Internet Explorer 8 -->
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
<title>举报入口_违法和不良信息举报中心</title>
<link href="/css/public.css" rel="stylesheet" type="text/css" />
<link href="/css/entrance.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="/js/prototype-mini.js"></script>
<script language="javascript" type="text/javascript" src="/jscript/jquery/jquery.js"></script>
<script language="javascript" type="text/javascript" src="/js/validator.js"></script>
<script language="javascript" type="text/javascript">
<!--设置隐藏TD-->
		function setblock(data){

			if(!data)
				data = document.getElementById("reporttype");
				var reporttype = data.options[data.selectedIndex].value;
				if(reporttype == '1' ){
					document.getElementById("keywordstyle").style.display = "table-row";
	 				document.getElementById("reportwayStyle").style.display = "table-row";
	 				
	 				//手机APP
	 				document.getElementById("appsourcecodStyle").style.display = "none";
	 				document.getElementById("colStyle").style.display = "none";
	 				document.getElementById("appvelStyle").style.display = "none";
	 				document.getElementById("appsourcenameStyle").style.display = "none";
	 				document.getElementById("appnameStyle").style.display = "none";
	 				
	 				document.getElementById("webnameStyle").style.display = "table-row";
	 				document.getElementById("siteurlStyle").style.display = "table-row";
	 				document.getElementById("pageurlStyle").style.display = "table-row";
	 				
	 				//清空手机APP
           			 $('#appsourcecod').attr('value' ,'');
           			 $('#appsourcecods').attr('value' ,'');
           			 $('#col').attr('value' ,'');
           			 $('#appvel').attr('value' ,'');
           			 $('#appsourcename').attr('value' ,'');
           			 $('#appname').attr('value' ,'');
	 				
				}else if(reporttype == '0'){
					document.getElementById("webnameStyle").style.display = "table-row";
	 				document.getElementById("siteurlStyle").style.display = "table-row";
	 				document.getElementById("pageurlStyle").style.display = "table-row";
	 				
					document.getElementById("keywordstyle").style.display = "none";
	 				document.getElementById("reportwayStyle").style.display = "none";
	 				
	 				//手机APP
	 				document.getElementById("appsourcecodStyle").style.display = "none";
	 				document.getElementById("colStyle").style.display = "none";
	 				document.getElementById("appvelStyle").style.display = "none";
	 				document.getElementById("appsourcenameStyle").style.display = "none";
	 				document.getElementById("appnameStyle").style.display = "none";
	 				 $('#siteurl').removeAttr("readonly");
	 				 $('#pageurl').removeAttr("readonly");
					 $('#webname').removeAttr("readonly");
					 $('#siteurl').attr('value' , 'http://');
					 $('#pageurl').attr('value' , 'http://');
           			 $('#webname').attr('value' ,'');
           			 
           			 //清空手机APP
           			 $('#appsourcecod').attr('value' ,'');
           			 $('#appsourcecods').attr('value' ,'');
           			 $('#col').attr('value' ,'');
           			 $('#appvel').attr('value' ,'');
           			 $('#appsourcename').attr('value' ,'');
           			 $('#appname').attr('value' ,'');
           			 
           			 //清空搜索引擎
           			 $('#keyword').attr('value' ,'');
           			 $('#seids').attr('value' ,' | ');
	 				 
				}else if(reporttype == '2'){
					document.getElementById("keywordstyle").style.display = "none";
	 				document.getElementById("reportwayStyle").style.display = "none";
	 				
	 				//手机APP
	 				document.getElementById("appsourcecodStyle").style.display = "table-row";
	 				document.getElementById("colStyle").style.display = "table-row";
	 				document.getElementById("appvelStyle").style.display = "table-row";
	 				document.getElementById("appnameStyle").style.display = "table-row";
	 				
	 				document.getElementById("webnameStyle").style.display = "none";
	 				document.getElementById("siteurlStyle").style.display = "none";
	 				document.getElementById("pageurlStyle").style.display = "none";
	 				
	 				//清空网址和搜索引擎
           			 $('#keyword').attr('value' ,'');
           			 $('#seids').attr('value' ,' | ');
           			 $('#siteurl').attr('value' ,'');
					 $('#pageurl').attr('value' ,'');
           			 $('#webname').attr('value' ,'');
				}
		}
		
		function setapp(data){
				data = document.getElementById("appsourcecod");
				var app = data.options[data.selectedIndex].value;
				if(app == '0'){
					document.getElementById("appsourcenameStyle").style.display = "table-row";
				}else{
					document.getElementById("appsourcenameStyle").style.display = "none";
					$('#appsourcename').attr('value' ,'');
				}
		}
		
		function setblock2(){
	
				var reporttype = document.getElementById("reportype2").value;
				if(reporttype!=null){
					if(reporttype == '1' ){
						document.getElementById("keywordstyle").style.display = "table-row";
		 				document.getElementById("reportwayStyle").style.display = "table-row";
					}
					if(reporttype == '2' ){
						document.getElementById("keywordstyle").style.display = "none";
	 					document.getElementById("reportwayStyle").style.display = "none";
	 				
	 					//手机APP
	 					document.getElementById("appsourcecodStyle").style.display = "table-row";
	 					document.getElementById("colStyle").style.display = "table-row";
	 					document.getElementById("appvelStyle").style.display = "table-row";
	 					document.getElementById("appnameStyle").style.display = "table-row";
	 				
	 					document.getElementById("webnameStyle").style.display = "none";
	 					document.getElementById("siteurlStyle").style.display = "none";
	 					document.getElementById("pageurlStyle").style.display = "none";
	 					
	 					var data = document.getElementById("appsourcecod");
						var app = data.options[data.selectedIndex].value;
						if(app == '0'){
							document.getElementById("appsourcenameStyle").style.display = "table-row";
						}else{
							document.getElementById("appsourcenameStyle").style.display = "none";
						}
					}
				}
				
				var value = document.getElementById("seids").value;
				var seid = value.split('|')[0];
				$('#seid').attr('value' , seid);
		}
		
		<!--重置-->
		function resetbutt(){
	
			 $('#userName').attr('value' , '');
			 $('#email').attr('value' , '');
			 $('#tel').attr('value' , '');
			 $('#SearchBar1_Region21_selProvince').attr('value' , '');
			 $('#selRegion').attr('value' , '');
			 $('#address').attr('value' , '');
			 $('#reportype2').attr('value' , '');
			 $('#reportype').attr('value' , '');
			 $('#seids').attr('value' , ' | ');
			 $('#seid').attr('value' , '');
			 $('#keyword').attr('value' , '');
			 $('#typecatalog').attr('value' , '0101');
			 $('#content').attr('value' , '');
			 $('#pageurl').removeAttr("readonly");
			 $('#webname').removeAttr("readonly");
			 $('#siteurl').attr('value' , 'http://');
			 $('#pageurl').attr('value' , 'http://');
   			 $('#webname').attr('value' ,'');
   			 //清空手机APP
           			 $('#appsourcecod').attr('value' ,'');
           			 $('#appsourcecods').attr('value' ,'');
           			 $('#col').attr('value' ,'');
           			 $('#appvel').attr('value' ,'');
           			 $('#appsourcename').attr('value' ,'');
           			 $('#appname').attr('value' ,'');
		}
		
</script>


<script language="javascript" type="text/javascript">
<!----控制表单------>
$(document).ready(function(){
	$('#seids').change(function(){
         var value = $(this).val();
		 var url = value.split('|')[1];
		 var seid = value.split('|')[0];
		 var webname = value.split('|')[2];
		 if(url == null){
		  alert(url+'=1==url');
		  url = ""; 
		  }
		  if(' ' ==url){
		  	$('#siteurl').removeAttr("readonly"); 
		  	$('#pageurl').removeAttr("readonly"); 
		  	$('#webname').removeAttr("readonly"); 
		  	$('#siteurl').attr('value' , 'http://');
            $('#pageurl').attr('value' , 'http://');
            $('#webname').attr('value' ,'');
		  }else{
			$('#siteurl').attr("readonly", "readonly");
			$('#pageurl').attr("readonly", "readonly");
			$('#webname').attr("readonly", "readonly");
			$('#seid').attr('value' , seid);
			$('#siteurl').attr('value' , url);
            $('#pageurl').attr('value' , url);
            $('#webname').attr('value' ,webname);
		  }
        
	});
	
	
});
</script>



<script language="javascript" type="text/javascript">
 <!--省市级联-------->
	var onecount;
	onecount=360;
	    
var	subcat = new Array();
	
	function changeProvince(locationid)
	{
	    document.all.selRegion.length = 0;
	    var locationid=locationid;
	    var i;
	    document.all.selRegion.options[0] = new Option('请选择--','');
	    for (i=0;i < onecount; i++)
	    {
	        if (subcat[i][1] == locationid)
	        {
	            document.all.selRegion.options[document.all.selRegion.length] = new Option(subcat[i][0], subcat[i][2]);
	            
	            
	        }        
	    }        
	}    


	function getProvince()
	{
		var locationid = document.getElementById("prov").value;
		if(locationid!=""){
			document.all.selRegion.length = 0;
		    var i;
		    //document.all.selRegion.options[0] = new Option('请选择--','');
		    for (i=0;i < onecount; i++)
		    {
		        if (subcat[i][1] == locationid)
		        {
		            document.all.selRegion.options[document.all.selRegion.length] = new Option(subcat[i][0], subcat[i][2]);
		            if (subcat[i][2] == document.getElementById("city").value){
		            	//alert("----city--1--");
		            	//alert("---------document.all.selRegion.options[document.all.selRegion.length-1]:"+document.all.selRegion.options[document.all.selRegion.length-1]);
		            	document.all.selRegion.options[document.all.selRegion.length-1].selected=true;
		            	//alert("----city--2--");
		            }
		        }     
		    }  
		}
	          
	}  
</script>
<script language="javascript" type="text/javascript">
subcat[0] = new Array("北京市","0001","000101");
subcat[1] = new Array("天津市","0001","000102");
subcat[2] = new Array("上海市","0001","000103");
subcat[3] = new Array("重庆市","0001","000104");
subcat[4] = new Array("石家庄市","0003","000301");
subcat[5] = new Array("唐山市","0003","000302");
subcat[6] = new Array("秦皇岛市","0003","000303");
subcat[7] = new Array("邯郸市","0003","000304");
subcat[8] = new Array("邢台市","0003","000305");
subcat[9] = new Array("保定市","0003","000306");
subcat[10] = new Array("张家口市","0003","000307");
subcat[11] = new Array("承德市","0003","000308");
subcat[12] = new Array("沧州市","0003","000309");
subcat[13] = new Array("廊坊市","0003","000310");
subcat[14] = new Array("衡水市","0003","000311");
subcat[15] = new Array("其他","0003","000312");
subcat[16] = new Array("阳泉市","0004","000403");
subcat[17] = new Array("长治市","0004","000404");
subcat[18] = new Array("晋城市","0004","000405");
subcat[19] = new Array("朔州市","0004","000406");
subcat[20] = new Array("晋中市","0004","000407");
subcat[21] = new Array("运城市","0004","000408");
subcat[22] = new Array("忻州市","0004","000409");
subcat[23] = new Array("临汾市","0004","000410");
subcat[24] = new Array("吕梁地区","0004","000411");
subcat[25] = new Array("太原市","0004","000401");
subcat[26] = new Array("大同市","0004","000402");
subcat[27] = new Array("呼和浩特市","0005","000501");
subcat[28] = new Array("包头市","0005","000502");
subcat[29] = new Array("乌海市","0005","000503");
subcat[30] = new Array("赤峰市","0005","000504");
subcat[31] = new Array("通辽市","0005","000505");
subcat[32] = new Array("鄂尔多斯市","0005","000506");
subcat[33] = new Array("呼伦贝尔市","0005","000507");
subcat[34] = new Array("兴安盟","0005","000508");
subcat[35] = new Array("锡林郭勒盟","0005","000509");
subcat[36] = new Array("乌兰察布盟","0005","000510");
subcat[37] = new Array("巴彦淖尔盟","0005","000511");
subcat[38] = new Array("阿拉善盟","0005","000512");
subcat[39] = new Array("鞍山市","0006","000603");
subcat[40] = new Array("抚顺市","0006","000604");
subcat[41] = new Array("本溪市","0006","000605");
subcat[42] = new Array("丹东市","0006","000606");
subcat[43] = new Array("锦州市","0006","000607");
subcat[44] = new Array("营口市","0006","000608");
subcat[45] = new Array("阜新市","0006","000609");
subcat[46] = new Array("辽阳市","0006","000610");
subcat[47] = new Array("盘锦市","0006","000611");
subcat[48] = new Array("铁岭市","0006","000612");
subcat[49] = new Array("朝阳市","0006","000613");
subcat[50] = new Array("葫芦岛市","0006","000614");
subcat[51] = new Array("沈阳市","0006","000601");
subcat[52] = new Array("大连市","0006","000602");
subcat[53] = new Array("长春市","0007","000701");
subcat[54] = new Array("吉林市","0007","000702");
subcat[55] = new Array("四平市","0007","000703");
subcat[56] = new Array("辽源市","0007","000704");
subcat[57] = new Array("通化市","0007","000705");
subcat[58] = new Array("白山市","0007","000706");
subcat[59] = new Array("松原市","0007","000707");
subcat[60] = new Array("白城市","0007","000708");
subcat[61] = new Array("延边朝鲜族自治州","0007","000709");
subcat[62] = new Array("佳木斯市","0008","000808");
subcat[63] = new Array("七台河市","0008","000809");
subcat[64] = new Array("牡丹江市","0008","000810");
subcat[65] = new Array("黑河市","0008","000811");
subcat[66] = new Array("绥化市","0008","000812");
subcat[67] = new Array("大兴安岭地区","0008","000813");
subcat[68] = new Array("哈尔滨市","0008","000801");
subcat[69] = new Array("齐齐哈尔市","0008","000802");
subcat[70] = new Array("鸡西市","0008","000803");
subcat[71] = new Array("鹤岗市","0008","000804");
subcat[72] = new Array("双鸭山市","0008","000805");
subcat[73] = new Array("大庆市","0008","000806");
subcat[74] = new Array("伊春市","0008","000807");
subcat[75] = new Array("南京市","0010","001001");
subcat[76] = new Array("无锡市","0010","001002");
subcat[77] = new Array("徐州市","0010","001003");
subcat[78] = new Array("常州市","0010","001004");
subcat[79] = new Array("苏州市","0010","001005");
subcat[80] = new Array("南通市","0010","001006");
subcat[81] = new Array("连云港市","0010","001007");
subcat[82] = new Array("淮安市","0010","001008");
subcat[83] = new Array("盐城市","0010","001009");
subcat[84] = new Array("扬州市","0010","001010");
subcat[85] = new Array("镇江市","0010","001011");
subcat[86] = new Array("泰州市","0010","001012");
subcat[87] = new Array("宿迁市","0010","001013");
subcat[88] = new Array("温州市","0011","001103");
subcat[89] = new Array("嘉兴市","0011","001104");
subcat[90] = new Array("湖州市","0011","001105");
subcat[91] = new Array("绍兴市","0011","001106");
subcat[92] = new Array("金华市","0011","001107");
subcat[93] = new Array("衢州市","0011","001108");
subcat[94] = new Array("舟山市","0011","001109");
subcat[95] = new Array("台州市","0011","001110");
subcat[96] = new Array("丽水市","0011","001111");
subcat[97] = new Array("杭州市","0011","001101");
subcat[98] = new Array("宁波市","0011","001102");
subcat[99] = new Array("芜湖市","0012","001202");
subcat[100] = new Array("蚌埠市","0012","001203");
subcat[101] = new Array("淮南市","0012","001204");
subcat[102] = new Array("马鞍山市","0012","001205");
subcat[103] = new Array("淮北市","0012","001206");
subcat[104] = new Array("铜陵市","0012","001207");
subcat[105] = new Array("安庆市","0012","001208");
subcat[106] = new Array("黄山市","0012","001209");
subcat[107] = new Array("滁州市","0012","001210");
subcat[108] = new Array("阜阳市","0012","001211");
subcat[109] = new Array("宿州市","0012","001212");
subcat[110] = new Array("巢湖市","0012","001213");
subcat[111] = new Array("六安市","0012","001214");
subcat[112] = new Array("亳州市","0012","001215");
subcat[113] = new Array("池州市","0012","001216");
subcat[114] = new Array("宣城市","0012","001217");
subcat[115] = new Array("合肥市","0012","001201");
subcat[116] = new Array("福州市","0013","001301");
subcat[117] = new Array("厦门市","0013","001302");
subcat[118] = new Array("莆田市","0013","001303");
subcat[119] = new Array("三明市","0013","001304");
subcat[120] = new Array("泉州市","0013","001305");
subcat[121] = new Array("漳州市","0013","001306");
subcat[122] = new Array("南平市","0013","001307");
subcat[123] = new Array("龙岩市","0013","001308");
subcat[124] = new Array("宁德市","0013","001309");
subcat[125] = new Array("景德镇市","0014","001402");
subcat[126] = new Array("萍乡市","0014","001403");
subcat[127] = new Array("九江市","0014","001404");
subcat[128] = new Array("新余市","0014","001405");
subcat[129] = new Array("鹰潭市","0014","001406");
subcat[130] = new Array("赣州市","0014","001407");
subcat[131] = new Array("吉安市","0014","001408");
subcat[132] = new Array("宜春市","0014","001409");
subcat[133] = new Array("抚州市","0014","001410");
subcat[134] = new Array("上饶市","0014","001411");
subcat[135] = new Array("南昌市","0014","001401");
subcat[136] = new Array("德州市","0015","001514");
subcat[137] = new Array("聊城市","0015","001515");
subcat[138] = new Array("滨州市","0015","001516");
subcat[139] = new Array("荷泽市","0015","001517");
subcat[140] = new Array("青岛市","0015","001502");
subcat[141] = new Array("淄博市","0015","001503");
subcat[142] = new Array("枣庄市","0015","001504");
subcat[143] = new Array("东营市","0015","001505");
subcat[144] = new Array("烟台市","0015","001506");
subcat[145] = new Array("潍坊市","0015","001507");
subcat[146] = new Array("济宁市","0015","001508");
subcat[147] = new Array("泰安市","0015","001509");
subcat[148] = new Array("威海市","0015","001510");
subcat[149] = new Array("日照市","0015","001511");
subcat[150] = new Array("莱芜市","0015","001512");
subcat[151] = new Array("临沂市","0015","001513");
subcat[152] = new Array("济南市","0015","001501");
subcat[153] = new Array("新乡市","0016","001607");
subcat[154] = new Array("焦作市","0016","001608");
subcat[155] = new Array("濮阳市","0016","001609");
subcat[156] = new Array("许昌市","0016","001610");
subcat[157] = new Array("漯河市","0016","001611");
subcat[158] = new Array("三门峡市","0016","001612");
subcat[159] = new Array("南阳市","0016","001613");
subcat[160] = new Array("商丘市","0016","001614");
subcat[161] = new Array("信阳市","0016","001615");
subcat[162] = new Array("周口市","0016","001616");
subcat[163] = new Array("驻马店市","0016","001617");
subcat[164] = new Array("郑州市","0016","001601");
subcat[165] = new Array("开封市","0016","001602");
subcat[166] = new Array("洛阳市","0016","001603");
subcat[167] = new Array("平顶山市","0016","001604");
subcat[168] = new Array("安阳市","0016","001605");
subcat[169] = new Array("鹤壁市","0016","001606");
subcat[170] = new Array("黄冈市","0017","001710");
subcat[171] = new Array("咸宁市","0017","001711");
subcat[172] = new Array("随州市","0017","001712");
subcat[173] = new Array("恩施土家族苗族自治州","0017","001713");
subcat[174] = new Array("武汉市","0017","001701");
subcat[175] = new Array("黄石市","0017","001702");
subcat[176] = new Array("十堰市","0017","001703");
subcat[177] = new Array("宜昌市","0017","001704");
subcat[178] = new Array("襄樊市","0017","001705");
subcat[179] = new Array("鄂州市","0017","001706");
subcat[180] = new Array("荆门市","0017","001707");
subcat[181] = new Array("孝感市","0017","001708");
subcat[182] = new Array("荆州市","0017","001709");
subcat[183] = new Array("怀化市","0018","001812");
subcat[184] = new Array("娄底市","0018","001813");
subcat[185] = new Array("长沙市","0018","001801");
subcat[186] = new Array("株洲市","0018","001802");
subcat[187] = new Array("湘潭市","0018","001803");
subcat[188] = new Array("衡阳市","0018","001804");
subcat[189] = new Array("邵阳市","0018","001805");
subcat[190] = new Array("岳阳市","0018","001806");
subcat[191] = new Array("常德市","0018","001807");
subcat[192] = new Array("张家界市","0018","001808");
subcat[193] = new Array("益阳市","0018","001809");
subcat[194] = new Array("郴州市","0018","001810");
subcat[195] = new Array("永州市","0018","001811");
subcat[196] = new Array("湘西土家族苗族自治州","0018","001814");
subcat[197] = new Array("肇庆市","0019","001910");
subcat[198] = new Array("惠州市","0019","001911");
subcat[199] = new Array("梅州市","0019","001912");
subcat[200] = new Array("汕尾市","0019","001913");
subcat[201] = new Array("河源市","0019","001914");
subcat[202] = new Array("阳江市","0019","001915");
subcat[203] = new Array("清远市","0019","001916");
subcat[204] = new Array("东莞市","0019","001917");
subcat[205] = new Array("中山市","0019","001918");
subcat[206] = new Array("潮州市","0019","001919");
subcat[207] = new Array("揭阳市","0019","001920");
subcat[208] = new Array("云浮市","0019","001921");
subcat[209] = new Array("广州市","0019","001901");
subcat[210] = new Array("韶关市","0019","001902");
subcat[211] = new Array("深圳市","0019","001903");
subcat[212] = new Array("珠海市","0019","001904");
subcat[213] = new Array("汕头市","0019","001905");
subcat[214] = new Array("佛山市","0019","001906");
subcat[215] = new Array("江门市","0019","001907");
subcat[216] = new Array("湛江市","0019","001908");
subcat[217] = new Array("茂名市","0019","001909");
subcat[218] = new Array("梧州市","0020","002004");
subcat[219] = new Array("北海市","0020","002005");
subcat[220] = new Array("防城港市","0020","002006");
subcat[221] = new Array("钦州市","0020","002007");
subcat[222] = new Array("贵港市","0020","002008");
subcat[223] = new Array("玉林市","0020","002009");
subcat[224] = new Array("南宁地区","0020","002010");
subcat[225] = new Array("柳州地区","0020","002011");
subcat[226] = new Array("贺州地区","0020","002012");
subcat[227] = new Array("百色地区","0020","002013");
subcat[228] = new Array("河池地区","0020","002014");
subcat[229] = new Array("南宁市","0020","002001");
subcat[230] = new Array("柳州市","0020","002002");
subcat[231] = new Array("桂林市","0020","002003");
subcat[232] = new Array("儋州","0021","002103");
subcat[233] = new Array("五指山","0021","002104");
subcat[234] = new Array("琼海","0021","002105");
subcat[235] = new Array("琼山","0021","002106");
subcat[236] = new Array("文昌","0021","002107");
subcat[237] = new Array("万宁","0021","002108");
subcat[238] = new Array("东方","0021","002109");
subcat[239] = new Array("其他","0021","002110");
subcat[240] = new Array("海口市","0021","002101");
subcat[241] = new Array("三亚市","0021","002102");
subcat[242] = new Array("自贡市","0023","002302");
subcat[243] = new Array("攀枝花市","0023","002303");
subcat[244] = new Array("泸州市","0023","002304");
subcat[245] = new Array("德阳市","0023","002305");
subcat[246] = new Array("绵阳市","0023","002306");
subcat[247] = new Array("广元市","0023","002307");
subcat[248] = new Array("遂宁市","0023","002308");
subcat[249] = new Array("内江市","0023","002309");
subcat[250] = new Array("凉山彝族自治州","0023","002321");
subcat[251] = new Array("乐山市","0023","002310");
subcat[252] = new Array("南充市","0023","002311");
subcat[253] = new Array("眉山市","0023","002312");
subcat[254] = new Array("宜宾市","0023","002313");
subcat[255] = new Array("广安市","0023","002314");
subcat[256] = new Array("达州市","0023","002315");
subcat[257] = new Array("雅安市","0023","002316");
subcat[258] = new Array("巴中市","0023","002317");
subcat[259] = new Array("资阳市","0023","002318");
subcat[260] = new Array("阿坝藏族羌族自治州","0023","002319");
subcat[261] = new Array("甘孜藏族自治州","0023","002320");
subcat[262] = new Array("成都市","0023","002301");
subcat[263] = new Array("贵阳市","0024","002401");
subcat[264] = new Array("六盘水市","0024","002402");
subcat[265] = new Array("遵义市","0024","002403");
subcat[266] = new Array("安顺市","0024","002404");
subcat[267] = new Array("铜仁地区","0024","002405");
subcat[268] = new Array("黔西南布依族苗族自治州","0024","002406");
subcat[269] = new Array("毕节地区","0024","002407");
subcat[270] = new Array("黔东南苗族侗族自治州","0024","002408");
subcat[271] = new Array("黔南布依族苗族自治州","0024","002409");
subcat[272] = new Array("昆明市","0025","002501");
subcat[273] = new Array("曲靖市","0025","002502");
subcat[274] = new Array("玉溪市","0025","002503");
subcat[275] = new Array("保山市","0025","002504");
subcat[276] = new Array("昭通市","0025","002505");
subcat[277] = new Array("楚雄彝族自治州","0025","002506");
subcat[278] = new Array("红河哈尼族彝族自治州","0025","002507");
subcat[279] = new Array("文山壮族苗族自治州","0025","002508");
subcat[280] = new Array("思茅地区","0025","002509");
subcat[281] = new Array("西双版纳傣族自治州","0025","002510");
subcat[282] = new Array("大理白族自治州","0025","002511");
subcat[283] = new Array("德宏傣族景颇族自治州","0025","002512");
subcat[284] = new Array("丽江地区","0025","002513");
subcat[285] = new Array("怒江傈僳族自治州","0025","002514");
subcat[286] = new Array("迪庆藏族自治州","0025","002515");
subcat[287] = new Array("临沧地区","0025","002516");
subcat[288] = new Array("那曲地区","0026","002605");
subcat[289] = new Array("阿里地区","0026","002606");
subcat[290] = new Array("林芝地区","0026","002607");
subcat[291] = new Array("拉萨市","0026","002601");
subcat[292] = new Array("昌都地区","0026","002602");
subcat[293] = new Array("山南地区","0026","002603");
subcat[294] = new Array("日喀则地区","0026","002604");
subcat[295] = new Array("榆林市","0027","002708");
subcat[296] = new Array("安康市","0027","002709");
subcat[297] = new Array("西安市","0027","002701");
subcat[298] = new Array("铜川市","0027","002702");
subcat[299] = new Array("宝鸡市","0027","002703");
subcat[300] = new Array("咸阳市","0027","002704");
subcat[301] = new Array("渭南市","0027","002705");
subcat[302] = new Array("延安市","0027","002706");
subcat[303] = new Array("汉中市","0027","002707");
subcat[304] = new Array("商洛市","0027","002710");
subcat[305] = new Array("甘南藏族自治州","0028","002814");
subcat[306] = new Array("兰州市","0028","002801");
subcat[307] = new Array("嘉峪关市","0028","002802");
subcat[308] = new Array("金昌市","0028","002803");
subcat[309] = new Array("白银市","0028","002804");
subcat[310] = new Array("天水市","0028","002805");
subcat[311] = new Array("武威市","0028","002806");
subcat[312] = new Array("酒泉地区","0028","002807");
subcat[313] = new Array("张掖地区","0028","002808");
subcat[314] = new Array("定西地区","0028","002809");
subcat[315] = new Array("陇南地区","0028","002810");
subcat[316] = new Array("平凉地区","0028","002811");
subcat[317] = new Array("庆阳地区","0028","002812");
subcat[318] = new Array("临夏回族自治州","0028","002813");
subcat[319] = new Array("西宁市","0029","002901");
subcat[320] = new Array("海东地区","0029","002902");
subcat[321] = new Array("海北藏族自治州","0029","002903");
subcat[322] = new Array("黄南藏族自治州","0029","002904");
subcat[323] = new Array("海南藏族自治州","0029","002905");
subcat[324] = new Array("果洛藏族自治州","0029","002906");
subcat[325] = new Array("玉树藏族自治州","0029","002907");
subcat[326] = new Array("海西蒙古族藏族自治州","0029","002908");
subcat[327] = new Array("银川市","0030","003001");
subcat[328] = new Array("石嘴山市","0030","003002");
subcat[329] = new Array("吴忠市","0030","003003");
subcat[330] = new Array("固原市","0030","003004");
subcat[331] = new Array("乌鲁木齐市","0031","003101");
subcat[332] = new Array("克拉玛依市","0031","003102");
subcat[333] = new Array("吐鲁番地区","0031","003103");
subcat[334] = new Array("哈密地区","0031","003104");
subcat[335] = new Array("昌吉回族自治州","0031","003105");
subcat[336] = new Array("博尔塔拉蒙古自治州","0031","003106");
subcat[337] = new Array("巴音郭楞蒙古自治州","0031","003107");
subcat[338] = new Array("阿克苏地区","0031","003108");
subcat[339] = new Array("克孜勒苏柯尔克孜自治州","0031","003109");
subcat[340] = new Array("喀什地区","0031","003110");
subcat[341] = new Array("和田地区","0031","003111");
subcat[342] = new Array("伊犁哈萨克自治州","0031","003112");
subcat[343] = new Array("塔城地区","0031","003113");
subcat[344] = new Array("阿勒泰地区","0031","003114");
subcat[345] = new Array("台北","0032","003201");
subcat[346] = new Array("高雄","0032","003202");
subcat[347] = new Array("基隆","0032","003203");
subcat[348] = new Array("台中","0032","003204");
subcat[349] = new Array("台南","0032","003205");
subcat[350] = new Array("新竹","0032","003206");
subcat[351] = new Array("嘉义","0032","003207");
subcat[352] = new Array("其他","0032","003208");
subcat[353] = new Array("香港","0033","003301");
subcat[354] = new Array("澳门","0034","003401");
subcat[355] = new Array("其他","0035","003501");
subcat[356] = new Array("海拉尔","0005","000513");
subcat[357] = new Array("锡林浩特","0005","000514");
subcat[358] = new Array("东胜","0005","000515");
subcat[359] = new Array("集宁","0005","000516");

	
</script>

<script language="javascript" type="text/javascript">
	var icon = '<img src="images/warning.gif" width="14" height="14" border="0" align="absmiddle"  > ';
	var icon2 = '<img src="images/warningy.gif" width="14" height="14" border="0" align="absmiddle">';
    var info = "<font color=red size=2><b>关键字不能为空</b></font>"; 
   
    		<!--判断举报关键字是否为空-->
    		function check(){
    			 var reporttype = document.getElementById("reporttype").value;
    			 var keyword = document.getElementById("keyword").value;
    			 if(reporttype == 1 ){
    			 	if(keyword == null || keyword ==''){
    			 		// document.getElementById('info').innerHTML=info;
    			 		alert("举报关键字不能为空");
    			 		 return false;
    			 	}
    			 }
    			 return true;
    		}
    
    		<!--提交继续录入-->
    		function resubmit() {
    			
    			//var verifyCode = document.getElementById("verifyCode").value;
    			//var verifyCode_msg = document.getElementById("msg_verifyCode").value;
    			//if(verifyCode == ''){
    				//alert(verifyCode_msg);
    				//return ;
    			//}
	    			if(confirm("请您确认您的个人信息和举报信息！\n您应当保证所举报内容真实。\n若您故意歪曲或捏造事实而造成的一切后果，由您自行承担。")){
						document.forms[0].action = "insertCommonInfo.do?type=1&page=1";
						document.forms[0].onsubmit();
					}else return ;
    			 
			}
			<!--提交完成不录入-->
			function funcSubmit(){
				
				//var verifyCode = document.getElementById("verifyCode").value;
				//var verifyCode_msg = document.getElementById("msg_verifyCode").value;
				//if(verifyCode == ''){
    				//alert(verifyCode_msg);
    				//return ;
    			//}
    			
				if(confirm("请您确认您的个人信息和举报信息！\n您应当保证所举报内容真实。\n若您故意歪曲或捏造事实而造成的一切后果，由您自行承担。")){
						document.forms["form"].action = "/insertCommonInfo.do?type=0&page=1";
						document.forms["form"].onsubmit();
				}else return ;
			}
		    <!--重置-->
		    function freset(obj){ 
		  	 obj.reset(); 
			} 
    

</script>
<script language="javascript" type="text/javascript">

var ImgObj=new Image();   //建立一个图像对象

var AllImgExt=".jpg|.jpeg|.gif|.bmp|.png|"//全部图片格式类型
var FileObj,ImgFileSize,ImgWidth,ImgHeight,FileExt,ErrMsg,FileMsg,HasCheked,IsImg//全局变量 图片相关属性

//以下为限制变量
var AllowExt=".jpg|.jpeg|.gif|.bmp|.png|.txt|.html|.htm|.ppt|.doc|.xls|.xlsx|.zip|.rar|.docx|"
//var AllowExt=".jpg|.jpeg|.gif|.bmp|.png|.doc|.txt|.xls|.xlsx|.rar|.zip|.htm|.html|.wav|.dvd|.vcd|.svcd|.mov|.rm|.avi|.mpeg|.3gp|.mp4|.swf|.ppt|" 
//允许上传的文件类型 ŀ为无限制 每个扩展名后边要加一个"|" 小写字母表示
//var AllowExt=0
var AllowImgFileSize=10;  //允许上传图片文件的大小 0为无限制  单位：KB 

HasChecked=false;


function ShowMsg(msg,tf) //显示提示信息 tf=true 显示文件信息 tf=false 显示错误信息 msg-信息内容
{
  msg=msg.replace("\n","");
  msg=msg.replace(/\n/gi,"<li>");
  if(!tf)
  {
	alert(msg);
    FileObj.outerHTML=FileObj.outerHTML;
    document.getElementById("preview").innerHTML=msg;
    HasChecked=false;
  }
  else
  {
    if(IsImg)

       document.getElementById("preview").innerHTML="<img src='"+ImgObj.src+"' width='60' height='60'>"
    else

     document.getElementById("preview").innerHTML=msg;
    HasChecked=true;
  }
}

function CheckExt(obj)
{
  //ErrMsg="";
  ErrMsg = document.getElementById("msg_uploadFile").value;
  FileMsg="";
  FileObj=obj;
  IsImg=false;
  HasChecked=false;
  ImgFileSize=Math.round(FileObj.size/1024*100)/100;//取得图片文件的大小
  

  if(obj.value=="")return false;
  
  FileExt=obj.value.substr(obj.value.lastIndexOf(".")).toLowerCase();
  if(AllowExt!=0&&AllowExt.indexOf(FileExt+"|")==-1) //判断文件类型是否允许上传
  {
    //ErrMsg="\n该文件类型不允许上传。请上传 "+AllowExt+" 类型的文件，当前文件类型为"+FileExt;
    ShowMsg(ErrMsg,false);
    return false;
  }else{
  	ShowMsg('',true);
  	return true;
  }
  
}

</script>


</head>

<body onload="getProvince();setblock2();">
<div id="header">
  <iframe id="ifrHeader" src="http://www.12377.cn/node_543842.htm" width="100%" height="185" scrolling="no" marginheight="0" frameborder="0"></iframe>
</div>
<div class="wrap">
  <form action="" method="post" enctype="multipart/form-data" name="form" class="dataSubmit" onsubmit="isSubmit(this)" id="form">
  <input type="hidden" name="savePath" value="attchupload2" />
  
  <input id="msg_name" name="enterMessage.name" type="hidden" value="姓名不能为空且不能包含空格!"/>
  <input id="msg_sex" name="enterMessage.sex" type="hidden" value="请选择性别!"/>
  <input id="msg_email" name="enterMessage.email" type="hidden" value="邮箱格式不正确!"/>
  <input id="msg_tel" name="enterMessage.tel" type="hidden" value="电话格式不正确!"/>
  <input id="msg_areacode" name="enterMessage.areacode" type="hidden" value="请选择地域!"/>
  <input id="msg_webname" name="enterMessage.webname" type="hidden" value="名称不能为空!"/>
  <input id="msg_seid" name="enterMessage.seid" type="hidden" value="请选择搜索引擎类型!"/>
  <input id="msg_keyword" name="enterMessage.keyword" type="hidden" value="举报关键字不能为空!"/>
  <input id="msg_appname" name="enterMessage.appname" type="hidden" value="名称不能为空!"/>
  <input id="msg_appsourcecods" name="enterMessage.appsourcecods" type="hidden" value="请选择下载源类别!"/>
  <input id="msg_appsourcename" name="enterMessage.appsourcename" type="hidden" value="其他下载源不能为空!"/>
  <input id="msg_siteurl" name="enterMessage.siteurl" type="hidden" value="网址格式不正确!"/>
  <input id="msg_pageurl" name="enterMessage.pageurl" type="hidden" value="详细网址格式不正确!"/>
  <input id="msg_content" name="enterMessage.content" type="hidden" value="举报信息内容不能为空!"/>
  <input id="msg_uploadFile" name="enterMessage.uploadFile" type="hidden" value="该文件类型不允许上传。请上传“.jpg|.jpeg|.gif|.bmp|.png|.txt|.html|.htm|.ppt|.doc|.xls|.xlsx|.zip|.rar|.docx|”类型的文件！"/>
  <input id="msg_verifyCode" name="enterMessage.verifyCode" type="hidden" value="对不起,请输入验证码!"/>
  
  
    <div class="info">
      <h1><span>举报人基本信息</span></h1>
      <table width="600" border="0" cellspacing="0" cellpadding="0">
      <input id="randIP" name="randIP" type="hidden" value="112.193.102.891443793300183"/>
        <tr>
          <td height="30" align="right"><strong>真实姓名：</strong></td>
          <td><input id="userName" name="reportinputbean.name" type="text" value="" maxlength="40" onBlur="isCheck('userName')" dataType="Require" msg="举报人姓名不能为空" okmsg=" "/>
            <b>*<label style="font-size:10px " id="userNameLabel"></label></b></td>
        </tr>
        
        <tr>
          <td height="30" align="right"><strong>性别：</strong></td>
          <td>
					女<input id="sex" type="radio" name="reportinputbean.sex" value="0" checked="checked"/>
			     	男<input id="sex" type="radio" name="reportinputbean.sex" value="1"/>
			<b>*<label style="font-size:10px " id="sexLabel"></label></b>
		 </td>
        </tr>
        
        <tr>
          <td height="30" align="right"><strong>电子邮箱：</strong></td>
          <td><input id="email" name="reportinputbean.email" type="text" size="35" maxlength="64" value="" onBlur="isCheck('email')" dataType="Email" msg="邮箱格式错误，应" okmsg=" "/>
            <b>*<label style="font-size:10px " id="emailLabel"></label></b>
            </td>
        </tr>
        
        <tr>
          <td height="30" align="right"><strong>电话号码：</strong></td>
          <td><input id="tel" name="reportinputbean.tel" type="text" size="35" maxlength="32" value=""  onBlur="isCheck('tel')" dataType="Phone" msg="电话格式错误，应为" okmsg=" "/>
            <b>*<label style="font-size:10px " id="telLabel"></label></b>
            </td>
        </tr>
        
        <tr>
          <td height="30" align="right"><strong>地域：</strong></td>
          <td><select name="reportinputbean.provincecode" id="SearchBar1_Region21_selProvince" onBlur="isCheck('provincecode')" dataType="Require" msg="请选择地域"  okmsg=" " onChange="changeProvince(this.options[this.selectedIndex].value)">
											
												<option value="" selected="selected">	请选择--</option>
												 <option value="0001" >直辖市</option>
												 <option value="0003" >河北省</option>
												 <option value="0004" >山西省</option>
												 <option value="0005" >内蒙古自治区</option>
												 <option value="0006" >辽宁省</option>
												 <option value="0007" >吉林省</option>
												 <option value="0008" >黑龙江省</option>
												 <option value="0010" >江苏省</option>
												 <option value="0011" >浙江省</option>
												 <option value="0012" >安徽省</option>
												 <option value="0013" >福建省</option>
												 <option value="0014" >江西省</option>
												 <option value="0015" >山东省</option>
												 <option value="0016" >河南省</option>
												 <option value="0017" >湖北省</option>
												 <option value="0018" >湖南省</option>
												 <option value="0019" >广东省</option>
												 <option value="0020" >广西壮族自治区</option>
												 <option value="0021" >海南省</option>
												 <option value="0023" >四川省</option>
												 <option value="0024" >贵州省</option>
												 <option value="0025" >云南省</option>
												 <option value="0026" >西藏自治区</option>
												 <option value="0027" >陕西省</option>
												 <option value="0028" >甘肃省</option>
												 <option value="0029" >青海省</option>
												 <option value="0030" >宁夏回族自治区</option>
												 <option value="0031" >新疆维吾尔自治区</option>
												 <option value="0032" >台湾</option>
												 <option value="0033" >香港</option>
												 <option value="0034" >澳门</option>
												 <option value="0035" >其他</option>
												 
											</select> 省
            <select id="selRegion" name="reportinputbean.citycode" onBlur="isCheck('provincecode')" dataType="Require" msg="请选择城市"  okmsg=" ">
												 <option selected value="">请选择--</option>
											</select>
            <b>*<label style="font-size:10px " id="showAreaMsg"></label></b>
            <input id="prov" name="prov" type="hidden" value="" />
			<input id="city" name="city" type="hidden" value="" />
            </td>
        </tr>
        
        <tr>
          <td height="30" align="right"><strong>通讯地址：</strong></td>
          <td><input id="address" name="reportinputbean.address" size="35" maxlength="128" type="text" value="" />
          </td>
        </tr>
      </table>
    </div>
    <div>
      <h1><span>举报信息</span></h1>
      <table width="500" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="30" align="right"><strong>被举报类型：</strong></td>
          <td><input type="hidden" id="reportype2" name="reportype2" value="" />
										<select name = "reportinputbean.reporttype" id="reporttype" onBlur="isCheck('reportype')" onchange="setblock(this);">
											<option value = "0" >网站</option>
											<option value = "1" >搜索引擎类</option>
											<option value = "2" >手机APP</option>
										</select>
										<b>*<label style="font-size:10px " id="reporttypeLabel"></label></b>
										</td>
        </tr>
        <tr id="reportwayStyle" style="display: none;">
        	<td height="30" align="right"><strong>搜索引擎类型：</strong></td>
        	<td>
        		<input type="hidden" id="seid" name="reportinputbean.seid" value="" />
											<select name="seids" id="seids" onBlur="isCheck('seids')"  >
												<option value=" | " selected="selected">
													请选择--
												</option>
														<option  value="1|http://www.baidu.com|百度" >
															百度
														</option>
														
														<!--<option  value="2|http://www.google.com|谷歌" >
															谷歌
														</option>
														<option  value="3|http://www.yahoo.cn|雅虎" >
															雅虎
														</option>-->
														
														<option  value="5|http://www.zhongsou.com|中搜" >
															中搜
														</option>
														<option  value="6|http://www.360.cn|360" >
															360
														</option>
														<option  value="4|http://www.sogou.com|搜狗" >
															搜狗
														</option>
														<option  value="7|http://cn.bing.com|必应" >
															必应
														</option>
														<option  value="8|http://www.youdao.com|有道" >
															有道
														</option>
														<option  value="9|http://www.soso.com|搜搜" >
															搜搜
														</option>
														<option  value="10|http://www.sina.com.cn|新浪" >
															新浪
														</option>
														<option  value="11| |其他" >
															其他
														</option>
											</select>
											
											<b>*<label style="font-size:10px " id="seidsLabel"></label></b> </td>
        </tr>
        <tr id="keywordstyle" style="display: none;">
			<td height="30" align="right"><strong>举报关键字：</strong></td>
			<td> 
				<input id="keyword" name="reportinputbean.keyword" type="text" value="" onBlur="isCheck('keyword')" maxlength="64" size="40"/><b> *<label style="font-size:10px " id="keywordLabel"></label></b>
				 <span id="info" />
			</td>
		</tr>
		
						<tr id="appnameStyle" style="display: none;" >
          					<td height="30" align="right"><strong>APP名称：</strong></td>
          					<td><input id="appname" name="reportinputbean.appname" value="" onBlur="isCheck('appname')" type="text" maxlength="64" size="40" dataType="Require" msg="名称不能为空"  okmsg=" " />
            				<b>*<label style="font-size:10px " id="appnameLabel"></label></b></td>
       		 			</tr>
       		 			
						<tr id="appsourcecodStyle" style="display: none;" > 
								<td  align="right" height="30"><strong>下载源类别：</strong></td>
								<td>
								<input type="hidden" id="appsourcecods" name="appsourcecods" value="" />
									<select name="reportinputbean.appsourcecod" id="appsourcecod" onBlur="isCheck('appsourcecod')" onchange="setapp(this);" dataType="Require" msg="请选择下载源类别" okmsg=" " >
										<option value="" selected="selected">
											请选择--
										</option>
														<option  value="0" >
															其他
														</option>
														<option  value="1" >
															安卓市场
														</option>
														<option  value="2" >
															安智市场
														</option>
														<option  value="3" >
															机锋市场
														</option>
														<option  value="4" >
															应用汇
														</option>
														<option  value="5" >
															豌豆荚
														</option>
														<option  value="6" >
															91手机助手
														</option>
														<option  value="7" >
															MIUI手机超市
														</option>
														<option  value="8" >
															360手机助手
														</option>
														<option  value="9" >
															苹果APPSTORE
														</option>
									</select>
									<b>*<label style="font-size:10px " id="appsourcecodsLabel"></label></b>
								</td>
						</tr>
						
						<tr id="appsourcenameStyle" style="display: none;" > 
				            <td height="30" align="right"><strong>其他下载源：</strong></td>
							<td>
								<input id="appsourcename" name="reportinputbean.appsourcename" value="" type="text" maxlength="80" onBlur="isCheck('appsourcename')" size="45" dataType="Require" msg="其他下载源不能为空" okmsg=" "/>
								<b>*<label style="font-size:10px " id="appsourcenameLabel"></label></b>
							</td>
						</tr>
						
						<tr id="colStyle" style="display: none;" > 
				            <td height="30" align="right"><strong>被举报应用所在栏目：</strong></td>
							<td>
								<input id="col" name="reportinputbean.col" value="" type="text" size="45" maxlength="80" />
							</td>
						</tr>
						
						<tr id="appvelStyle" style="display: none;" > 
				            <td height="30" align="right"><strong>被举报应用的版本：</strong></td>
							<td>
								<input id="appvel" name="reportinputbean.appvel" value="" type="text" size="45" maxlength="40" />
							</td>
						</tr>
						
        <tr id="webnameStyle" style="display: table-row;" >
          <td height="30" align="right"><strong>网站名称：</strong></td>
          <td><input id="webname" name="reportinputbean.webname" value="" type="text" size="40" maxlength="1000" onBlur="isCheck('webname')" dataType="Require" msg="名称不能为空"  okmsg=" " />
            <b>*<label style="font-size:10px " id="webnameLabel"></label></b></td>
        </tr>
        <tr id="siteurlStyle" style="display: table-row;" >
          <td height="30" align="right"><strong>被举报网址(url)：</strong></td>
          <td><input id="siteurl" name="reportinputbean.siteurl" type="text" size="40" maxlength="1000" value="http://" onBlur="isCheck('siteurl')" dataType="Url" msg="网址"  okmsg=" "/>
            <b>*<label style="font-size:10px " id="siteurlLabel"></label></b></td>
        </tr>
        <tr id="pageurlStyle" style="display: table-row;" >
          <td height="30" align="right"><strong>信息所在详细网址(url)：</strong></td>
          <td><textarea name="reportinputbean.pageurl" id="pageurl" cols="45" rows="5" maxlength="1000" onBlur="isCheck('pageurl')" title="URL格式必须以:http:// 开头 。多个URL，请敲回车 。" dataType="Url" msg="网址"  okmsg=" ">http://</textarea>
            <br />
            <b>*<label style="font-size:10px " id="pageurlLabel"></label></b>多个网址请回车再输入</td>
        </tr>
        <tr>
          <td height="30" align="right"><strong>举报内容：</strong></td>
          <td><textarea name="reportinputbean.content" id="content" cols="45" rows="5" onBlur="isCheck('content')" dataType="Require" msg="举报信息内容不能为空"  okmsg=" "></textarea>
            <br><b>*<label style="font-size:10px " id="contentLabel"></label></b></td>
        </tr>
        <tr>
          <td height="30" align="right"><strong>危害类型：</strong></td>
          <td>
         		<b>
          										暴恐信息
									
				</b>
		   </td>
          <input type="hidden" id="typecatalog" name="reportinputbean.typecatalog" value="0112" />
        </tr>
        
        <tr>
          <td height="30" align="right"><strong>附件：</strong></td>
          <td><input type="file" name="uploadFile" id="uploadFile1" onchange="CheckExt(this)" size="45"/> 
            <br />
            <input type="file" name="uploadFile" id="uploadFile2" onchange="CheckExt(this)" size="45" /> 
            <br />
           <input type="file" name="uploadFile"  id="uploadFile3" onchange="CheckExt(this)" size="45" /></td>
        </tr>
        <font color="red" ><div id="preview" style="display:none"  /> </font>
        <tr>
          <td height="30" align="right"><strong>验证码：</strong></td>
          <td><input name="verifyCode" type="text" id="verifyCode" size="8" maxlength="6" style="width: 70px;" onBlur="isCheck('verifyCode')" title="单击右边验证码,可切换验证码"/>&nbsp; <img alt="单击切换验证码" size="30" onclick="this.src='./common/verifyCode.jsp?'+Math.random()" align="absmiddle" src="./common/verifyCode.jsp"/>
            <b>*</b>单击左边验证码,可切换新的验证码。
            <br><b><label style="font-size:10px " id="verifyCodeLabel"></label></b></td>
        </tr>
        
      </table>
      <table width="500" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="40" align="center">
          <a href='javascript:resubmit();'     hidefocus='true' tabindex='-1' onselectstart='return false' id='proBtn1' title="提交 继续举报" ><img src="/Icons/jibao_2.jpg"></a>
          <a href='javascript:void(0);'   hidefocus='true' tabindex='-1' onselectstart='return false' id='proBtn1' onClick="javascript:resetbutt();"><img src="/Icons/cz_2.jpg"></a>
          <a href='javascript:funcSubmit();'     hidefocus='true' tabindex='-1' onselectstart='return false' id='proBtn1' title="提交 举报完毕"> <img src="/Icons/ti_2.jpg"></a>
          
          </td>
        </tr>
      </table>
    </div>
    <table width="530" border="0" cellspacing="0" cellpadding="0" class="xs">
      <tr>
        <td> 请您在正式提交举报之前确认以下内容：<br />
          1、您应当保证所举报内容与事实一致。若您故意捏造和歪曲事实而造成的一切后果，由您自行承担。<br />
          2、您应当允许工作委员会根据工作需要在保护您的个人权益的前提下，使用您的任何叙述。<br />
          3、请您尽可能填写详实内容，以利于您举报问题的解决。<br />
          4、工作委员会将及时处理您举报的有效内容。<br />
          <!--5、每个用户每小时只能举报三次<br />-->
        5、如您有其它疑问，请认真阅读&quot; <a href="http://www.12377.cn/node_543790.htm" target="_blank">举报指南</a>&quot;。 </td>
      </tr>
    </table>
  </form>
</div>
<div id="footer">
  <iframe id="ifrFooter" src="http://www.12377.cn/node_543843.htm" width="980" height="300" scrolling="no" marginheight="0" frameborder="0"></iframe>
</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="hpe" />

<link rel="stylesheet" type="text/css"
	href="../nkang/assets_athena/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="../nkang/assets_athena/bootstrap/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" type="text/css"
	href="../nkang/assets_athena/font-awesome/css/font-awesome.css" />
<link rel="stylesheet" type="text/css"
	href="../nkang/css_athena/style.css" />
<link rel="stylesheet" type="text/css"
	href="../nkang/css_athena/profile.css" />
<link rel="stylesheet" type="text/css"
	href="../nkang/assets_athena/icomoon/iconMoon.css" />
<link rel="stylesheet" type="text/css"
	href="../nkang/css_athena/style-responsive.css" />
<link rel="stylesheet" type="text/css"
	href="../nkang/css_athena/style-default.css" />
<link rel="stylesheet" type="text/css"
	href="../MetroStyleFiles/sweetalert.css" />
<link rel="stylesheet" type="text/css"
	href="../MetroStyleFiles/CSS/sonhlab-base.css" />
<link rel="stylesheet" type="text/css"
	href="../MetroStyleFiles/CSS/openmes.css" />
	<link rel="stylesheet" type="text/css"
	href="admin.css" />
<link rel="stylesheet" type="text/css" href="../nkang/themes/icon.css">
<link rel="stylesheet" type="text/css" href="../nkang/animate.min.css">

<script type="text/javascript" src="../Jsp/JS/jquery-1.8.0.js"></script>
<link rel="stylesheet" type="text/css"
	href="../MetroStyleFiles//CSS/animation-effects.css" />
<link rel="stylesheet" type="text/css" href="../Jsp/CSS/common.css">
<script src="../nkang/js_athena/jquery.circliful.min.js"></script>
<script src="../nkang/assets_athena/bootstrap/js/bootstrap.js"></script>
<script src="../MetroStyleFiles/sweetalert.min.js"></script>
<script type="text/javascript"
	src="../MetroStyleFiles//JS/openmes.min.js"></script>
<script src="../Jsp/JS/modernizr.js"></script>
<script src="../Jsp/JS/jSignature.min.noconflict.js"></script>
<script type="text/javascript">
var clientThemeColor,HpLogoSrc;
$(window).load(function() {
	getLogoLists();
	getMDLUserLists();
});
function showLogoPanel(id){
	showCommonPanel()
	$("body").append('<div id="WeatherPart" class="bouncePart" style="position:fixed;z-index:999;top:100px;width:80%;margin-left:10%;"><legend>天气</legend><div style="margin-top:0px;margin-bottom: -20px;background-color:#fff;">'
			+'<table style="margin-left:auto;margin-right:auto;">'
			+'	<tr>'
			+'		<td>Logo的url：<input name="ClientCode" type="hidden" value=""/></td>'
			+'		<td><input name="ClientLogo" type="text"/></td>'
			+'	</tr>'
			+'	<tr>'
			+'		<td>公司名称：</td>'
			+'		<td><input name="ClientName" type="text"/></td>'
			+'	</tr>'
			+'	<tr>'
			+'		<td>部门名称：</td>'
			+'		<td><input name="ClientSubName" type="text"/></td>'
			+'	</tr>'
			+'	<tr>'
			+'		<td>版权归属：</td>'
			+'		<td><input name="ClientCopyRight" type="text"/></td>'
			+'	</tr>'
			+'	<tr>'
			+'		<td>主题颜色：</td>'
			+'		<td><input name="ClientThemeColor" type="text"/></td>'
			+'	</tr>'
			+'	<tr>'
			+'		<td>幻灯片url1：</td>'
			+'		<td><input name="Slide1" type="text"/></td>'
			+'	</tr>'
			+'	<tr>'
			+'		<td>幻灯片url2：</td>'
			+'		<td><input name="Slide2" type="text"/></td>'
			+'	</tr>'
			+'	<tr>'
			+'		<td>幻灯片url3：</td>'
			+'		<td><input name="Slide3" type="text"/></td>'
			+'	</tr>'
			+'	<tr>'
			+'		<td colspan="2" style="text-align: center; padding: 0px;">	'
			+'			<button class="btnAthena EbtnLess" style="padding: 0px;background-color:#00B388;" id="tax_submit_button" onclick="">保存</button>												'
			+'		</td>'
			+'	</tr>'
			+'</table>'
			+'							</div>');
	$('#WeatherPart').addClass('form-horizontal bounceInDown animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
	      $(this).removeClass("bounceInDown animated");
	    });
}
function showCommonPanel()
{
	$("body").append("<div  id='data_model_div' style='z-index:999;'  class='dataModelPanel'><img onclick='hideBouncePanel()' src='../MetroStyleFiles/EXIT1.png' style='width: 30px; height: 30px;position:absolute;top:20px;left:20px;' />	<img style='position:absolute;top:8px;right:20px;' class='HpLogo' src='"+HpLogoSrc+"' alt='Logo' class='HpLogo'><div style='width:100%;height:4px;background:"+clientThemeColor+";position:absolute;top:70px;'></div></div>");
	$('#data_model_div').removeClass().addClass('panelShowAnmitation').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
	      $(this).removeClass();
	    }); }
function hideBouncePanel()
{
	$("body").find(".bouncePart").remove();
	$("body").find("#data_model_div").remove();
	}

function getLogoLists() {
	jQuery.ajax({
				type : "GET",
				url : "../QueryClientMetaList",
				data : {},
				cache : false,
				success : function(data) {
					var jsons = data;
					var ul = "",regNumber=0;
					ul='<div class="Work_Mates_div_list_div2">'
						+'							<span class="total_num">总数：'+jsons.length+'</span>'
						+'							<div class="clear"></div>'
						+'						</div>';
					for (var i = 0; i < jsons.length; i++) {
					var temp=jsons[i];
					var buttonText;
					if(temp.clientActive=='Y'){
						buttonText='							<div style="float: right; margin-top: -80px; background-color: #777; color: #fff; font-weight:bold; font-size: 13px; padding: 3px;width:50px;text-align:center;border-radius:6px;">'
							+'								应用中'
							+'							</div>';
						clientThemeColor=temp.clientThemeColor;
						HpLogoSrc=temp.clientLogo;
						$('#logo_now').html('<img'
								+'				src="'+temp.clientLogo+'"'
								+'				alt="Logo" class="HpLogo"'
								+'				style="display: inline !important; height: 30px; float: none; padding: 0px; vertical-align: bottom;"><span'
								+'				class="clientSubName"'
								+'				style="font-size: 12px; padding-left: 7px; color: #333;">'+temp.clientSubName+'</span>'
								+'				<h1 style="color: #333; font-size: 18px;" class="clientName">'+temp.clientName+'</h1>');
						$('#logo_now_color').css('border-color',temp.clientThemeColor);
					}else{
						buttonText='<div style="float: right; margin-top: -80px; background-color: #0197D6; color: #fff; font-weight:bold; font-size: 13px; padding: 3px;width:50px;text-align:center;border-radius:6px;" onclick="updateLogo(\''+temp.clientStockCode+'\')">'
							+'								应用'
							+'							</div>';
					}
						var li='<div class="Work_Mates_div_list_div2" style="padding-bottom:0px !important;">'
		+'							<img'
		+'								src="'+temp.clientLogo+'"'
		+'								alt="Logo" class="HpLogo"'
		+'								style="display: inline !important; height: 30px;padding-left:0px !important;margin-left:0px !important;vertical-align: bottom;"><span'
		+'								class="clientSubName"'
		+'								style="font-size: 12px; padding-left: 7px; color: #333;">'+temp.clientSubName+'</span>'
		+'							<h1 style="color: #333; font-size: 18px;padding-left:0px;" class="clientName">'+temp.clientName+'</h1>'
		+'							<p style="font-size:10px;margin-bottom:3px;margin-top:-3px;">'+temp.clientCopyRight+'</p>'
		+buttonText
		+'							<div style="float: right; margin-top: -50px; background-color: #0197D6; color: #fff; font-weight:bold; font-size: 13px; padding: 3px;width:50px;text-align:center;border-radius:6px;" onclick="showLogoPanel(1)">'
		+'								编辑'
		+'							</div>'
		+'							<div class="clear"></div>'
		+'						</div>';
		ul+=li;
					}
					$("#Logo_div").html(ul);
				}
			});
}
function updateLogo(id){
	jQuery.ajax({
		type : "GET",
		url : "../ActivaeClientMeta",
		data : {clientCode:id},
		cache : false,
		success : function(data) {
			if(data=="true"){
				swal("Congratulations！", "网站LOGO替换成功!", "success"); 
				window.location.reload();
			}
			else{
				swal("网站LOGO替换失败!", "服务器出异常了", "error"); 	
			}
		}
	});
}
function getUserInfo(username, headimgurl, openId) {
	$("#info_interact").css("display","block");
	$("#info_interact2").css("display","block");
	$("#info_imgurl").attr("src",headimgurl);
	//$("#info_username span").html(username+'<img src="../MetroStyleFiles/edit.png" style="height: 20px; cursor: pointer;padding-left:5px;"/>');
jQuery
	.ajax({
		type : "GET",
		url : "../userProfile/getMDLUserLists",
		data : {
			UID : openId
			
		},
		cache : false,
		success : function(data) {
			data = data.replace(/:null/g, ':"未注册"');
			data = '{"results":' + data + '}';
			var jsons = eval('(' + data + ')');
			if (jsons.results.length > 0) {
				$("#info_tag tr").html("");
				$("#info_interact img.like").attr("onclick","toLike('"+username+"','"+jsons.results[0].openid+"')");
				$("#info_interact2 span.like").text(jsons.results[0].like.number==""?0:jsons.results[0].like.number);
				if(jsons.results[0].role!="未注册"){
					$("#info_username span").html(jsons.results[0].realName);
					$("#info_interact img.zan").attr("onclick","recognizationPanelByPerson('"+jsons.results[0].realName+"')");
					$("#info_interact2 span.zan").text(jsons.results[0].CongratulateNum);
					if(jsons.results[0].tag!="未注册"){
						for(var j=0;j<jsons.results[0].tag.length;j++){
							var tag=jsons.results[0].tag[j];
							for (var key in tag) { 
								var td='<td>'
									+'				<div id="'+key+'" data-dimension="70" data-text="'
									+tag[key]
									+'%" data-info="" data-width="8" data-fontsize="18" data-percent="'
									+tag[key]
									+'" data-fgcolor="#FFF" data-bgcolor="#aaa" data-fill=""></div>'
									//+'" data-fgcolor="#61a9dc" data-bgcolor="#eee" data-fill="#ddd"></div>'
									+'				<span style="font-size:12px;">'
									+key
									+'</span>'
									+'														</td>';

								$("#info_tag tr").append(td);
								$('#'+key).circliful();
							}
						}
					}
					data = data.replace(/:"未注册"/g, ':"未编辑"');
					jsons = eval('(' + data + ')');
					$("#info_all").css('display','table');
					$("img.zan").css('display','block');
					$("span.zan").css('display','block');
					$("#info_username span").html(username+'<span style="font-size:13px;">&nbsp;&nbsp;&nbsp;&nbsp;['+jsons.results[0].role+']</span>'+'<img onclick="updateUserInfo(\''+ openId + '\')" src="../MetroStyleFiles/edit.png" style="height: 20px; cursor: pointer;padding-left:5px;"/>');
					$("#info_phone").html("&nbsp;&nbsp;&nbsp;&nbsp;"+jsons.results[0].phone);
					$("#info_group").html("&nbsp;&nbsp;&nbsp;&nbsp;"+jsons.results[0].groupid);
					$("#info_email").html("&nbsp;&nbsp;&nbsp;&nbsp;<a style='color:#fff;' href='mailto:"+jsons.results[0].email+"'>"+jsons.results[0].email+"</a>");
					$("#info_selfIntro").text(jsons.results[0].selfIntro);
				}else{
					$("#info_username span").html('未注册');
					$("img.zan").css('display','none');
					$("span.zan").css('display','none');
					$("#info_all").css('display','none');
					$("#info_selfIntro").text('');
				}
				$('#UserInfo').modal('show');
			}
		}
	});
}
function getMDLUserLists() {
jQuery
	.ajax({
		type : "GET",
		url : "../userProfile/getMDLUserLists",
		data : {},
		cache : false,
		success : function(data) {
			data = '{"results":' + data + '}';
			var jsons = eval('(' + data + ')');
			var ul = "",regNumber=0;
			ul='<div class="Work_Mates_div_list_div2" style="border-bottom:0px;">'
			for (var i = 0; i < jsons.results.length; i++) {
				var temp = jsons.results[i];
				var selfIntro=temp.selfIntro;
				var role=temp.role;
				var workDay=temp.workDay;
				var tag=temp.tag;
				var tagHtml="";
				var congratulate="";
				
				if(temp.openid==$('#uid').val()){
					LastToLikeDate=temp.like.lastLikeDate;
					lastLikeTo=temp.like.lastLikeTo;
				}

				
				
				if(selfIntro==null||selfIntro=='null'){
					selfIntro="nothing";
				}else{
					if(selfIntro.length>10){
						selfIntro=(selfIntro.substr(0,12)+'...');
					}
				}
				if(role==null||role=='null'){
					role="";
				}
				if(tag!=null&&tag!='null'){
					for(var j=0;j<tag.length&&j<4;j++){
						for (var key in tag[j]) { 
							tagHtml+='													<div class="tag">'
							+key
							+'													</div>';
						}
					}
				}
				if(workDay==null||workDay=='null'||workDay==0){
					workDay="";
				}else{
					regNumber++;
					workDay='<div style="float:right;margin-top:-45px;background-color:#eee;color:#333;font-size:13px;padding:3px;">'+workDay+' Days</div>';
				}
				if(temp.congratulateNum==null||temp.congratulateNum=='null'||temp.congratulateNum==undefined||temp.congratulateNum==0){
					
				}else{
					congratulate='<div style="float:right;"><img src="../MetroStyleFiles/reward.png" style="height:25px;"/>'
						+ '<span style="font-size:12px;color:#07090B;font-weight:normal;">'+temp.congratulateNum+'</span><div>';
				}
				var li='	<div class="Work_Mates_div_list_div2">'
					+'                                           	 	<div class="Work_Mates_img_div2">'
					+'                                        			 <img src="'
					+ temp.headimgurl
					+ '" alt="userImage" class="matesUserImage" alt="no_username" onclick="getUserInfo(\''
					+ temp.nickname
					+ '\',\''
					+ temp.headimgurl
					+ '\',\''
					+ temp.openid
					+ '\');"/> '
					+'                                         		</div>'
					+'                                         		<div class="Work_Mates_text_div">'
					+'                                        			 <h2><span  onclick="getUserInfo(\''
					+ temp.nickname
					+ '\',\''
					+ temp.headimgurl
					+ '\',\''
					+ temp.openid
					+ '\');">'
					+ temp.nickname
					+ '</span><span class="role">'
					+role+'</span>'
					+congratulate
					+'</h2>'
					+ '<div>'
					+tagHtml
					+'<br/>'
					+'													<span class="selfIntro">'+selfIntro+'</span>'
					+'												</div>'
					+'                                        		</div>'
					+workDay
					+'                                                <div class="clear"></div>'
					+'                                          </div>';
				ul += li;
			}
			ul='<div class="Work_Mates_div_list_div2">'
			+'<span class="total_num"><img src="../MetroStyleFiles/role.png"/>总人数：'+ jsons.results.length
			+'&nbsp;&nbsp;&nbsp;已注册人数：'+regNumber
			+'</span><div class="clear"></div></div>'+ul;
			$("#Work_Mates_div").html(ul);
		}
	});
}

function updateUserInfo(openId){
	$('#UserInfo').modal('hide');
	$('#updateUserInfoForm').modal('show');
	$.ajax({
		type : "GET",
		url : "../userProfile/getMDLUserLists",
		data : {
			UID : openId
		},
		cache : false,
		success : function(data) {
			data = data.replace(/:null/g, ':"未注册"');
			data = '{"results":' + data + '}';
			var jsons = eval('(' + data + ')');
			if (jsons.results.length > 0) {
				 if(jsons.results[0].IsActive !="未注册"){
					$("input[name='isActived']").attr("checked",jsons.results[0].IsActive);
				}
				if(jsons.results[0].IsAuthenticated !="未注册"){
					$("input[name='isAuthenticated']").attr("checked",jsons.results[0].IsAuthenticated);
				}
				if(jsons.results[0].IsRegistered !="未注册"){
					$("input[name='IsRegistered']").attr("checked",jsons.results[0].IsRegistered);
				}
			    if(jsons.results[0].registerDate !="未注册"){
			    	$("#registerDate").val(jsons.results[0].registerDate.replace(/\//g,"-"));
			    } 
			}
		}
	});
	$("#updateUserInfoBtn").click(function(){
		var isActived = $("input[name='isActived']:checked").val();
		var isAuthenticated = $("input[name='isAuthenticated']:checked").val();
		var isRegistered = $("input[name='isRegistered']:checked").val();
		var registerDate = $("#registerDate").val();
		console.log(isActived+"..."+isAuthenticated+"===="+isRegistered+",,"+registerDate+"...."+openId);
		
		$.ajax({
			url:"../updateUserInfo",
			data:{uid:openId,isActived:isActived,isAuthenticated:isAuthenticated,isRegistered:isRegistered,registerDate:registerDate},
			type:"POST",
			dataType:"json",
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			cache:false,
			async:false,
			success:function(result) {
				if(result){
					$('#updateUserInfoForm').modal('hide');
					swal("updateUserInformation successfully!", "Congratulations!", "success"); 
				} else {
					swal("updateUserInformation fail!", "Pls input your correct information.", "error");
				}
			}
		});
	});
	
}


</script>
<title>admin</title>
</head>
<body style="padding: 0px !important; margin: 0px;">
	<div class="navbar-inner" style="background-color: #fff !important;">
		<div class="container-fluid">
			<a href="../DQMenu?UID=oqPI_xACjXB7pVPGi5KH9Nzqonj4"
				style="float: left; padding-top: 10px;"  id="logo_now"> 
			</a>
			<div class="clear"></div>
			<ul class="nav pull-right top-menu" style="margin-top: -70px;display:none;">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"
					style="font-size: 15px; margin: 0px; padding: 5px 0px;">
						Welcome <span class="username colorBlue" id="username">
							青青～笑 </span>
				</a> <span><a style="float: right;"> <img id="userImage"
							src="http://wx.qlogo.cn/mmopen/3ial0wgAS7u1sBkjFnq8CKfTlENtrYZvREwEhPMmu5FvHbDrYITooGLlmXszwNTVppJTc1ZCeyibZAqpviasUOmYqg4cfLr7lX8/0"
							alt="userImage" class="userImage" onclick="register()">
					</a></span></li>
			</ul>
		</div>
	</div>
	<div class="TABclass">
		<div id="logo_now_color" style="border-top: 4px solid #fff; padding: 5px;">
			<ul class="nav nav-tabs" id="myTabs"
				style="border-color: rgb(0, 179, 136);">
				<li class="active"><a href="#logoElements" data-toggle="tab"
					style="border-right-color: rgb(0, 179, 136); border-top-color: rgb(0, 179, 136); border-left-color: rgb(0, 179, 136);">LOGO管理</a></li>
				<li><a href="#WorkMates" data-toggle="tab"
					style="border-right-color: rgb(0, 179, 136); border-top-color: rgb(0, 179, 136); border-left-color: rgb(0, 179, 136);">人员管理</a></li>
			</ul>
			<div class="tab-content" id="dvTabContent"
				style="border: 0px; padding-top: 0px;margin-top:0px;">
				<div class="tab-pane active" id="logoElements">
					<!-- start logoElements-->
					<div class="Work_Mates_div2" id="Logo_div">
					</div>
					<!-- end logoElements-->

				</div>
				<div id="UserInfo" class="modal hide fade" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel1"
									aria-hidden="true" data-backdrop="static">
									<div class="modal-body readmoreHpop"
										style="white-space: pre-line; padding: 0px;">
										<img src="../MetroStyleFiles/Close2.png" data-dismiss="modal"
											aria-hidden="true"
											style="float: right; height: 27px; cursor: pointer; margin-top: -15px; margin-right: 5px;" />
										<div id="userInfoDiv">
											<div id="info_interact"  style="position: absolute;width:100%;">
												<img class="like" src="../MetroStyleFiles/like.png"/>
												<img class="zan"  data-dismiss="modal" aria-hidden="true" onclick="recognizationPanel()" src="../MetroStyleFiles/zan.png"/>
											</div>
											<div id="info_interact2"
												style="position: absolute; width: 100%; display: block; margin-top: 45px;">
												<span class="like"
													style="float: left; margin-left: 25px; width: 40px; text-align: center;"></span>
												<span class="zan"
													style="float: right; margin-right: 30px; margin-top: -20px; width: 40px; text-align: center;"></span>
											</div>
											<img id="info_imgurl"
												src="http://wx.qlogo.cn/mmopen/soSX1MtHexV6ibXOvfzOoeEwjLFW3dyR80Mic1pzmg5b1qV0EFD4aegic9hic5iawRIDgJIImrY0XybC57j16ka4SabDCqy3TTtd2/0"
												alt="userImage" class="matesUserImage2" style="position: relative;">
											<div id="info_username" style="margin-top:-20px;">
												<span></span>
											</div>
											<table id="info_all">
												<tr>
													<td><img src="../MetroStyleFiles/group2.png"/></td>
													<td><div id="info_group"></div></td>
												</tr>
												<tr>
													<td><img src="../MetroStyleFiles/telephone2.png"/></td>
													<td><div id="info_phone"></div></td>
												</tr>
												<tr>
													<td><img src="../MetroStyleFiles/email2.png"/></td>
													<td><div id="info_email"></div></td>
												</tr>
											</table>
											<div id="info_selfIntro" style="margin-top:-10px;width:100%;text-align:center;"></div>
											<div style="width:100%; padding:0px;margin-top:-35px;margin-bottom:-40px;overflow-x: auto;">
												<table id="info_tag" style="margin-left:auto;margin-right:auto;">
													<tr>
													</tr>
												</table>											
											</div>
										</div>
									</div>
								</div>


							
								<div id="updateUserInfoForm" class="modal hide fade" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel1"
									aria-hidden="true" data-backdrop="static">
									<div class="modal-body"
										style="white-space: pre-line; padding: 0px; margin-top:100px">
										<img src="../MetroStyleFiles/Close2.png" data-dismiss="modal"
											aria-hidden="true"
											style="float: right; height: 27px; cursor: pointer; margin-top: -15px; margin-right: 5px;" />
												<table id="tableForm" style="margin-top:20px;">
												    <tr>
												        <td>是否激活</td>
												        <td class="tdText">
												        	<input type="radio" name="isActived" value="true"/>是&nbsp;&nbsp;&nbsp;<input type="radio" name="isActived" checked="checked" value="false"/>否
												        </td>
												    </tr>
												    <tr>
												        <td>是否验证</td>
												        <td class="tdText">
												        	<input type="radio" name="isAuthenticated" value="true"/>是&nbsp;&nbsp;&nbsp;<input type="radio" name="isAuthenticated" checked="checked" value="false"/>否
												        </td>
												    </tr>
												    <tr>
												        <td>是否注册</td>
												        <td class="tdText">
												        	<input type="radio" name="isRegistered" value="true"/>是&nbsp;&nbsp;&nbsp;<input type="radio" name="isRegistered" checked="checked" value="false"/>否
												        </td>
												    </tr>
												    <tr>
													    <td>注册时间</td>
													    <td class="tdText" >
													    	<input type="date" id="registerDate" required style="text-align: -webkit-center; width: 130px; margin-left: 80px;">
													    </td>
												    </tr>
												 </table>
												 <button class="btnAthena EbtnLess" style="background-color:#00B287;margin-bottom: -35px;" id="updateUserInfoBtn">确定</button>
									</div>
								</div>
				
				
				<div class="tab-pane" id="WorkMates">
					<div class="Work_Mates_div2" id="Work_Mates_div">
						<!-- <div class="Work_Mates_div_list_div2">
							<span class="total_num"><img
								src="../MetroStyleFiles/role.png">总人数：44&nbsp;&nbsp;&nbsp;已注册人数：12</span>
							<div class="clear"></div>
						</div>
						<div class="Work_Mates_div_list_div2">
							<div class="Work_Mates_img_div2">
								<img
									src="http://wx.qlogo.cn/mmopen/3ial0wgAS7u3B8Oc7LqK5ZJb3ViaMo87OiaoNqLjWrKk7TLtITLqbMXWjWEZDGxZbn6ZpuiaKU1PiasiaiaULdSSW3scW9S1b9uWzt9/0"
									alt="userImage" class="matesUserImage"
									onclick="getUserInfo('康宁','http://wx.qlogo.cn/mmopen/3ial0wgAS7u3B8Oc7LqK5ZJb3ViaMo87OiaoNqLjWrKk7TLtITLqbMXWjWEZDGxZbn6ZpuiaKU1PiasiaiaULdSSW3scW9S1b9uWzt9/0','oqPI_xLq1YEJOczHi4DS2-1U0zqc');">
							</div>
							<div class="Work_Mates_text_div">
								<h2>
									<span
										onclick="getUserInfo('康宁','http://wx.qlogo.cn/mmopen/3ial0wgAS7u3B8Oc7LqK5ZJb3ViaMo87OiaoNqLjWrKk7TLtITLqbMXWjWEZDGxZbn6ZpuiaKU1PiasiaiaULdSSW3scW9S1b9uWzt9/0','oqPI_xLq1YEJOczHi4DS2-1U0zqc');">康宁</span><span
										class="role">Team Lead</span>
									<div style="float: right;">
										<img src="../MetroStyleFiles/reward.png" style="height: 25px;"><span
											style="font-size: 12px; color: #07090B; font-weight: normal;">11</span>
										<div></div>
									</div>
								</h2>
								<div>
									<div class="tag">java</div>
									<div class="tag">html</div>
									<div class="tag">webservice</div>
									<div class="tag">etl</div>
									<br> <span class="selfIntro">写点什么吧又不知道写什么...</span>
								</div>
							</div>
							<div
								style="float: right; margin-top: -45px; background-color: #eee; color: #333; font-size: 13px; padding: 3px;">907
								Days</div>
							<div class="clear"></div>
						</div> -->

					</div>
				</div>
				
				
				
			</div>
		</div>
	</div>
</body>
</html>
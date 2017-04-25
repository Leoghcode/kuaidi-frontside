<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Base page</title> 
<script src="myjs/jquery.js"></script>
<script src="myjs/jquery.min.js"></script>
<script src="myjs/jquery.address.js"></script>
<script src="semantic/semantic.js"></script>
<script src="semantic/semantic.min.js"></script>

<link type="text/css" rel="stylesheet" href="semantic/semantic.css" />
<link type="text/css" rel="stylesheet" href="semantic/semantic.min.css" />
<!-- <link type="text/css" rel="stylesheet" href="mystyle/myclassp1.css" />-->
<link type="text/css" rel="stylesheet" href="mystyle/header2.css" />
<link type="text/css" rel="stylesheet" href="mystyle/middleBody2.css" />
<link type="text/css" rel="stylesheet" href="mystyle/exactContent2.css" />
<link type="text/css" rel="stylesheet" href="mystyle/createChart2.css" />

<style type="text/css">


</style>


</head>


<body>
<div class="pageHead">
	<div class="ui" id="headTitle">
		<div class="content">物流系统</div>
		<i class="huge anchor icon"></i>
	</div>
	
	<div class="ui secondary pointing menu" id="topmenu">
		<a class="active item" data-tab="sm1">快递入库</a>
		<a class="item" data-tab="sm2">快递取件</a>
		<a class="item" data-tab="sm3">寄送快递</a>
		<a class="item" data-tab="sm4">违禁品查询</a>
		<a class="item" data-tab="sm5">高级管理</a>
	</div>
</div>
<div class="middleBody" id="middleBody">
	
	<div class="leftSidePart">
		<div class="logWindow ui top attached tabular menu">
			<a class="active blue item" data-tab="myLogin">登录</a>
			<a class="item" data-tab="myRegister">注册</a>
		</div>
		<div class="ui bottom attached tab segment active" data-tab="myLogin">
			<form class="ui form">
				<div class="inline field">
					<label>账号</label>
					<input type="text" name="account"/>
				</div>
				<div class="inline field">
					<label>密码</label>
					<input type="password" name="password"/>
				</div>
				<div class="inline field">
					<div class="ui checkbox">
						<input type="checkbox"/>
						<label>记住我</label>
					</div>
					<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<button class="ui green button mylogin" type="submit" >登录</button>
				</div>
			</form>
		</div>
		<div class="ui bottom attached tab segment" data-tab="myRegister">
			<form class="ui form">
				<div class="inline field">
					<label>账号</label>
					<input type="text" name="account"/>
				</div>
				<div class="inline field">
					<label>密码</label>
					<input type="password" name="password"/>
				</div>
				<div class="inline field">
					<button class="ui green button myRegister" type="submit" >注册</button>
				</div>
			</form>
		</div>
	
		<div id="sidemenu">
			<div class="ui link list tab menu segment active" data-tab="sm1">
				<a class="active item" data-tab="hwcx">快递入柜</a>
				<a class="item">快递入架</a>
				<a class="item">架柜相转</a>
			</div>
			<div class="ui link list tab menu segment" data-tab="sm2">
				<a class="active item" data-tab="hwcx">货物查询</a>
				<a class="item" data-tab="qjjl">取件记录</a>
				<a class="item" data-tab="gqqj">过期取件</a>
			</div>
			<div class="ui link list tab segment" data-tab="sm3">
				<a class="active item">4</a>
				<a class="item">5</a>
				<a class="item">6</a>
				<a class="item"></a>
			</div>
			<div class="ui link list tab segment" data-tab="sm4">
				<a class="active item">7</a>
				<a class="item">8</a>
				<a class="item">9</a>
				<a class="item"></a>
			</div>
			<div class="ui link list tab menu segment" style="border:0" data-tab="sm5">
				<a class="active item" data-tab="createChart">生成报表</a>
				<a class="active item" data-tab="addContainer">添加货柜</a>
			</div>
		</div>
	</div>
	<div class="rightContent" id="rightContent">
		<!-- <p class="myclassp">Myclassp</p> -->
		<div class="ui tab segment" data-tab="addContainer">
			<form class="ui form">
				<h3 class="ui dividing header">请完善新货柜信息！</h3>
				<div class="field">
					<label>添加类型</label>
					<select class="form-control">
						<option>货架</option>
						<option>货柜</option>
					</select>
				</div>
				<div class="field inline">
					<label>数量</label>
					<div class="three fields inline">
						<div class="two wide field">
							<label>大</label>
							<input class="one wide" type="text" name="bigCell" />
						</div>
						<div class="three wide field">
							<label>中</label>
							<input class="one wide" type="text" name="middleCell" />
						</div>
						<div class="three wide field">
							<label>小</label>
							<input type="text" name="smallCell" />
						</div>
					</div>
				</div>
				<div class="field">
					<label>货柜名称</label>
					<input type="text" name="containerName" />
				</div>
				<div class="field inline">
					<button class="ui green button" type="submit">添加</button>
					<button class="ui red button" type="submit">取消</button>
				</div>
			</form>
		</div>
		
		
	</div>




	

</div>
<script type="text/javascript">
$(function (){
    $('.menu .item').tab();
    $('.ui.checkbox').checkbox();
    setRCHeight();
})
function setRCHeight(){
	var obj=document.getElementById("middleBody");
	var rightContent=document.getElementById("rightContent");
	var style=null;
	if(window.getComputedStyle){
		style=window.getComputedStyle(obj,null);
	}
	else{
		style=obj.currentStyle;
	}
	rightContent.style.height=style.height;
	//alert("middleBody height:"+style.height);
}
</script>
</body>
</html>
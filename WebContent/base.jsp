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
<link type="text/css" rel="stylesheet" href="mystyle/header.css">
<link type="text/css" rel="stylesheet" href="mystyle/createChart.css">
<link type="text/css" rel="stylesheet" href="mystyle/middleBody.css">
<link type="text/css" rel="stylesheet" href="mystyle/exactContent.css">


<style type="text/css">






/**/

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
			</div>
		</div>
	</div>
	<div class="rightContent" id="rightContent">
	
	
	
<!--1.kdrg  -->
		<div class="ui tab segment" data-tab="kdrg" id="kdrg">
			<div class="ui form">
				<div class="field">
					<label><i class="bag icon"></i>输入货物单号</label>
					<div class="inline field">
						<input  type="text" name="huowudanhao" />
						<button class="ui yellow button">扫描条形码</button>
					</div>
				</div>
				
				<div class="field">
					<label><i class="bag icon"></i>是否通过安检</label>
					<div class="inline field">
						<div class="ui checkbox">
								<input type="checkbox"/>
							<label>是</label>
						</div>
						<div class="ui checkbox">
								<input type="checkbox"/>
							<label>否</label>
						</div>
					</div>
				</div>
				
				<div class="field">
					<label><i class="bag icon"></i>输入存放位置</label>
					<div class="inline field">
						<input type="text" name="cunfangweizhi" />
						<button class="ui yellow button">同步智能柜</button>
					</div>
				</div>
				<div class="field">
					<button class="ui primary button">确认收货</button>
				</div>
			</div>
		</div>
<!--1.kdrg  -->	
	
<!--2.hwcx  -->	
		<div class="ui tab segment" data-tab="hwcx" id="hwcx">
			<div id="hwTitle">货物查询</div>
			<form class="ui form">
					<div class="formline">
						<div class="ui checkbox">
							<input type="checkbox" />
						</div>
						<div class="inline field">
							<label>快递单号:</label>
							<input type="text" name="kdNumber"/>
						</div>
						
					</div>
					
					<div class="formline">
						<div class="ui checkbox">
							<input type="checkbox" />
						</div>
						<div class="inline field">
							<label>取件号:</label>
							<input type="text" name="qjNumber"/>
						</div>
					</div>
					
					
					<div class="formline">
						<div class="ui checkbox">
							<input type="checkbox" />
						</div>
						<div class="inline field">
							<label>手机号:</label>
							<input type="text" name="phoneNumber"/>
						</div>
					</div>
					<div class="field">
						<button class="ui five wide blue button" type="submit">查询</button>
					</div>
			</form>

			<table class="ui celled table">
				<thead>
					<tr>
						<th>货物单号</th>
						<th>位置信息</th>
						<th>入库时间</th>
						<th>滞留时间</th>
						<th>取件操作</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>ID01</td>
						<td>G54</td>
						<td>2017/4/17 13:00:00</td>
						<td>48h</td>
						<td><button class="ui yellow button">开柜取件</button></td>
					</tr>
					<tr>
						<td>ID03</td>
						<td>G56</td>
						<td>2017/4/17 13:00:00</td>
						<td>48h</td>
						<td><button class="ui yellow button">开柜取件</button></td>
					</tr>
					<tr>
						<td>ID07</td>
						<td>G34</td>
						<td>2017/4/17 13:00:00</td>
						<td>48h</td>
						<td><button class="ui yellow button">开柜取件</button></td>
					</tr>
					<tr>
						<td>ID09</td>
						<td>G04</td>
						<td>2017/4/17 13:00:00</td>
						<td>48h</td>
						<td><button class="ui yellow button">开柜取件</button></td>
					</tr>
					<tr>
						<td>ID06</td>
						<td>G26</td>
						<td>2017/4/17 13:00:00</td>
						<td>48h</td>
						<td><button class="ui yellow button">开柜取件</button></td>
					</tr>
				</tbody>
			</table>
		</div>	
<!--2.hwcx  -->

	
<!--2.qjjl  -->
		<div class="ui tab segment" data-tab="qjjl" id="qjjl">
			<div id="qjTitle">取件记录</div>
			<table class="ui celled table">
				<thead>
					<tr>
						<th>货物单号</th>
						<th>位置信息</th>
						<th>取件时间</th>
						<th>手动/自动</th>
						<th>操作人员</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>ID01</td>
						<td>G54</td>
						<td>2017/4/17 13:00:00</td>
						<td>手动</td>
						<td>管理员1</td>
					</tr>
					<tr>
						<td>ID02</td>
						<td>G56</td>
						<td>2017/4/17 13:00:00</td>
						<td>自动</td>
						<td>客户</td>
					</tr>
					<tr>
						<td>ID03</td>
						<td>G57</td>
						<td>2017/4/17 13:00:00</td>
						<td>自动</td>
						<td>客户</td>
					</tr>
					<tr>
						<td>ID04</td>
						<td>G58</td>
						<td>2017/4/17 13:00:00</td>
						<td>自动</td>
						<td>客户</td>
					</tr>
					<tr>
						<td>ID05</td>
						<td>G60</td>
						<td>2017/4/17 13:00:00</td>
						<td>自动</td>
						<td>客户</td>
					</tr>
				</tbody>
			</table>
		</div>	
<!--2.qjjl  -->	
	
<!--2.gqqj  -->	
		<div class="ui tab segment" data-tab="gqqj" id="gqqj">
			<div id="gqTitle">过期快递</div>
			<table class="ui celled table">
				<thead>
					<tr>
						<th>货物单号</th>
						<th>位置信息</th>
						<th>入库时间</th>
						<th>滞留时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>ID01</td>
						<td>G54</td>
						<td>2017/4/17 13:00:00</td>
						<td>48h</td>
						<td><button class="ui yellow button">强制开柜</button></td>
					</tr>
					<tr>
						<td>ID03</td>
						<td>G56</td>
						<td>2017/4/17 13:00:00</td>
						<td>48h</td>
						<td><button class="ui yellow button">强制开柜</button></td>
					</tr>
					<tr>
						<td>ID07</td>
						<td>G34</td>
						<td>2017/4/17 13:00:00</td>
						<td>48h</td>
						<td><button class="ui yellow button">强制开柜</button></td>
					</tr>
					<tr>
						<td>ID09</td>
						<td>G04</td>
						<td>2017/4/17 13:00:00</td>
						<td>48h</td>
						<td><button class="ui yellow button">强制开柜</button></td>
					</tr>
					<tr>
						<td>ID06</td>
						<td>G26</td>
						<td>2017/4/17 13:00:00</td>
						<td>48h</td>
						<td><button class="ui yellow button">强制开柜</button></td>
					</tr>
				</tbody>
			</table>
		</div>	

<!--gqqj  -->	


	
	
<!--5.scbb  -->
		<div class="ui tab segment" data-tab="createChart" id="scbb">
			<div class="createChartP1">
				<p class="chartTitle1">查询条件</p>
				<form class="ui form chaxunform">
					<div class="inline fields">
						<div class="inline field">
							<label>日期</label>
							<input type="date" name="begintime"/>
							<input type="date" name="endtime" />
						</div>
						<div class="inline field">
							<div class="ui checkbox">
								<input type="checkbox"/>
							<label>流水量</label>
							</div>
						</div>
						<div class="inline field">
							<div class="ui checkbox">
								<input type="checkbox"/>
							<label>快递种类</label>
							</div>
						</div>
						<div class="inline field">
							<button class="ui blue button">查询</button>
						</div>
					</div>
				</form>
			</div>
			<div class="createChartP2">
				<p class="chartTitle2">结果图表</p>
				<table class="ui table">
					<thead>
						<tr>
							<th>Column1</th>
							<th>Column2</th>
							<th>Column3</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>xxx</th>
							<th>xxx</th>
							<th>xxx</th>
						</tr>
						<tr>
							<th>xxx</th>
							<th>xxx</th>
							<th>xxx</th>
						</tr>
					</tbody>
				</table>
				<br /><br /><br />
				<p>这里是两个图</p>
				<br /><br /><br />
				<div class="inline field">
					<button class="ui blue button" type="submit">打印报表</button>
					<button class="ui red button" type="submit">纠错</button>
				</div>
			</div>
		</div>
<!--scbb  -->	
	
	
	
	
		
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
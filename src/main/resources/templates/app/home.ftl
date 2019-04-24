<html>

	<head>
		<meta charset="UTF-8">
		<title>汽车租赁</title>
		<link rel="stylesheet" href="../bootstrap-3.3.7-dist/css/bootstrap.min.css" />
		<link href="../css/css.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../static/public/js/jquery-2.1.0.js"></script>
		<script type="text/javascript" src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<style>
			.subnav li {
				width: 110px;
				height: 110px;
				line-height: 22px;
				overflow: hidden;
			}

			.subnav li a {
				height: 22px;
				line-height: 24px;
				overflow: hidden;
				display: block;
			}
		</style>
	</head>

	<body>
        <#include "../model/head.ftl">
		<div class="main">
			<!-- 页面的左边区域 -->
			<div class="main-left">
				<div class="yuding">
					<p class="tab2" id="tabll_2">
						<a href="#">自驾短租（1-6天）</a>
					</p>
					<div class="clear"></div>

					<!--<script>
						var cityData = { "Rows": [{ "id": "17", "name": "\u5317\u4eac" }] };
						// cityData = eval("("+cityData+")");
						var storeData = { "Rows": [{ "id": "16", "name": "\u6d77\u53e3\u706b\u8f66\u7ad9\u5e97", "carnum": "27", "TopID": "13" }, { "id": "28", "name": "\u7f8e\u5170\u673a\u573a\u5e97", "carnum": "32", "TopID": "13" }, { "id": "29", "name": "\u6d77\u53e3\u4e1c\u7ad9\u5e97", "carnum": "25", "TopID": "13" }, { "id": "30", "name": "\u6d77\u53e3\u5357\u7ad9\u5e97", "carnum": "24", "TopID": "13" }, { "id": "37", "name": "\u897f\u4e09\u73af\u5e97", "carnum": "0", "TopID": "17" }] };
					</script>-->

					<div class="form-box" id="tabcc_1">
						<form name="form1" id="form1" action="/customerCarList" method="get" onsubmit="return checkform1()">
							<input type="hidden" name="flag" value="s">
							<#--<div id="divgetCity" class="cicle pos1" onclick="stopBubble(event);" style="display:none;"></div>-->
							<#--<div id="divgetStore" class="cicle pos2" onclick="stopBubble(event);" style="display:none;"></div>-->
							<#--<div id="divretCity" class="cicle pos3" onclick="stopBubble(event);" style="display:none;"></div>-->
							<#--<div id="divretStore" class="cicle pos4" onclick="stopBubble(event);" style="display:none;"></div>-->
							<table width="97%" border="0" cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										<td width="77" height="44" align="center"><strong>取车门店：</strong></td>
										<td width="250" align="left">
											<select name="vehiclegetAddr">
												<option value="小南门">山西大同大学小南门</option>
												<option value="大南门">山西大同大学大南门</option>
												<option value="北校区门口">山西大同大学北校区门口</option>
											</select>
                                            <#--<input name="getCity" id="getCity" onclick="" class="borinp" value=""  type="text" />-->
                                            <#--<input type="hidden" name="CityID" id="CityID" value="">-->
										</td>
										<#--<td align="left">-->
                                            <#--<input name="getStore" id="getStore" onclick="" type="text" class="borinp" value="" readonly="" />-->
                                            <#--<input type="hidden" name="StoreID" id="StoreID" value="" /></td>-->

									</tr>
									<tr>
										<td height="44" align="center"><strong>还车门店：</strong></td>

										<td align="left" width="250">
                                            <select name="vehiclegetAddr">
                                                <option value="小南门">山西大同大学小南门</option>
                                                <option value="大南门">山西大同大学大南门</option>
                                                <option value="北校区门口">山西大同大学北校区门口</option>
                                            </select>

											<#--<input type="text" name="retCity" id="retCity" onclick="" class="borinp" value="" readonly=""><input type="hidden" name="retCityID" id="retCityID" value="">-->
										</td>
										<#--<td align="left">-->
											<#--<input name="retStore" id="retStore" onclick="" type="text" class="borinp" value="" readonly=""><input type="hidden" name="retStoreID" id="retStoreID" value="">-->
										<#--</td>-->

									</tr>
									<tr>
										<td height="44" align="center"><strong>取车时间：</strong></td>
										<td align="left" colspan="2">
                                            <input name="beginTime" id="d123" type="text" style="width: 252px" onclick="WdatePicker()">
                                        </td>

									</tr>
									<tr>
										<td height="44" align="center"><strong>还车时间：</strong></td>
										<td align="left" colspan="2">
											<input  name="endTime" id="d124" value="" type="text" style="width: 252px" onclick="WdatePicker()">
                                        </td>
									</tr>
									<tr>
										<td height="44"></td>
										<td colspan="2" valign="bottom"><input type="submit" name="Submit" value="开始预订" class="order-btn-20"></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>

				</div>
			</div>

			<!--
	作者：offline
	时间：2019-04-21
	描述：轮播图
-->

			<div class="main-right">

				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="../img/565aff1736515.jpg" alt="...">

						</div>
						<div class="item">
							<img src="../img/565afe3926a3a.png" alt="...">
						</div>
						<div class="item">
							<img src="../img/565b03bca33f4.jpg" alt="...">
							<div class="carousel-caption">
							</div>
						</div>
					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>

			</div>
		</div>

		<div class="main">
			<!-- 页面的左边区域 -->
			<div class="main-left">

				<!-- 公告活动 -->
				<div class="service ">
					<div class="title">
						<h2>公告&amp;活动</h2>
						<a href="#" target="_blank">+更多</a>
					</div>
					<div class="clear"></div>
					<div style="width:310px; height:165px; margin:0 auto;overflow:hidden;">
						<div id="adactive" style="width: 310px; height: 165px; position: relative;">
							<ul class="switchable-content" style="position: absolute; width: 9999px;">
								<li style="float: left;">
									<a href="#" target="_blank"><img src="../img/565aff1736515.jpg" alt=""></a>
								</li>
							</ul>
							<div class="switchable-nav">
								<ol class="switchable-nav-ol">
									<li class="active switchable-trigger-internal">1</li>
								</ol>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					<ul class="news">
					</ul>

				</div>

			</div>
			<!-- 页面的右边部分 -->
			<div class="main-right">

				<!-- 页面车型展示部分 -->
				<div class="chexing">
					<div class="tle">
						<h2>热租车型</h2>
						<a href="#" target="_blank">+更多车型</a>
						<div class="clear"></div>
					</div>

					<ul class="car" style="margin-top: 15px;">
						<li>
							<a href="#" target="_blank" title="点击查看大图"><img src="../img/565a89345520b.jpg" alt="丰田凯美瑞"></a>
							<p class="p4"><strong>丰田凯美瑞</strong><b>500</b>元/日</p>
							<p class="a2">
								<a href="#" target="_blank">开始预订</a>
								<a href="javascript:void(0)" class="ysq">预授权<span>10000</span>元</a>
							</p>
							<div class="clear"></div>
							<p></p>
						</li>
						<li>
							<a href="#" target="_blank" title="点击查看大图"><img src="../img/5655c3c8e52e3.jpg" alt="别克凯越"></a>
							<p class="p4"><strong>别克凯越</strong><b>200</b>元/日</p>
							<p class="a2">
								<a href="#" target="_blank">开始预订</a>
								<a href="javascript:void(0)" class="ysq">预授权<span>5000</span>元</a>
							</p>
							<div class="clear"></div>
							<p></p>
						</li>
						<li>
							<a href="#" target="_blank" title="点击查看大图"><img src="../img/57cfd2467a4e3.jpg" alt="大众帕萨特"></a>
							<p class="p4"><strong>大众帕萨特</strong><b>500</b>元/日</p>
							<p class="a2">
								<a href="#" target="_blank">开始预订</a>
								<a href="javascript:void(0)" class="ysq">预授权<span>10000</span>元</a>
							</p>
							<div class="clear"></div>
							<p></p>
						</li>

					</ul>
					<div class="clear"></div>

				</div>

			</div>
			<div class="clear"></div>
		</div>

        <!-- 页面底部导航 -->
        <ul class="subnav">
			<li>
				<b><a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=index&amp;catid=1">新手上路</a></b>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=1" target="_blank" title="租车手续">租车手续</a>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=2" target="_blank" title="服务范围">服务范围</a>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=3" target="_blank" title="租车价格">租车价格</a>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=4" target="_blank" title="取还车流程">取还车流程</a>
			</li>
			<li>
				<b><a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=index&amp;catid=4">收费及结算</a></b>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=5" target="_blank" title="租期计费方式">租期计费方式</a>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=6" target="_blank" title="结算流程">结算流程</a>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=7" target="_blank" title="支付方式">支付方式</a>
			</li>
			<li>
				<b><a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=index&amp;catid=7">紧急事务处理</a></b>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=8" target="_blank" title="保险责任">保险责任</a>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=31" target="_blank" title="事故处理">事故处理</a>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=11" target="_blank" title="理赔流程">理赔流程</a>
			</li>
			<li>
				<b><a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=index&amp;catid=8">章程与规则</a></b>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=12" target="_blank" title="积分规则">积分规则</a>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=13" target="_blank" title="权益规则">权益规则</a>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=14" target="_blank" title="会员章程">会员章程</a>
			</li>
			<li>
				<b><a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=index&amp;catid=12">客户服务</a></b>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=15" target="_blank" title="门店查询">门店查询</a>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=16" target="_blank" title="咨询与投诉">咨询与投诉</a>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=17" target="_blank" title="联系方式">联系方式</a>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=18" target="_blank" title="诚招英才">诚招英才</a>
			</li>
			<li>
				<b><a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=index&amp;catid=13">服务承诺</a></b>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=30" target="_blank" title="车辆保险承诺">车辆保险承诺</a>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=20" target="_blank" title="租车还车快捷">租车还车快捷</a>
				<a href="http://www.shuntianshi.com.cn/index.php?m=news&amp;a=detail&amp;id=21" target="_blank" title="顺天时服务承诺">顺天时服务承诺</a>
			</li>
			<img src="../img/tu_117.gif">

		</ul>

        <!-- 网页底部 -->
		<#include "../model/foot.ftl">
	</body>
    <script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>
</html>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>确认订单</title>
		<link href="../css/css.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../static/public/js/jquery-2.1.0.js"></script>
		<script type="text/javascript" src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

	</head>

	<body>
	<#if Session["userName"]??>
		<#include "../model/headIndex.ftl">
	<#else>
		<#include "../model/head.ftl">
	</#if>
				<#--<#include "../model/head.ftl">-->

    <div class="main">

			<!-- 新闻列表部分 -->
			<div class="newlist" style="width:1180px">
				<div class="t1">

					<img src="../../static/img/tu_10.gif" width="22" height="21">
					<h2>确认订单</h2>
					<font>您的位置：
						<a href="http://www.shuntianshi.com.cn/" title="">首页</a> &gt; 确认订单</font>
					<div class="clear"></div>

				</div>

				<!--<script>
					var busData = { "Rows": [{ "ID": "16", "CityID": "13", "Name": "\u6d77\u53e3\u706b\u8f66\u7ad9\u5e97", "HotelNum": "27" }, { "ID": "28", "CityID": "13", "Name": "\u7f8e\u5170\u673a\u573a\u5e97", "HotelNum": "32" }, { "ID": "29", "CityID": "13", "Name": "\u6d77\u53e3\u4e1c\u7ad9\u5e97", "HotelNum": "25" }, { "ID": "30", "CityID": "13", "Name": "\u6d77\u53e3\u5357\u7ad9\u5e97", "HotelNum": "24" }, { "ID": "37", "CityID": "17", "Name": "\u897f\u4e09\u73af\u5e97", "HotelNum": "0" }] };
				</script>-->
				<script language="javascript" type="text/javascript" src="../js/PickOrder.js"></script>
				<form name="myform" action="/customerOrder" method="post">
					<input type="hidden" name="carid" value="56">
					<input type="hidden" name="getcity" id="getcity" value="37">
					<input type="hidden" name="retcity" id="retcity" value="37">
					<input type="hidden" name="flag" value="0">
					<div class="ddmx-content">
						<div class="ddmx-main">
							<div class="ddmx-left">
								<a href="http://www.shuntianshi.com.cn/index.php?m=duan_zu&amp;a=detail&amp;id=56" target="_blank" title="点击查看大图"><img src="../img/565a899148f2e.jpg" alt="别克凯悦" class="ddmx-img"></a>
							</div>
							<ul class="ddmx-right">
								<li>
									<div class="inf-name"><span class="value">
										<input name="vehicleName" value="${(vehicel.vehicleName)!"凯迪拉克"}">
										&nbsp;&nbsp;&nbsp; 自动档//</span><br>
										<p>
											短租：<strong>
											<input name="vehiclePrice" value="${(vehicel.vehiclePrice)!"200"}">
                                       </strong>元/天 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<br> 预授权：
											<strong>5000</strong>元</p>
									</div>

								</li>
								<li class="bot">
									<table border="0" width="100%" cellspacing="1" bgcolor="#ddd" style="margin-top:10px">
										<tbody>
											<tr>
												<td width="16%" height="40" align="center" bgcolor="#eeeeee" class="key"><i class="takeCar"></i>取车：</td>
												<td width="44%" bgcolor="#FFFFFF">
													<div class="date-box">
                                                        <input name="beginTime" id="d123" type="text" style="width: 252px" onclick="WdatePicker()">

                                                        <#--<input type="datetime-local" value="2014"/>-->
													</div>
												</td>
												<td width="40%" bgcolor="#FFFFFF">
													<div class="s_box">
                                                        <select class="date-box" name="vehiclegetAddr">
                                                            <option value="小南门">山西大同大学小南门</option>
                                                            <option value="大南门">山西大同大学大南门</option>
                                                            <option value="北校区门口" selected = "selected">山西大同大学北校区门口</option>
                                                        </select>
														<#--<input class="city" id="getcityname" readonly="" type="text" value="西三环店">-->
														<#--<span class="sel-city" id="PickupCity" onclick="getStoreOnClick();stopBubble(event);">[选择]</span>-->
														<#--<div id="divgetStore" class="cicle pos10" onclick="stopBubble(event);" style="display:none;"></div>-->
													</div>
												</td>

											</tr>
											<tr>
												<td width="16%" height="40" align="center" bgcolor="#eeeeee" class="key"><i class="takeCar"></i>还车：</td>
												<td width="44%" bgcolor="#FFFFFF">
													<div class="date-box">
														<div class="date-box">
                                                            <input name="endTime" id="d123" type="text" style="width: 252px" onclick="WdatePicker()">

                                                            <#--<input type="datetime-local" value=""/>-->
														</div>
													</div>
												</td>
												<td width="40%" bgcolor="#FFFFFF">
													<div class="s_box">
                                                        <select class="date-box" name="vehiclebackAddr">
                                                            <option value="小南门">山西大同大学小南门</option>
                                                            <option value="大南门">山西大同大学大南门</option>
                                                            <option value="北校区门口" selected = "selected">山西大同大学北校区门口</option>
                                                        </select>
														<#--<input class="city" id="retcityname" readonly="" type="text" value="西三环店">-->
														<#--<span class="sel-city" id="PickupCity" onclick="retStoreOnClick();stopBubble(event);">[选择]</span>-->
														<#--<div id="divretStore" class="cicle pos11" onclick="stopBubble(event);" style="display:none;"></div>-->
													</div>
												</td>

											</tr>

										</tbody>
									</table>
								</li>
							</ul>
							<div class="clear"></div>

							<div style="margin:10px 0 10px 300px">
								<input type="submit"  border="0" value="确认订单" name="submit2" /></div>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</form>
			</div>
			<div class="clear"></div>
		</div>

		<div class="clear"></div>

			<#include "../model/foot.ftl">

	</body>
    <script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>

</html>
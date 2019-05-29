<html>
	<head>
		<meta charset="UTF-8">
		<title>汽车列表</title>

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

		<div class="main"><!-- 新闻列表部分 -->
    		<div class="newlist" style="width:1180px">
    			
    			<div class="t1">
		            <img src="../img/tu_10.gif" width="22" height="21"> <h2>汽车浏览</h2>
		            <font>您的位置：<a href="home.jsp" title="">首页</a> &gt; 汽车浏览</font>
		            <div class="clear"></div>
            	</div>
	            <div class="area">
		           <!-- <ul class="mt"><li class="bt">按车型查询：</li>
			            <li class="current"><a href="http://www.shuntianshi.com.cn/index.php?m=duan_zu&amp;a=index">全部</a></li>
			            <li><a href="http://www.shuntianshi.com.cn/index.php?m=duan_zu&amp;a=index&amp;catid=6">经济型轿车</a></li>
			            <li><a href="http://www.shuntianshi.com.cn/index.php?m=duan_zu&amp;a=index&amp;catid=5">越野车</a></li>
			            <li><a href="http://www.shuntianshi.com.cn/index.php?m=duan_zu&amp;a=index&amp;catid=7">7座商务车</a></li>
			            <li><a href="http://www.shuntianshi.com.cn/index.php?m=duan_zu&amp;a=index&amp;catid=8">客车</a></li>
			            <li><a href="http://www.shuntianshi.com.cn/index.php?m=duan_zu&amp;a=index&amp;catid=9">舒适型轿车</a></li>
			            <li><a href="http://www.shuntianshi.com.cn/index.php?m=duan_zu&amp;a=index&amp;catid=10">豪华型轿车</a></li>
			            <li><a href="http://www.shuntianshi.com.cn/index.php?m=duan_zu&amp;a=index&amp;catid=11">跑车</a></li>
		            </ul>
		            <ul class="carr">
		            	<li>
							<div class="box1">
								<a name="n30"></a>
								<a href="#" target="_blank"><img src="../img/57d03bd1eec0c.jpg" width="200" height="140" alt="别克凯悦"></a>
								<div class="n1">
									<p><i>别克凯悦</i></p>
									<h3>预授权<span>5000</span>元</h3>
									<img src="../img/tu_111.gif" width="21" height="19">
									<p>//5座&nbsp;&nbsp;&nbsp;&nbsp;自动档/</p>
								</div>
								<p class="p7">
									<a href="javascript:;" onclick="switchShow(1);LoadStore(56,1,0);">可选门店</a>
								</p>
								<div class="n2">
									￥<strong>200</strong>元/天<br>
									<font></font>
								</div>
							</div>
							<div class="box2 none" id="subTable1"><button class="success">开始预订</button></div>
							<div class="clear"></div>
						</li>
		            </ul> -->

                    <#list vehicleList as vehicle>
                            <table class="table" border="0">
                                <tr>
                                    <td rowspan="3" style="width: 1%;"><img src="../img/565a899148f2e.jpg"></td>
                                    <td colspan="4" >
                                        <input name="vehiclename" value="${(vehicle.vehicleName)!"凯迪拉克"}" style="color: #BEE9F0;font-size: 22px;"  readonly/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">预授权
                                        <input name="yushouquan" value="5000" style="color: orangered;font-size: 28px;width: 100px" readonly>元</td>
                                    <td>
                                        <input name="price" value="${(vehicle.vehiclePrice)!"200"}" style="color: orangered;font-size: 28px; width: 100px" readonly/>元/天</td>
                                    <td>
                                        <button style="width: 120px;height: 40px;color: white;background: orange;font-size: 24px;">
                                            <a href="/customerConOrder?vehicleId=${vehicle.vehicleId}">开始预订</a>
                                        </button>
                                    </td>

                                </tr>
                                <tr>
                                    <td>//5座</td>
                                    <td colspan="3">自动挡</td>

                                </tr>
                            </table>

                    </#list>


                    <#--<table class="table" border="0">-->
                        <#--<tr>-->
                            <#--<td rowspan="3" style="width: 1%;"><img src="../img/565a899148f2e.jpg"></td>-->
                            <#--<td colspan="4" >-->
                                <#--<input name="brandName" value="凯迪拉克" style="color: #BEE9F0;font-size: 22px;" readonly />-->
                            <#--</td>-->
                        <#--</tr>-->
                        <#--<tr>-->
                            <#--<td colspan="2">预授权-->
                                <#--<input name="yushouquan" value="5000" style="color: orangered;font-size: 28px;width: 100px" readonly />元</td>-->
                            <#--<td>-->
                                <#--<input name="price" value="200" style="color: orangered;font-size: 28px; width: 100px" readonly />元/天</td>-->
                            <#--<td>-->
                                <#--<button style="width: 120px;height: 40px;color: white;background: orange;font-size: 24px;">-->
                                    <#--<a href="/customerConOrder">开始预订</a>-->
                                <#--</button>-->
                            <#--</td>-->

                        <#--</tr>-->
                        <#--<tr>-->
                            <#--<td>//5座</td>-->
                            <#--<td colspan="3">自动挡</td>-->

                        <#--</tr>-->
                    <#--</table>-->

                    <#--<table class="table" border="0">-->
                        <#--<tr>-->
                            <#--<td rowspan="3" style="width: 1%;"><img src="../img/565a899148f2e.jpg"></td>-->
                            <#--<td colspan="4" >-->
                                <#--<input name="brandName" value="凯迪拉克" style="color: #BEE9F0;font-size: 22px; readonly" />-->
                            <#--</td>-->
                        <#--</tr>-->
                        <#--<tr>-->
                            <#--<td colspan="2">预授权-->
                                <#--<input name="yushouquan" value="5000" style="color: orangered;font-size: 28px;width: 100px" readonly />元</td>-->
                            <#--<td>-->
                                <#--<input name="price" value="200" style="color: orangered;font-size: 28px; width: 100px" readonly />元/天</td>-->
                            <#--<td>-->
                                <#--<button style="width: 120px;height: 40px;color: white;background: orange;font-size: 24px;">-->
                                    <#--<a href="/customerConOrder">开始预订</a>-->
                                <#--</button>-->
                            <#--</td>-->

                        <#--</tr>-->
                        <#--<tr>-->
                            <#--<td>//5座</td>-->
                            <#--<td colspan="3">自动挡</td>-->

                        <#--</tr>-->
                    <#--</table>-->
	            </div>

        </div>
    		</div>
				<#include "../model/foot.ftl">

	</body>
</html>

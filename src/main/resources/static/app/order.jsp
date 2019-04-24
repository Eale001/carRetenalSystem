<%@page pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>预订车辆</title>
		<link href="../css/css.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="../static/public/js/jquery-2.1.0.js"></script>
        <script type="text/javascript" src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    	<script type="text/javascript" src="../img/jquery.js"></script>
    	<script src="../img/list.store.js"></script>-->
		
	</head>
	<body>
		<jsp:include page="../model/head.jsp" flush="true"></jsp:include>
		
		<div class="main">
    <!-- 新闻列表部分 -->
    <div class="newlist" style="width:1180px">
        <div class="t1">

            <img src="../img/tu_10.gif" width="22" height="21"> <h2>确认订单</h2>
            <font>您的位置：<a href="home.jsp" title="">首页</a> &gt; 确认订单</font>
            <div class="clear"></div>

        </div>



        <form name="myform" id="myform" action="#" method="post" onsubmit="return CheckSubmit();">
            <input type="hidden" name="carid" value="56">
            <input type="hidden" name="getcity" id="getcity" value="37">
            <input type="hidden" name="retcity" id="retcity" value="37">
            <input type="hidden" name="getdate" value="2019-04-22">
            <input type="hidden" name="retdate" value="2019-04-23">
            <input type="hidden" name="gettime" value="8">
            <input type="hidden" name="rettime" value="8">
            <input type="hidden" name="flag" value="0">
            <input type="hidden" name="days" value="1">
            <div class="ddmx-content">
                <div class="ddmx-main">
                    <div class="ddmx-left"><a href="#" target="_blank" title="点击查看大图"><img src="../img/5655c3c8e52e3.jpg" alt="别克凯悦" class="ddmx-img"></a></div>
                    <ul class="ddmx-right">
                        <li>                            <div class="inf-name"><span class="value">别克凯悦&nbsp;&nbsp;&nbsp; 自动档//</span><br>
                                <p>
                                    短租：<strong>
                                        </strong>元/天
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
                                    预授权：<strong>5000</strong>元</p>
                            </div>

                        </li>
                        <li class="bot"><table border="0" width="100%" cellspacing="1" bgcolor="#ddd" style="margin-top:10px">
                            <tbody><tr>
                                <td width="16%" height="30" align="center" bgcolor="#eeeeee" class="key">取车时间：</td>
                                <td width="34%" bgcolor="#FFFFFF">2019年04月22日 &nbsp;8:00</td>
                                <td width="16%" bgcolor="#eeeeee" align="center">取车地点：</td>
                                <td width="34%" bgcolor="#FFFFFF">西三环店</td>
                            </tr>
                            <tr>
                                <td width="16%" height="30" align="center" bgcolor="#eeeeee" class="key">还车时间：</td>
                                <td width="34%" bgcolor="#FFFFFF">2019年04月23日 &nbsp;8:00</td>
                                <td width="16%" bgcolor="#eeeeee" align="center">还车地点：</td>
                                <td width="34%" bgcolor="#FFFFFF">西三环店</td>
                            </tr>
                            <tr><td height="20" colspan="4" bgcolor="#f3f3f3"><h3>租车人信息</h3></td></tr>
                            <tr>
                                <td colspan="4" bgcolor="#FFFFFF">

                                    <table width="90%" border="0" cellpadding="0" cellspacing="0">
                                        <tbody><tr>
                                            <td width="13%"><font color="red">*</font>姓  名</td>
                                            <td width="28%" class="tdbg"><input type="text" name="data[uname]" id="ContactMan" value="" maxlength="50"></td>
                                            <td width="10%"><font color="red">*</font>手  机</td>
                                            <td width="49%"><input type="text" value="" id="Mobile" name="data[phone]" maxlength="50"></td>
                                        </tr>
                                        <tr>
                                            <td><font color="red">*</font>证件类型</td>
                                            <td><select name="data[cardtype]" id="CardType" class="borinp"><option value="身份证">身份证</option></select></td>
                                            <td><font color="red">*</font>证件号码</td>
                                            <td><input type="text" id="CardNumber" name="data[cardnumber]" value="" maxlength="20"></td>
                                        </tr>

                                    </tbody></table></td>
                            </tr>
                            <tr><td height="20" colspan="4" bgcolor="#fdf1ea"><h3 class="f60">费用明细</h3></td></tr>
                            <tr>
                                <td colspan="4" bgcolor="#fffbf8">
                                    <table width="95%" border="0" cellpadding="0" cellspacing="0">
                                        <tbody><tr>
                                            <td width="5%"><input type="checkbox" name="nonprice" id="nonprice" value="1" onclick="switchShow(1)"></td>
                                            <td width="12%"><b>不计免赔服务</b></td>
                                            <td width="13%"><span class="fz14 f60"><b>￥50</b></span>元/天</td>
                                            <td width="70%"><span style="border: 3px #FFA200 solid;font-size: 16px;padding: 4px;">官网不受理价值超过十五万元车辆的不计免赔服务。</span></td>
                                        </tr>
                                    </tbody></table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" bgcolor="#fffbf8">
                                    <table width="95%" border="0" cellpadding="0" cellspacing="0">
                                        <tbody><tr>
                                            <td width="5%"><input type="checkbox" name="gpsprice" value="1" onclick="switchShow(2)"></td>
                                            <td width="12%"><b>GPS导航</b></td>
                                            <td width="13%"><span class="fz14 f60"><b>￥10</b></span>元/天</td>
                                            <td width="70%"></td>
                                        </tr>
                                    </tbody></table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" bgcolor="#fffbf8">
                                    <table width="95%" border="0" cellpadding="0" cellspacing="0">
                                        <tbody><tr>
                                            <td width="5%"><input type="checkbox" id="childprice" name="childprice" value="1" onclick="switchShow(3)"></td>
                                            <td width="12%"><b>儿童安全座椅</b></td>
                                            <td width="13%"><span class="fz14 f60"><b>￥100</b></span>元/天</td>
                                            <td width="70%"></td>
                                        </tr>
                                    </tbody></table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" bgcolor="#fffbf8">
                                    <table width="95%" border="0" cellpadding="0" cellspacing="0">
                                        <tbody><tr>
                                            <td width="11%"><b>车辆租金</b></td>
                                            <td width="70%">
                                                <div class="feeDay">
                                                        <span class="d_block">04月22日（周一）</span>
                                                        <span class="sz_priceBlueSmall"><em class="rmb">￥</em><em class="num">200</em></span>
                                                    </div>

                                                <div class="feeTotalDay">共<span>1</span>天</div>
                                            </td>
                                            <td width="11%"><span class="sz_OrderpOrangeM"><em class="rmb">￥</em><em class="num">200</em></span></td>
                                        </tr>
                                    </tbody></table>
                                </td>
                            </tr>


                            <tr>
                                <td colspan="4" bgcolor="#fffbf8">
                                    <table width="95%" border="0" cellpadding="0" cellspacing="0">
                                        <tbody><tr>
                                            <td width="15%"><b>基本保险</b>（必选）</td>
                                            <td width="65%"><a href="javascript:void(0);" class="iconTips" data-placement="right"></a></td>
                                            <td width="20%"><span class="sz_priceGraySmall">
		                            <em class="rmb">￥</em>
		                            <em class="num">40x1</em>
		                            <em class="unit">天=</em>	
		                        </span>
                                <span class="sz_OrderpOrangeM">
		                            <em class="rmb">￥</em>
                        <em class="num">40</em>                        </span></td>
                                        </tr>
                                    </tbody></table>
                                </td>
                            </tr>
                            <tr id="tab1" class="none">
                                <td colspan="4" bgcolor="#fffbf8"><table width="95%" border="0" cellpadding="0" cellspacing="0">
                                    <tbody><tr>
                                        <td width="15%"><b>不计免赔服务</b></td>
                                        <td width="65%">&nbsp;</td>
                                        <td width="20%"><span class="sz_priceGraySmall">
		                            <em class="rmb">￥</em>
		                            <em class="num">50x1</em>
		                            <em class="unit">天=</em>	
		                        </span>
                                <span class="sz_OrderpOrangeM">
		                            <em class="rmb">￥</em>
                        <em class="num" id="price1">50</em>                        </span></td>
                                    </tr>
                                </tbody></table></td>
                            </tr>
                            <tr id="tab2" class="none">
                                <td colspan="4" bgcolor="#fffbf8"><table width="95%" border="0" cellpadding="0" cellspacing="0">
                                    <tbody><tr>
                                        <td width="15%"><b>GPS导航</b></td>
                                        <td width="65%">&nbsp;</td>
                                        <td width="20%"><span class="sz_priceGraySmall">
		                            <em class="rmb">￥</em>
		                            <em class="num">10x1</em>
		                            <em class="unit">天=</em>	
		                        </span>
                                <span class="sz_OrderpOrangeM">
		                            <em class="rmb">￥</em>
                        <em class="num" id="price2">10</em>                        </span></td>
                                    </tr>
                                </tbody></table></td>
                            </tr>
                            <tr id="tab3" class="none">
                                <td colspan="4" bgcolor="#fffbf8"><table width="95%" border="0" cellpadding="0" cellspacing="0">
                                    <tbody><tr>
                                        <td width="15%"><b>儿童安全座椅</b></td>
                                        <td width="65%">&nbsp;</td>
                                        <td width="20%"><span class="sz_priceGraySmall">
		                            <em class="rmb">￥</em>
		                            <em class="num">100x1</em>
		                            <em class="unit">天=</em>
		                        </span>
                                <span class="sz_OrderpOrangeM">
		                            <em class="rmb">￥</em>
                        <em class="num" id="price3">100</em>                        </span></td>
                                    </tr>
                                </tbody></table></td>
                            </tr>
                            <tr>
                                <td colspan="4" bgcolor="#fffbf8">
                                    <table width="95%" border="0" cellpadding="0" cellspacing="0">
                                        <tbody><tr>
                                            <td width="11%"><b>手续费</b></td>
                                            <td width="70%">&nbsp;</td>
                                            <td width="11%"><span class="sz_OrderpOrangeM"><em class="rmb">￥</em><em class="num">20</em></span></td>
                                        </tr>
                                    </tbody></table>
                                </td>
                            </tr>
                                                        <tr><td height="20" colspan="4" bgcolor="#fff">
                                <table width="95%" border="0" cellpadding="0" cellspacing="0">
                                    <tbody><tr>
                                        <td width="11%"></td>
                                        <td width="70%" align="right"><input type="hidden" name="priceCount" id="priceCount" value="169"><b>订单总价：</b></td>
                                        <td width="38%"><span class="sz_OrderpOrangeB"><em class="rmb">￥</em><em class="num" id="pricetext">260</em></span></td>
                                    </tr>
                                </tbody></table>
                            </td></tr>
                        </tbody></table>
                        </li>
                    </ul>
                    <div class="clear"></div>


                    <div style="margin:10px 0 10px 300px">
						<input class="pay-button" type="submit" value="门店支付" name="submit2">
						<style>
						.pay-button {
							border: 1px solid #E24E4E;
							border-radius: 5px;
							background-color: #FFAE00;
							color: #fff;
							padding: 5px 20px;
							margin: 0 10px;
							font-size: 15px;
							font-weight: bold;
							font-family: "microsoft yahei","宋体";
							letter-spacing: 3px;
							cursor: pointer;
						}
						.pay-button:hover{
						    box-shadow: 1px -1px 1px 1px #A5A5A5;
							background-color: #FFA200;
							color: #FFE9E9;
							border-color: #F00;
						}
						.mask {
							position: fixed;
							width: 100%;
							height: 1000px;
							background: rgba(0, 0, 0, 0.33);
							top: 0;
							background: transparent\9;
						}
						.confirm-wrapper {
							width: 500px;
							height: 200px;
							margin: 0 auto;
							margin-top: 250px;
							background: #E6E6E6;
							border: 1px solid #5D5D5D;
							border-radius: 5px;
						}
						</style>
						<script>
						function close_mask()
						{
							document.getElementById('mask').style.display='none';
						}
						function show_mask()
						{
							  if(document.myform.ContactMan.value=="")
								{
									alert("姓名不能为空！");
									document.myform.ContactMan.focus();
									return false;
								}
								if(document.myform.Mobile.value=="")
								{
									alert("手机不能为空！");
									document.myform.Mobile.focus();
									return false;
								}
								if(document.myform.CardNumber.value=="")
								{
									alert("证件号不能为空！");
									document.myform.CardNumber.focus();
									return false;
								}
							if( $('.mask').length<1 )
							{
								$('body').append('<div class="mask" id="mask"><div class="confirm-wrapper"><iframe id="confirm_pay" name="confirm_pay" src="/index.php?m=pay" width="500" height="500"></iframe></div></div>');
							}
							else{
								document.getElementById('mask').style.display='block';
								confirm_pay_content();
							}
						}
						function confirm_pay_content(){
							window.frames["confirm_pay"].document.getElementById('hidden_fileds').innerHTML=''+
								'<input type="hidden" name="carid" value="'+$('input[name="carid"]').val()+'" />'+
								'<input type="hidden" name="getcity" id="getcity" value="'+$('input[name="getcity"]').val()+'" />'+
								'<input type="hidden" name="retcity" id="retcity" value="'+$('input[name="retcity"]').val()+'" />'+
								'<input type="hidden" name="getdate" value="'+$('input[name="getdate"]').val()+'" />'+
								'<input type="hidden" name="retdate" value="'+$('input[name="retdate"]').val()+'" />'+
								'<input type="hidden" name="gettime" value="'+$('input[name="gettime"]').val()+'" />'+
								'<input type="hidden" name="rettime" value="'+$('input[name="rettime"]').val()+'" />'+
								'<input type="hidden" name="flag" value="'+$('input[name="flag"]').val()+'" />'+
								'<input type="hidden" name="days" value="'+$('input[name="days"]').val()+'" />'+
								'<input type="hidden" name="data[uname]" value="'+$('input#ContactMan').val()+'" />'+
								'<input type="hidden" name="data[phone]" value="'+$('input#Mobile').val()+'" />'+
								'<input type="hidden" name="data[cardnumber]" value="'+$('input#CardNumber').val()+'" />'+
								'<input type="hidden" name="nonprice" value="'+( $('input#nonprice')[0].checked?1:0 )+'" />'+
                                '<input type="hidden" name="childprice" value="'+( $('input#childprice')[0].checked?1:0 )+'" />'+
								'<input type="hidden" name="gpsprice" value="'+( $('input[name="gpsprice"]')[0].checked?1:0 )+'" />'+
								'<input type="hidden" name="priceCount" value="'+$('input#priceCount').val()+'" />';
						}
						</script>
					</div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>

        </form>
    </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>
<script>
    (function(){

        var settings = {
            trigger:'hover',
            title:'',
            content:'<p>&nbsp;&nbsp;&nbsp;&nbsp;必购产品。该产品为基本保险，绝对免赔额为1500元。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;本服务按天计费，租期超过1小时按照一天计算。详情请参考租赁合同，以合同为准。</p>',
            width:400,
            multi:false,
            closeable:false,
            style:'',
            padding:true
        };

        function initPopover(){
            $('a.iconTips').webuiPopover('destroy').webuiPopover(settings);
        }


        initPopover();


    })();

</script>
    <jsp:include page="../model/foot.jsp" flush="true"></jsp:include>
	</body>
</html>

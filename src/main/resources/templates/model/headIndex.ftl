<div class="color">
	<div class="hred">
		<div class="headtop">
			<p class="p1">
				山西大同大学第一租车行 | 市正规租赁企业 | 计算机首个出租公司
			</p>
			<form method="post" action="/customerLogins">
				<div class="p2">
					<span id="LoginPanel">
                    <table width="100%" border="0">
                        <tbody><tr><td width="320px">用户名：
							<input type="text" class="loginbor" name="userName" style="width: 100px;height: 23px;" value="${(Session.userName)!''}" readonly>
                            <#--密码：<input type="password" class="loginbor" name="passWord">-->
						</td>
                            <td width="250px">
								<#--<button class="btnok" type="">登录</button>-->
                                <a  class="btnreg" href="/customerLoginout" >退出</a>&nbsp;
                                <#--<a href="#">找回密码</a> </td></tr>-->
                        </tbody>
                    </table>
                </span>
				</div>
			</form>
		</div>
		<div class="logo">
			<img class="img3" src="../img/tu_03.gif">
			<a href="http://www.shuntianshi.com.cn/" title="山西大同大学_汽车租赁">
				<img class="img1" src="../img/logo1.png">
			</a>

		</div>
		<ul class="nav" style="background: #0099FF;">
            <li>
            </li>

			<li>
				<a href="/customerHome">首页</a>
			</li>
			<li>
			</li>
			<li>
				<a href="/customerCarList">汽车浏览</a>
			</li>
			<li>
				<a href="#">安全驾驶须知</a>
			</li>
			<li>
			</li>
			<li>
			</li>
			<li>
			</li>
			<li>
				<a href="#">关于我们</a>
			</li>
		</ul>
	</div>

</div>
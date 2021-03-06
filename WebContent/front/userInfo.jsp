<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="/struts-tags" prefix="s"%>
<jsp:include page="common/head.jsp" />

<body>
	<!-- Wrapper -->
	<div id="wrapper_sec">
		<!-- Header -->
		<!--navigation part   -->
		<jsp:include page="common/navigation.jsp" />

		<div class="clear"></div>
		<div id="crumb">
			<ul>
				<li><a href="index.action">首页</a>
				</li>
				<li class="last"><a href="#" class="colr bold">我的账户</a>
				</li>
			</ul>
		</div>
		<div class="clear"></div>
		<!-- Content Section -->
		<div id="content_sec">
			<!-- Column 1 -->
			<div class="col1">
				<!-- Shop By Price -->
				<div class="byprice">
					<h5 class="colr">MY ACCOUNT CENTER</h5>
					<ul>
						<li><a href="myAccount.action">我的订单</a>
						</li>
						<li><a href="myConsumerRecords.action">我的消费记录</a>
						</li>
						<li><a href="myRecentlyViewed.action">我最近浏览</a>
						</li>
						<li><a href="myFavorites.action">我的收藏夹</a>
						</li>
						<li><a href="myIntegral.action">我的积分</a>
						</li>
						<li><a href="myInfo.action">账户信息</a>
						</li>
						<li><a href="updateUserPassword.action">修改密码</a>
						</li>
					</ul>
				</div>
				<div class="clear"></div>
				<div class="clear"></div>
			</div>
			<!-- Column 2 -->
			<div class="col2">
				<!-- My Account -->
				<div class="account">
					<h4 class="colr bold smallheading upper">
						<span class="arrow">user information</span>
					</h4>
					<div class="accinner">
						<div class="recentorders">
							<div class="account_table">
								<form id="myInfo_form">
									<table border="0" cellpadding="0" cellspacing="0">

										<tbody>
											<tr>
												<th align="left"><font size="3">用户基本信息</font></th>
											</tr>
											<tr>

												<th><span class="txt">用户账号：<font color="red">*</font>
												</span>
												</th>
												<td><input type="hidden" name="user.id"
													value="<s:property value="user.id"/>" /> <input
													id="userCode" name="user.userCode" type="text"
													class="inputSize"
													value="<s:property value="user.userCode"/>"
													readonly="readonly" /></td>
											</tr>

											<tr>
												<th><span class="txt">真实姓名：<font color="red">*</font>
												</span>
												</th>
												<td><input id="userName" name="user.userName"
													type="text" class="inputSize"
													value="<s:property value="user.userName"/>" /><span
													id="userNameInfo" style="display: none"><font
														color="red">请填写真是姓名</font>
												</span>
												</td>
											</tr>
											<tr>
												<th><span class="txt">性别：<font color="red">*</font>
												</span>
												</th>
												<td><span class="txt"> <s:if test="0==user.sex">
						           		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="sex"
																name="user.sex" value="0" checked="checked" />男
									&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="sex"
																name="user.sex" value="1" />女
						           </s:if> <s:else>
						           		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="sex"
																name="user.sex" value="0" />男
									    &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="sex"
																name="user.sex" value="1" checked="checked" />女
						           </s:else> </span> <span id="sexnfo" style="display: none"><font
														color="red">请选择性别</font>
												</span></td>
											</tr>
											<tr>
												<th><span class="txt">电子邮箱：<font color="red">*</font>
												</span>
												</th>
												<td><input id="email" name="user.email" type="text"
													class="inputSize" value="<s:property value="user.email"/>" /><span
													id="emailInfo" style="display: none"><font
														color="red">请填写电子邮件</font>
												</span>
												</td>
											</tr>
											<tr>
												<th><span class="txt">手机号码：<font color="red">*</font>
												</span>
												</th>
												<td><input id="mobile" name="user.mobile" type="text"
													class="inputSize" value="<s:property value="user.mobile"/>" /><span
													id="mobileInfo" style="display: none"><font
														color="red">请填写手机号码</font>
												</span>
												</td>
											</tr>
											<tr>
												<th><span class="txt">身份证：<font color="red">*</font>
												</span>
												</th>
												<td><input id="idCard" name="user.idCard" type="text"
													class="inputSize" value="<s:property value="user.idCard"/>" /><span
													id="idCardInfo" style="display: none"><font
														color="red">请填写身份证号码</font>
												</span>
												</td>
											</tr>

											<tr>
												<th><span class="txt">用户地址：<font color="red">*</font>
												</span>
												</th>
												<td><input id="address" name="user.address" type="text"
													class="inputAddressSize"
													value="<s:property value="user.address"/>" /><span
													id="addressInfo" style="display: none"><font
														color="red">请填写收货地址</font>
												</span>
												</td>
											</tr>

											<tr>
												<th><br />
												<hr />
													<br />
												</th>
											</tr>
											<tr>
												<th align="left"><font size="3">选填信息</font></th>
											</tr>
											<tr>
												<th><span class="txt">生日：</span>
												</th>
												<td><input id="birthday" name="user.birthday"
													class="inputSize"
													value="<s:date name="user.birthday" format="yyyy-MM-dd"/>"
													style="width: 100px; height: 18px"
													onfocus="WdatePicker({isShowClear:true,readOnly:true,lang:'<s:property value="datePickerLocale"/>'})"
													readonly="readonly" /></td>
											</tr>
											<tr>
												<th><br />
												<br />
												</th>
											</tr>
											<tr>
												<th><span class="txt">兴趣爱好：</span>
												</th>
												<td><textarea id="hobbies" name="user.hobbies" rows="5"
														cols="50">
														<s:property value="user.hobbies" />
													</textarea></td>
											</tr>
										</tbody>
									</table>
									<hr />
									<hr />
									<hr />
									<div align="right">
										<a href="#" id="updateInfoBtn" class="addOrderBtn">提交</a>
									</div>
								</form>
							</div>

							<div class="clear"></div>

							<div class="clear"></div>
						</div>
					</div>

				</div>
				<div class="clear"></div>
				<hr />

				<div class="relateditems">
					<h6 class="bold colr relhead">根据您的购买记录，我们为您推荐</h6>
					<a href="#" class="leftarrow">&nbsp;</a>
					<ul>
						<li>
							<div class="thumb">
								<a href="detail.html"><img src="images/rel1.gif" alt="" />
								</a>
							</div>
							<div class="desc">
								<h6>
									<a href="detail.html" class="colr bold">Lorum Ipsum Dolor</a>
								</h6>
								<div class="rating">
									<div class="stars">
										<a href="#">&nbsp;</a> <a href="#">&nbsp;</a> <a href="#">&nbsp;</a>
										<a href="#">&nbsp;</a> <a href="#" class="gry">&nbsp;</a>
									</div>
									<a href="#" class="reviews">1 Review(s)</a>
								</div>
								<div class="prices">
									<p class="newprice colr bold">$58.00</p>
									<p class="oldprice">$88.00</p>
								</div>
								<div class="cartse">
									<a href="cart.html" class="buttonone">Add to Cart</a> <a
										href="#" class="whishlist">&nbsp;</a> <a href="#" class="favo">&nbsp;</a>
								</div>
							</div></li>
						<li>
							<div class="thumb">
								<a href="detail.html"><img src="images/rel1.gif" alt="" />
								</a>
							</div>
							<div class="desc">
								<h6>
									<a href="detail.html" class="colr bold">Lorum Ipsum Dolor</a>
								</h6>
								<div class="rating">
									<div class="stars">
										<a href="#">&nbsp;</a> <a href="#">&nbsp;</a> <a href="#">&nbsp;</a>
										<a href="#">&nbsp;</a> <a href="#" class="gry">&nbsp;</a>
									</div>
									<a href="#" class="reviews">1 Review(s)</a>
								</div>
								<div class="prices">
									<p class="newprice colr bold">$58.00</p>
									<p class="oldprice">$88.00</p>
								</div>
								<div class="cartse">
									<a href="cart.html" class="buttonone">Add to Cart</a> <a
										href="#" class="whishlist">&nbsp;</a> <a href="#" class="favo">&nbsp;</a>
								</div>
							</div></li>
						<li class="last">
							<div class="thumb">
								<a href="detail.html"><img src="images/rel1.gif" alt="" />
								</a>
							</div>
							<div class="desc">
								<h6>
									<a href="detail.html" class="colr bold">Lorum Ipsum Dolor</a>
								</h6>
								<div class="rating">
									<div class="stars">
										<a href="#">&nbsp;</a> <a href="#">&nbsp;</a> <a href="#">&nbsp;</a>
										<a href="#">&nbsp;</a> <a href="#" class="gry">&nbsp;</a>
									</div>
									<a href="#" class="reviews">1 Review(s)</a>
								</div>
								<div class="prices">
									<p class="newprice colr bold">$58.00</p>
									<p class="oldprice">$88.00</p>
								</div>
								<div class="cartse">
									<a href="cart.html" class="buttonone">Add to Cart</a> <a
										href="#" class="whishlist">&nbsp;</a> <a href="#" class="favo">&nbsp;</a>
								</div>
							</div></li>
					</ul>
					<a href="#" class="rightarrow">&nbsp;</a>
					<div class="clear"></div>

				</div>


			</div>
			<div class="clear"></div>
			<!-- Footer -->
			<jsp:include page="common/bottom.jsp" />
			<div class="clear"></div>
		</div>
	</div>
</body>
</html>
<script>
 $(document).ready(function() {
      
      $("#updateInfoBtn").click(function(){
    	  
    	  var userCode=$("#userCode").val();
    	  
    	  if(userCode.length==0&&userCode==''){
    		  $("#userCodeInfo").show();
    	  }
    	  
    	  $("#userCode").click(function(){
    		  $("#userCodeInfo").hide();
    	  });
    	  
 		  var userName=$("#userName").val();
    	  
    	  if(userName.length==0&&userName==''){
    		  $("#userNameInfo").show();
    	  }
    	  
    	  $("#userName").click(function(){
    		  $("#userNameInfo").hide();
    	  });
    	  
		 var sex=$("#sex").val();
    	  
    	  if(sex.length==0&&sex==''){
    		  $("#sexInfo").show();
    	  }
    	  
    	  $("#sex").click(function(){
    		  $("#sexInfo").hide();
    	  });
    	  
 		  var mobile=$("#mobile").val();
    	  
    	  if(mobile.length==0&&mobile==''){
    		  $("#mobileInfo").show();
    	  }
    	  
    	  $("#mobile").click(function(){
    		  $("#mobileInfo").hide();
    	  });
    	  
 		  var email=$("#email").val();
    	  
    	  if(email.length==0&&email==''){
    		  $("#emailInfo").show();
    	  }
    	  
    	  $("#email").click(function(){
    		  $("#emailInfo").hide();
    	  });
    	  
 		 var idCard=$("#idCard").val();
    	  
    	  if(idCard.length==0&&idCard==''){
    		  $("#idCardInfo").show();
    	  }
    	  
    	  $("#idCard").click(function(){
    		  $("#idCardInfo").hide();
    	  });
    	  
 		var address=$("#address").val();
    	  
    	  if(address.length==0&&address==''){
    		  $("#addressInfo").show();
    	  }
    	  
    	  $("#address").click(function(){
    		  $("#addressInfo").hide();
    	  });
    	  
    	  
    	  if(userCode.length>0&&userCode!=''&&userName.length>0&&userName!=''&&mobile.length>0&&mobile!=''&&email.length>0&&email!=''&&idCard.length>0&&idCard!=''&&address.length>0&&address!=''){
    		  
              jQuery.ajax({
  				type : "post",
  				url : "userJson_updateUserInfo.action",
  				dataType : 'text',
  				data : $('#myInfo_form').serialize(),
  				success : function(json) {

  					if (json != null && json != '') {
  						var member = eval(json); //包数据解析为json 格式
  						var jsons = member.split("*");
  						if (jsons[0] == "true") {
  							alert('更新成功!');
  							
  						} else {
  							if (undefined != jsons[1]) {
  								if('login'==jsons[1]){
  									alert('请还没有登录，请登录');
  									window.self.location="toLogin.action";
  								}else{
  									alert(jsons[1]);
  								}
  							} else {
  								alert("更新失败！");
  							}
  						}
  					} else {
  						alert("异步处理异常，返回值为空！");
  					}
  				}
  			});
    		  
    		  
    	  }
    	  
      });
      
      
      
 
 });
 
 
 </script>
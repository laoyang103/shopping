<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="/struts-tags" prefix="s"%>
<jsp:include page="common/head.jsp" />
<script>
 $(document).ready(function() {
      $("#isRemark").click(function(){
    	  
	      if($("#isRemark").attr("checked")==true){
	    	  $("#remark").show();
	    	  $("#remarkAlertInfo").show();
	      }else{
	    	  $("#remark").hide();
	    	  $("#remarkAlertInfo").hide(); 
	      }
    	  
    	  
      });
      
      
      $("#addOrderBtn").click(function(){
    	  
    	  var consignee=$("#consignee").val();
    	  
    	  if(consignee.length==0&&consignee==''){
    		  $("#consigneeInfo").show();
    	  }
    	  
    	  $("#consignee").click(function(){
    		  $("#consigneeInfo").hide();
    	  });
    	  
 		  var address=$("#address").val();
    	  
    	  if(address.length==0&&address==''){
    		  $("#addressInfo").show();
    	  }
    	  
    	  $("#address").click(function(){
    		  $("#addressInfo").hide();
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
    	  
 		 var zipCode=$("#zipCode").val();
    	  
    	  if(zipCode.length==0&&zipCode==''){
    		  $("#zipCodeInfo").show();
    	  }
    	  
    	  $("#zipCode").click(function(){
    		  $("#zipCodeInfo").hide();
    	  });
    	  
    	  var sendTypeCode=$("#sendTypeCode").val();
    	  if(sendTypeCode.length==0&&sendTypeCode==''){
    		  $("#sendTypeCodeInfo").show();
    	  }
    	  
    	  $("#sendTypeCode").click(function(){
    		  $("#sendTypeCodeInfo").hide();
    	  });
    	  
    	  var carrierCode=$("#carrierCode").val();
    	  if(carrierCode.length==0&&carrierCode==''){
    		  $("#carrierCodeInfo").show();
    	  }
    	  
    	  $("#carrierCode").click(function(){
    		  $("#carrierCodeInfo").hide();
    	  });
    	  
    	  
    	  if(consignee.length>0&&consignee!=''&&address.length>0&&address!=''&&mobile.length>0&&mobile!=''&&email.length>0&&email!=''&&email.length>0&&zipCode!=''&&zipCode.length>0&&zipCode!=''&&sendTypeCode.length>0&&sendTypeCode!=''&&carrierCode.length>0&&carrierCode!=''){
    		  
              jQuery.ajax({
  				type : "post",
  				url : "shoppingCartJson_checkout.action",
  				dataType : 'text',
  				data : {consignee:consignee,address:address,mobile:mobile,email:email,zipCode:zipCode,sendTypeCode:sendTypeCode,carrierCode:carrierCode},
  				success : function(json) {

  					if (json != null && json != '') {
  						var member = eval(json); //包数据解析为json 格式
  						var jsons = member.split("*");
  						if (jsons[0] == "true") {
  							alert('订单提交成功!');
  							window.self.location="index.action";
  						} else {
  							if (undefined != jsons[1]) {
  								alert(jsons[1]);
  							} else {
  								alert("加入失败！");
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

<body>
	<!-- Wrapper -->
	<div id="wrapper_sec">
		<!-- Header -->
		<!--navigation part   -->
		<jsp:include page="common/navigation.jsp" />
		<div class="clear"></div>
		<div id="crumb">
			<ul>
				<li><a href="#">首页</a>
				</li>
				<li class="last"><a href="myAccount.action" class="colr bold">订单中心</a>
				</li>
				<li class="last"><a href="#" class="colr bold">订单：<s:property
							value="order.orderCode" />
				</a>
				</li>
			</ul>
		</div>
		<div class="clear"></div>
		<!-- Content Section -->
		<div id="content_sec">

			<div class="static">
				<table border="0" cellpadding="1" cellspacing="1">
					<tbody>
						<tr>
							<th><strong>订单号：<s:property value="order.orderCode" />
							</strong>
							</th>
							<td><strong>状态： <s:if test="1==order.status">
	                  	订单处理中
	               </s:if> <s:elseif test="2==order.status">
	                    	已出库
	               </s:elseif> <s:elseif test="3==order.status">
	           				配送中
	           		
	           		</s:elseif> <s:else>
	           				完成
	           		</s:else> </strong>
							</td>
						</tr>
						<tr>
							<th></th>
							<td></td>
						</tr>
					</tbody>
				</table>


				<hr />
				<br />
				<div align="center">

					<s:if test="1==order.status">
						<span class="txt"><font color="green" size="3">提交订单</font>
						</span>
						<font size="5">————&gt;</font>
						<span class="txt"><font size="3">商品出库</font>
						</span>
						<font size="5">————&gt;</font>
						<span class="txt"><font size="3">配送中</font>
						</span>
						<font size="5">————&gt;</font>
						<span class="txt"><font size="3">完成</font>
						</span>
					</s:if>
					<s:elseif test="2==order.status">
						<span class="txt"><font color="green" size="3">提交订单</font>
						</span>
						<font color="red" size="5">————&gt;</font>
						<span class="txt"><font color="green" size="3">商品出库</font>
						</span>
						<font size="5">————&gt;</font>
						<span class="txt"><font size="3">配送中</font>
						</span>
						<font size="5">————&gt;</font>
						<span class="txt"><font size="3">完成</font>
						</span>
					</s:elseif>
					<s:elseif test="3==order.status">
						<span class="txt"><font color="green" size="3">提交订单</font>
						</span>
						<font color="red" size="5">————&gt;</font>
						<span class="txt"><font color="green" size="3">商品出库</font>
						</span>
						<font color="red" size="5">————&gt;</font>
						<span class="txt"><font color="green" size="3">配送中</font>
						</span>
						<font size="5">————&gt;</font>
						<span class="txt"><font size="3">完成</font>
						</span>
					</s:elseif>
					<s:elseif test="4==order.status">
						<span class="txt"><font color="green" size="3">提交订单</font>
						</span>
						<font color="red" size="5">————&gt;</font>
						<span class="txt"><font color="green" size="3">商品出库</font>
						</span>
						<font color="red" size="5">————&gt;</font>
						<span class="txt"><font color="green" size="3">配送中</font>
						</span>
						<font color="red" size="5">————&gt;</font>
						<span class="txt"><font color="green" size="3">完成</font>
						</span>
					</s:elseif>
					<s:else>
						<span class="txt"><font color="red" size="3">暂无订单状态信息</font>
						</span>
					</s:else>

				</div>

				<br /> <br />
				<hr />

				<table border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<th align="left"><font size="3"> 订单跟踪信息</font></th>
						</tr>
						<s:if test="sendList.size>0">
							<tr>
								<td width="20%"><font size="2">处理时间</font>
								</td>
								<td width="60%"><font size="2">处理信息</font>
								</td>
								<td width="20%"><font size="2">操作人</font>
								</td>
							</tr>
							<s:iterator value="sendList">
								<tr>
									<td><s:property value="dealTime" />
									</td>
									<td><s:property value="dealInformation" />
									</td>
									<td><s:property value="operator" /></td>
								</tr>
							</s:iterator>
						</s:if>
						<s:else>
							<span class="txt"><font color="red" size="3">暂无订单状态信息</font>
							</span>
						</s:else>

					</tbody>


				</table>

				<table border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<th align="left"><font size="3">订单信息</font></th>
						</tr>
						<tr>
							<td><span class="txt">收&nbsp;货&nbsp;&nbsp;人：</span><span
								class="txt"><s:property value="order.consignee" />
							</span>
							</td>
						</tr>

						<tr>
							<td><span class="txt">地&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;址：</span><span class="txt"><s:property
										value="order.address" />
							</span></td>
						</tr>
						<tr>
							<td><span class="txt">手机号码：</span><span class="txt"><s:property
										value="order.mobile" />
							</span>
							</td>
							<td></td>
						</tr>
						<tr>
							<td><span class="txt">电子邮件：</span> <span class="txt"><s:property
										value="order.email" />
							</span>
							</td>
						</tr>
						<tr>
							<td><span class="txt">邮&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;编：</span> <span class="txt"><s:property
										value="order.zipCode" />
							</span>
							</td>
						</tr>
					</tbody>

				</table>

				<hr />
				<table border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<th align="left"><font size="3">支付及配送方式信息</font></th>
						</tr>
						<tr>
							<td><span class="txt">支付方式：</span> <s:if
									test="1==order.paymentMethod">
									<span class="txt">货到付款</span>
								</s:if> <s:elseif test="2==order.paymentMethod">
									<span class="txt">中国邮政汇款</span>
								</s:elseif></td>
						</tr>

						<tr>
							<td><span class="txt">提货地址：</span><span class="txt"><s:property
										value="order.address" />
							</span></td>
						</tr>
						<tr>
							<td><span class="txt">运&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;费：</span><span class="txt">￥0.0元</span>
							</td>
							<td></td>
						</tr>
						<tr>
							<td><span class="txt">送货日期：</span> <s:if
									test="1==order.shippingMethod">
									<span class="txt">只工作日送货（双休日、假日不用送）</span>
								</s:if> <s:elseif test="2==order.shippingMethod">
									<span class="txt">工作日、双休日与假日均可送货</span>
								</s:elseif> <s:elseif test="3==order.shippingMethod">
									<span class="txt">只双休日、假日送货（工作日不用送）</span>
								</s:elseif></td>
						</tr>
						<tr>
							<td><span class="txt">配送时间：</span> <span class="txt">仅白天送货（8:00至18:00）</span>
							</td>
						</tr>
					</tbody>

				</table>

				<hr />
				<table border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<th align="left"><font size="3">商品信息</font></th>
						</tr>
						<tr>
							<td><font size="2">商品编号</font>
							</td>
							<td><font size="2">商品名称</font>
							</td>
							<td><font size="2">总价</font>
							</td>
							<td><font size="2">数量</font>
							</td>
							<td><font size="2">操作</font>
							</td>
						</tr>
						<s:if test="order!=null">
							<tr>
								<td><s:property value="order.commodityCode" />
								</td>
								<td><font color="blue"><a
										href="detail.action?id=<s:property value="order.commodityId"/>"><s:property
												value="order.commodityName" />
									</a>
								</font>
								</td>
								<td><s:property value="order.amount" />
								</td>
								<td><s:property value="order.commodityCount" />
								</td>
								<td><s:if test="4>order.status">
				                	暂无操作
				           </s:if> <s:elseif test="4==order.status">
										<a
											href="commentCommodity.action?commodityId=<s:property value="order.commodityId"/>">评价</a>|申请返修|退货
				           </s:elseif> <s:elseif test="5==order.status">
										<a
											href="myComment.action?commodityId=<s:property value="order.commodityId"/>">查看评价</a>|申请返修|退货
				           </s:elseif> <s:elseif test="6==order.status">
										<a
											href="myComment.action?commodityId=<s:property value="order.commodityId"/>">查看评价</a>|退货
				           </s:elseif> <s:else>
				           		暂无操作
				           </s:else></td>
							</tr>
						</s:if>
					</tbody>


				</table>
				<hr />
				<s:if test="order.remark!=null">
	                           订单备注
	          <input id="remark" name="remark" type="text"
						value="<s:property value="order.remark"/>"
						class="inputAddressSize" />
				</s:if>
				<hr />

			</div>

		</div>
		<div class="clear"></div>
		<!-- Footer -->
		<jsp:include page="common/bottom.jsp" />
		<div class="clear"></div>
	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../css/jquery-ui-1.7.custom.css" rel="stylesheet"
	type="text/css" />
<script src="../js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="../js/jquery-ui-1.7.custom.min.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="../kindeditor/fckeditor.js"></script>
<link rel="stylesheet" href="../themes/default/default.css" />
<link rel="stylesheet" href="../kindeditor/plugins/code/prettify.css" />
<script charset="utf-8" src="../kindeditor/kindeditor.js"></script>
<script charset="utf-8" src="../kindeditor/lang/zh_CN.js"></script>
<script charset="utf-8" src="../kindeditor/plugins/code/prettify.js"></script>
<script type="text/javascript">

	KindEditor.ready(function(K) {
		var editorQuickOverride = K.create('textarea[name="quickOverride"]', {
			cssPath : '../kindeditor/plugins/code/prettify.css',
			uploadJson : '../kindeditor/jsp/upload_json.jsp',
			fileManagerJson : '../kindeditor/jsp/file_manager_json.jsp',
			allowFileManager : true,
			afterCreate : function() {
				var self = this;
			}
		});
		
		var editorDescription = K.create('textarea[name="description"]', {
			cssPath : '../kindeditor/plugins/code/prettify.css',
			uploadJson : '../kindeditor/jsp/upload_json.jsp',
			fileManagerJson : '../kindeditor/jsp/file_manager_json.jsp',
			allowFileManager : true,
			afterCreate : function() {
				var self = this;
			}
		});
		
		
		var editorSpecifications = K.create('textarea[name="specifications"]', {
			cssPath : '../kindeditor/plugins/code/prettify.css',
			uploadJson : '../kindeditor/jsp/upload_json.jsp',
			fileManagerJson : '../kindeditor/jsp/file_manager_json.jsp',
			allowFileManager : true,
			afterCreate : function() {
				var self = this;
			}
		});
		
		var editorPackingList = K.create('textarea[name="packingList"]', {
			cssPath : '../kindeditor/plugins/code/prettify.css',
			uploadJson : '../kindeditor/jsp/upload_json.jsp',
			fileManagerJson : '../kindeditor/jsp/file_manager_json.jsp',
			allowFileManager : true,
			afterCreate : function() {
				var self = this;
			}
		});
		
		prettyPrint();
	});
</script>

<script type="text/javascript">

	$(document).ready(function() {
		
		
		$("#commodityCode").click(function(){
			$("#commodityCode").val("");
			$("#commodityCodeInfo").html("");
			$("#commodityCodeAlert").html("");
		});
		
		
		$("#commodityName").blur(function(){
			var commodityName = $("#commodityName").val();
			if (commodityName.length == 0 || commodityName == "") {
				$("#commodityNameAlert").html("<font size='5' color='red'>×</font>");
			}else{
				$("#commodityNameAlert").html("<font size='5' color='green'>√</font>");
				
			}
		});
		
		$("#commodityName").click(function(){
			$("#commodityNameAlert").html("");
			
		});
		
		$("#categoryCode").blur(function(){
			var categoryCode = $("#categoryCode").val();
			if (categoryCode.length == 0 || categoryCode == "") {
				$("#categoryCodeAlert").html("<font size='5' color='red'>×</font>");
			}else{
				$("#categoryCodeAlert").html("<font size='5' color='green'>√</font>");
				
			}
		});
		
		$("#categoryCode").click(function(){
			$("#categoryCodeAlert").html("");
			
		});
		
		$("#qty").blur(function(){
			var qty = $("#qty").val();
			if (qty.length == 0 || qty == "") {
				$("#qtyAlert").html("<font size='5' color='red'>×</font>");
			}else{
				$("#qtyAlert").html("<font size='5' color='green'>√</font>");
				
			}
		});
		
		$("#qty").click(function(){
			$("#qtyAlert").html("");
			
		});
		
		$("#price").blur(function(){
			var price = $("#price").val();
			if (price.length == 0 || price == "") {
				$("#priceAlert").html("<font size='5' color='red'>×</font>");
			}else{
				$("#priceAlert").html("<font size='5' color='green'>√</font>");
				
			}
		});
		
		$("#price").click(function(){
			$("#priceAlert").html("");
		});
		
		
		
		$("#addBtn").click(function() {
			
			var commodityName = $("#commodityName").val();
			if (commodityName.length == 0 || commodityName == "") {
				$("#commodityNameInfo").show();
				$("#commodityNameAlert").html("<font size='5' color='red'>×</font>");
				$("#commodityName").focus();
				return false;
			}else{
				$("#commodityNameInfo").hide();
				$("#commodityNameAlert").html("<font size='5' color='green'>√</font>");
				
			}
			
			var categoryCode = $("#categoryCode").val();
			if (categoryCode.length == 0 || categoryCode == "") {
				$("#categoryCodeInfo").show();
				$("#categoryCodeAlert").html("<font size='5' color='red'>×</font>");
				$("#categoryCode").focus();
				return false;
			}else{
				$("#categoryCodeInfo").hide();
				$("#categoryCodeAlert").html("<font size='5' color='green'>√</font>");
				
			}
			
			
			var qty = $("#qty").val();
			if (qty.length == 0 || qty == "") {
				$("#qtyInfo").show();
				$("#qtyAlert").html("<font size='5' color='red'>×</font>");
				$("#qty").focus();
				return false;
			}else{
				$("#qtyInfo").hide();
				$("#qtyAlert").html("<font size='5' color='green'>√</font>");
				
			}
			
			var price = $("#price").val();
			if (price.length == 0 || price == "") {
				$("#priceInfo").show();
				$("#priceAlert").html("<font size='5' color='red'>×</font>");
				$("#price").focus();
				return false;
			}else{
				$("#priceInfo").hide();
				$("#priceAlert").html("<font size='5' color='green'>√</font>");
				
			}
			
			/* var  quickOverride= $("#quickOverride").val();
			alert(quickOverride);*/
			// 将编辑器的HTML数据同步到textarea
			
			//editorQuickOverride.sync();
			
			/* editor.sync('textarea[name="commodity.quickOverride"]');
			var  quickOverride2= $("#quickOverride").text();
			alert(quickOverride2);
			var  quickOverride3= document.getElementById("quickOverride").value;
			alert(quickOverride3);
			return false; */
			
			
			
		});
			
		
		$("#cancelBtn").click(function() {
			window.self.location="commodity_commodityMain.action";

		});
	});
</script>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #F8F9FA;
}
-->
</style>

<title>添加商品信息</title>

<link href="../images/skin.css" rel="stylesheet" type="text/css" />
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17" height="29" valign="top"
				background="../images/mail_leftbg.gif"><img
				src="../images/left-top-right.gif" width="17" height="29" />
			</td>
			<td width="935" height="29" valign="top"
				background="../images/content-bg.gif"><table width="100%"
					height="31" border="0" cellpadding="0" cellspacing="0"
					class="left_topbg" id="table2">
					<tr>


					</tr>
				</table>
			</td>
			<td width="16" valign="top" background="../images/mail_rightbg.gif"><img
				src="../images/nav-right-bg.gif" width="16" height="29" />
			</td>
		</tr>
		<tr>
			<td height="71" valign="middle"
				background="../images/mail_leftbg.gif">&nbsp;</td>
			<td valign="top" bgcolor="#F7F8F9"><table width="100%"
					height="138" border="0" cellpadding="0" cellspacing="0">

					<tr>
						<td height="13" valign="top">&nbsp;</td>
					</tr>
					<tr>
						<td valign="top"><table width="98%" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<tr>
									<td class="left_txt">当前位置：添加商品</td>
								</tr>

								<tr>
									<td height="20"><table width="100%" height="1" border="0"
											cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
											<tr>
												<td></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td>
										<table width="100%" height="55" border="0" cellpadding="0"
											cellspacing="0">

											<tr>
												<td width="10%" height="55" valign="middle"><img
													src="../images/title.gif" width="54" height="55">
												</td>
												<td width="90%" valign="top"><span class="left_txt2">在这里，您可以添加新商品</span><span
													class="left_txt3">！</span><br></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>

									<td>&nbsp;</td>
								</tr>
								<tr>
									<td><table width="100%" height="31" border="0"
											cellpadding="0" cellspacing="0" class="nowtable">
											<tr>
												<td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;商品信息设置</td>
											</tr>
										</table>
									</td>

								</tr>
								<tr>
									<td>
										<form id="addCommodity_form"
											action="commodity_addCommodity.action" method="post">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">

												<tr>
													<td width="50%" height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">商品代码<font color="red">*</font>:&nbsp;&nbsp;&nbsp;</td>

													<td width="50%" height="30" bgcolor="#f2f2f2"><input
														type="text" value="系统自动为您生成" size="30" disabled="disabled" />
													</td>
												</tr>

												<tr>
													<td width="50%" height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">商品名<font color="red">*</font>:&nbsp;&nbsp;&nbsp;</td>

													<td width="50%" height="30" bgcolor="#f2f2f2"><input
														type="text" id="commodityName"
														name="commodity.commodityName" size="30" /> <span
														id="commodityNameAlert"></span>
													</td>

												</tr>
												<tr>
													<td width="50%" height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">商品类别<font color="red">*</font>:&nbsp;&nbsp;&nbsp;</td>

													<td width="50%" height="30" bgcolor="#f2f2f2"><select
														id="categoryCode" name="commodity.categoryCode">
															<option value="">请选择商品类别</option>
															<s:iterator value="commodityCategoryList">
																<option
																	value="<s:property value="commodityCategoryCode"/>">
																	<s:property value="commodityCategoryName" />
																</option>
															</s:iterator>
													</select> <span id="categoryCodeAlert"></span>
													</td>

												</tr>

												<tr>
													<td width="50%" height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">QTY<font color="red">*</font>:&nbsp;&nbsp;&nbsp;
													</td>

													<td width="50%" height="30" bgcolor="#f2f2f2"><input
														type="text" id="qty" name="commodity.qty" size="30" /> <span
														id="qtyAlert"></span>
													</td>

												</tr>


												<tr>
													<td width="50%" height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">价格<font color="red">*</font>:&nbsp;&nbsp;&nbsp;
													</td>

													<td width="50%" height="30" bgcolor="#f2f2f2"><input
														type="text" id="price" name="commodity.price" size="30" />
														<span id="priceAlert"></span>
													</td>

												</tr>

												<tr>
													<td width="50%" height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">优惠价格:&nbsp;&nbsp;&nbsp;</td>

													<td width="50%" height="30" bgcolor="#f2f2f2"><input
														type="text" id="newPrice" name="commodity.newPrice"
														size="30" />
													</td>

												</tr>

												<tr>
													<td width="50%" height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">快速概览<font color="red">*</font>:&nbsp;&nbsp;&nbsp;</td>

													<td width="50%" height="30" bgcolor="#f2f2f2"><textarea
															id="quickOverride" name="commodity.quickOverride"
															cols="100" rows="18"
															style="width: 800px; height: 400px; visibility: hidden;"></textarea>
													</td>

												</tr>


												<tr>
													<td width="50%" height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">商品描述<font color="red">*</font>:&nbsp;&nbsp;&nbsp;</td>

													<td width="50%" height="30" bgcolor="#f2f2f2"><textarea
															id="description" name="commodity.description" cols="100"
															rows="18"
															style="width: 800px; height: 400px; visibility: hidden;"></textarea>
													</td>

												</tr>

												<tr>
													<td width="50%" height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">规格参数<font color="red">*</font>:&nbsp;&nbsp;&nbsp;</td>

													<td width="50%" height="30" bgcolor="#f2f2f2"><textarea
															id="specifications" name="commodity.specifications"
															cols="100" rows="18"
															style="width: 800px; height: 400px; visibility: hidden;"></textarea>
													</td>

												</tr>
												<tr>
													<td width="50%" height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">包装清单<font color="red">*</font>:&nbsp;&nbsp;&nbsp;</td>

													<td width="50%" height="30" bgcolor="#f2f2f2"><textarea
															id="packingList" name="commodity.packingList" cols="100"
															rows="18"
															style="width: 800px; height: 400px; visibility: hidden;"></textarea>
													</td>

												</tr>

												<tr>
													<td width="50%" height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">商品状态<font color="red">*</font>:&nbsp;&nbsp;&nbsp;</td>

													<td width="50%" height="30" bgcolor="#f2f2f2"><input
														type="radio" name="commodity.status" value="0"
														checked="checked" />有货 <input type="radio"
														name="commodity.status" value="1" />无货</td>

												</tr>

												<tr>
													<td width="50%" height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">备注:&nbsp;&nbsp;&nbsp;</td>

													<td width="50%" height="30" bgcolor="#f2f2f2"><textarea
															id="remark" name="commodity.remark" cols="45" rows="10"></textarea>
													</td>

												</tr>


												<tr>
													<td height="30" colspan="3">&nbsp;</td>

												</tr>

												<tr>
													<td width="50%" height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2"><input type="button" value="取消添加"
														id="cancelBtn" name="cancelBtn" />
														&nbsp;&nbsp;&nbsp;&nbsp;</td>

													<td width="50%" height="30" bgcolor="#f2f2f2">
														&nbsp;&nbsp;&nbsp;<input type="submit" value="提交添加"
														id="addBtn" /></td>

												</tr>
											</table>
										</form></td>
								</tr>



							</table></td>
					</tr>
				</table></td>
	</table>

</body>
</html>
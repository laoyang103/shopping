<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!-- Left -->
<div class="col1">
	<!-- Currency -->
	<div class="currency">
		<h6 class="colr">Select Your Currency</h6>
		<div class="cur_sel">
			<select name="speedC" id="speedD">
				<option value="Slower" class="whoo">USD</option>
				<option value="Slow">GBP</option>
				<option value="Slow">AUD</option>
			</select>
		</div>
	</div>
	<!-- Categories -->
	<div class="categories">
		<h5 class="colr">Category</h5>
		<!-- Accordion Menu -->
		<div class="arrowlistmenu">
			<s:if test="commodityCategoryList.size>0">
				<s:iterator value="commodityCategoryList">
					<a class="menuheader expandable"><s:property
							value="commodityCategoryName" />
					</a>
					<ul class="categoryitems">
						<s:if test="commodityList.size>0">
							<s:iterator value="commodityList">
								<s:if test="categoryCode ==commodityCategoryCode">

									<li><a href="detail.action?id=<s:property value="id"/>"><s:property
												value="commodityName" />
									</a>
									</li>

								</s:if>

							</s:iterator>

						</s:if>
						<s:else>
							<li><a href="#">无</a>
							</li>
						</s:else>

					</ul>

				</s:iterator>


			</s:if>

		</div>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>
	<!-- Shop By Price -->
	<div class="byprice">
		<h5 class="colr">Sort by Price</h5>
		<div class="arrowlistmenu">
			<a class="menuheader expandable">$0.00 - $1000.00</a>
			<ul class="categoryitems">
				<s:iterator value="commodityList">
					<s:if
						test="price>=0 and price <1000">
	                    	         
	                    	         <li><a href="detail.action?id=<s:property value="id"/>"><s:property value="commodityName" /></a></li>
	                    	          
	                    	         </s:if>
                    	       
                    	        </s:iterator>
                    	     
                            	
                   		 </ul>
                   		 
                   		 <a class="menuheader expandable">$1000.00 - $2000.00</a>
		                   <ul class="categoryitems">
                    	        <s:iterator value="commodityList">
	                    	         <s:if test="price>1000 and price <=2000">
	                    	         
	                    	         <li><a href="detail.action?id=<s:property value="id"/>"><s:property value="commodityName" /></a></li>
	                    	         
	                    	         </s:if>
                    	       
                    	        </s:iterator>
                    	     
                            	
                   		 </ul>
                   		 
                   		 <a class="menuheader expandable">$2000.00 - $3000.00</a>
		                   <ul class="categoryitems">
                    	        <s:iterator value="commodityList">
	                    	         <s:if test="price>2000 and price <=3000">
	                    	         
	                    	         <li><a href="detail.action?id=<s:property value="id"/>"><s:property value="commodityName" /></a></li>
	                    	         
	                    	         </s:if>
                    	        </s:iterator>
                    	     
                            	
                   		 </ul>
                   		 
                   		  <a class="menuheader expandable">$3000.00 - $4000.00</a>
		                   <ul class="categoryitems">
                    	        <s:iterator value="commodityList">
	                    	         <s:if test="price>3000 and price <=4000">
	                    	         
	                    	         <li><a href="detail.action?id=<s:property value="id"/>"><s:property value="commodityName" /></a></li>
	                    	         
	                    	         </s:if>
                    	        </s:iterator>
                    	     
                            	
                   		 </ul>
                   		 
                   		  <a class="menuheader expandable">$4000.00 - $5000.00</a>
		                   <ul class="categoryitems">
                    	        <s:iterator value="commodityList">
	                    	         <s:if test="price>4000 and price <=5000">
	                    	         
	                    	         <li><a href="detail.action?id=<s:property value="id"/>"><s:property value="commodityName" /></a></li>
	                    	         
	                    	         </s:if>
                    	        </s:iterator>
                    	     
                            	
                   		 </ul>
                		
                		 <a class="menuheader expandable"> &gt; $5000.00</a>
		                   <ul class="categoryitems">
                    	        <s:iterator value="commodityList">
	                    	         <s:if test="price >5000">
	                    	         
	                    	         <li><a href="detail.action?id=<s:property value="id"/>"><s:property value="commodityName" /></a></li>
	                    	         
	                    	         </s:if>
                    	        </s:iterator>
                    	     
                            	
                   		 </ul>
                		
                		
                	
                	
                	
                </div>
            </div>
            <div class="clear"></div>
            <!-- Recent Viewed -->
            <s:if test="recentlyViewedList.size>0">
            <div class="byprice">
            	<h5 class="colr">Recent Viewed</h5>
            	<div class="arrowlistmenu">
                <ul>
                    <s:iterator value="recentlyViewedList" status="status">
                    <s:if test="#status.count>6">
                          <s:if test="#status.count==7">
	                         <a class="menuheader expandable">更多...</a>
	                      </s:if>
		                   <ul class="categoryitems">
                    	      <li><a href="detail.action?id=<s:property value="commodityId"/>"><s:property value="commodityName" /></a></li>
                   		  </ul>
                    </s:if>
                    <s:else>
                    	<li><a href="detail.action?id=<s:property value="commodityId"/>"><s:property value="commodityName"/></a></li>
                    </s:else>
                    
                    
                    </s:iterator>
                </ul>
                </div>
            </div>
            
            </s:if>
            <div class="clear"></div>
        </div>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<div class="templatemo-content-container">
	<div class="templatemo-flex-row flex-content-row">
		<div class="templatemo-content-widget white-bg col-2">
			<div class="templatemo-flex-row flex-content-row">
				<div class="col-1">
					<div class="panel panel-default margin-10">
						<div class="panel-heading">
							<h1 class="text-uppercase">ORDER INFORMATION</h1>
							<br>
							<div class="mb-3">
							  <label>Order ID: ${currentOrder.id} </label>
							</div>
							<div class="mb-3">
							  <label>Address: ${currentOrder.street}, ${currentOrder.ward}, ${currentOrder.district}</label>
							</div>
							<div class="mb-3">
							  <label>Order ID: <fmt:formatNumber type="number" pattern="###,###" value="${currentOrder.totalPrice}"/> VND</label>
							</div>
							<br>
							<h2 class="text-uppercase">Status</h2>
							<div class="templatemo-content-widget white-bg">
				                <i class="fa fa-times"></i>                
				                <h3 class="text-uppercase margin-bottom-10">
									Order status: <span style="font-weight:bolder;">${currentOrder.orderStatus.name}</span>
								</h3>
				                <p class="margin-bottom-0">
				                	Time: ${currentOrder.createdDate}
				                </p>                  
			              	</div>
						</div>                  
					</div>              
				</div>
			</div>
			<div class="col-1">
	              <div class="panel panel-default templatemo-content-widget white-bg no-padding templatemo-overflow-hidden">
	                <div class="panel-heading templatemo-position-relative"><h2 class="text-uppercase">History</h2></div>
	                <div class="table-responsive">
	                  <table class="table table-striped table-bordered">
	                    <thead>
	                      <tr>
	                      	<td>Index</td>
	                        <td>Order ID</td>
	                        <td>Created Date</td>
	                        <td>Total</td>
	                      </tr>
	                    </thead>
	                    <tbody>
	                    	<c:forEach var="item" items="${pages.content}" varStatus="i" begin="0" end="${pages.size - 1}">
	                    		<tr>
	                    			<td>${i.index + 1}</td>
		                        	<td>${item.id}</td>
		                        	<td>${item.createdDate}</td>
		                        	<td><fmt:formatNumber type="number" pattern="###,###" value="${item.totalPrice}"/> VND</td>
		                      </tr>         
	                    	</c:forEach>   
	                    </tbody>
	                  </table>    
	                </div>                          
	              </div>
	            </div>					
		</div>
	</div>
</div>
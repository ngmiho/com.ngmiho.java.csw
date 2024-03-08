<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<div class="templatemo-content-container">
	<div class="templatemo-flex-row flex-content-row">
		<div class="templatemo-content-widget white-bg col-2">
			<div class="col-1">
			    <div class="panel panel-default templatemo-content-widget white-bg no-padding templatemo-overflow-hidden">
			      <i class="fa fa-times"></i>
			      <div class="panel-heading templatemo-position-relative">
			      	<div class="square"></div>
					<h2 class="templatemo-inline-block">ORDER MANAGEMENT</h2>
			      </div>
			      <br>
			      <form:form action="/admin/order-management" method="post" modelAttribute="order">
			      	<div class="row">
				        <div class="col-md-3 m-2">
				        	<form:input path="id" class="form-control" placeholder="Order id?"/>
				        </div>
				        <a href="/admin/order-management?orderId=1" class="btn btn-warning">Search</a>
				        <button type="submit" class="btn btn-default">Search</button>
				      </div>
			      </form:form>
			      <div class="table-responsive">
			        <table class="table table-striped table-bordered">
			          <thead>
			            <tr>
			              <td>#</td>
			              <td>Order ID</td>
			              <td>Waiting</td>
			              <td>Preparation</td>
			              <td>Shipping</td>
			              <td>Payment</td>
			              <td>Cancel</td>
			              <td>Payment Status</td>
			              <td>Total</td>
			            </tr>
			          </thead>
			          <tbody>
			          	<c:forEach var="item" items="${pages.content}" varStatus="i" begin="0" end="${pages.size - 1}">
			          		<tr>
				              <td>${i.index}</td>
				              <td>${item.id}</td>
				              <td>${item.}</td>
				              <td>${item.}</td>
				              <td>${item.}</td>
				              <td>${item.}</td>
				              <td>${item.}</td>
				              <td>${item.}</td>
				              <td><fmt:formatNumber type="number" pattern="###,###" value="${item.totalPrice}"/> VND</td>
				            </tr>
			          	</c:forEach>
			          </tbody>
			        </table>
			      </div>
			    </div>
			  </div>
			
			  <div class="templatemo-flex-row flex-content-row">
			    <div class="col-1">
			      <div class="panel panel-default margin-10">
			        <div class="panel-heading">
			        	<div class="square"></div>
						<h1 class="templatemo-inline-block">ORDER INFORMATION</h1>
			          <br><br>
			          <div class="mb-3">
			            <label>Order ID: </label>
			          </div>
			          <div class="mb-3">
			            <label>Address: </label>
			          </div>
			          <br>
			          <h2 class="text-uppercase">Status</h2>
			          <div class="templatemo-content-widget white-bg">
			            <i class="fa fa-times"></i>
			            <h3 class="text-uppercase margin-bottom-10">
			              Order is ...
			            </h3>
			            <br>
			            <p class="margin-bottom-0">
			              Time: xx : xx AM/PM
			            </p>
			            <br>
			            <div class="form-group">
							<a href="#" class="templatemo-blue-button">Contact</a>
						</div>
			          </div>
			        </div>
			      </div>
			    </div>
			  </div>			
		</div>
	</div>
</div>
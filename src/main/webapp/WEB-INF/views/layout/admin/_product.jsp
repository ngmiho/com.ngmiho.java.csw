<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<div class="templatemo-content-container">
	<div class="templatemo-flex-row flex-content-row">
		<div class="templatemo-content-widget white-bg col-2">
			<i class="fa fa-times"></i>
			<div class="square"></div>
			<h2 class="templatemo-inline-block">MANAGE PRODUCT</h2>
			<hr>
			<form:form action="/admin/product/save" method="post" modelAttribute="product" class="form-horizontal templatemo-container" role="form">
					<div class="form-inner">
						<i class="fa fa-times"></i>
							<div class="media margin-bottom-30">
								<div class="media-left padding-right-25">
									<a href="#"> <img
										class="media-object img-circle templatemo-img-bordered"
										src="/assets/img/drink/${product.image}" alt="Sunset" style="width:136px;">
									</a>
								</div>
								<div class="media-body">
									<h2 class="media-heading text-uppercase blue-text">${product.name}</h2>
									<p>Type: ${product.category.name}</p>
								</div>
							</div>
						<div class="form-group">
							<div class="col-md-6">
								<label class="control-label">Price</label>
								<form:input path="price" class="form-control" />
								<form:errors path="price" style="color:red;" />
							</div>
							<div class="col-md-6">
								<label class="control-label">Image</label>
								<form:input path="image" class="form-control" />
								<form:errors path="image" style="color:red;" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<label class="control-label">Describe</label>
								<form:textarea path="describe" class="form-control"/>
								<form:errors path="describe" style="color:red;" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<input type="submit" value="Update" class="btn btn-warning">
							</div>
						</div>
					</div>
				</form:form>
			<div class="templatemo-content-container">
				
				<div class="templatemo-content-widget no-padding">
					<div class="panel panel-default table-responsive">
						<table
							class="table table-striped table-bordered templatemo-user-table">
							<thead>
								<tr>
									<td><a href="" class="white-text templatemo-sort-by">#
											<span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">Name<span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">Price<span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">Type<span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">Image<span class="caret"></span>
									</a></td>
									<td>Edit</td>
									<td>Action</td>
									<td>Delete</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${pages.content}" varStatus="i" begin="0" end="${pages.size - 1}">
									<tr>
										<td>${i.index + 1}</td>
										<td>${item.name}</td>
										<td><fmt:formatNumber type="number" pattern="###,###" value="${item.price}"/> VND</td>
										<td>${item.describe}</td>
										<td>${item.image}</td>
										<td><a href="" class="templatemo-edit-btn">Edit</a></td>
										<td><a href="" class="templatemo-link">Action</a></td>
										<td><a href="" class="templatemo-link">Delete</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="pagination-wrap">
							<ul class="pagination">
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li class="active"><a href="#">3 <span class="sr-only">(current)</span></a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"> <span
										aria-hidden="true"><i class="fa fa-play"></i></span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
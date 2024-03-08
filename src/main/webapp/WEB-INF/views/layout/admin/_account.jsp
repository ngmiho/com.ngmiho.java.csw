<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div class="templatemo-content-container">
	<div class="templatemo-flex-row flex-content-row">
		<div class="templatemo-content-widget white-bg col-2">
			<div class="templatemo-flex-row flex-content-row">
				<div class="col-1">
					<div class="panel panel-default margin-10 no-border">
						<form:form action="/admin/account" method="post" modelAttribute="account"
							class="form-horizontal templatemo-container" role="form">
							<i class="fa fa-times"></i>
							<div class="media margin-bottom-30">
								<div class="media-left padding-right-25">
									<a href="#"> <img class="media-object img-circle templatemo-img-bordered"
											src="images/person.jpg" alt="Sunset">
									</a>
								</div>
								<div class="media-body">
									<h2 class="media-heading text-uppercase blue-text">${account.userName}</h2>
									<p>${account.admin ? 'Admin' : 'User'}</p>
								</div>
							</div>
							<div class="form-inner">
								<div class="form-group">
									<div class="col-md-6">
										<label for="first_name" class="control-label">${account.firstName}</label>
										<form:input path="firstName" class="form-control" />
										<form:errors path="firstName" style="color:red;" />
									</div>
									<div class="col-md-6">
										<label for="first_name" class="control-label">${account.lastName}</label>
										<form:input path="lastName" class="form-control" />
										<form:errors path="lastName" style="color:red;" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-6">
										<label for="first_name" class="control-label">${account.userName}</label>
										<form:input path="userName" class="form-control" />
										<form:errors path="userName" style="color:red;" />
									</div>
									<div class="col-md-6">
										<label for="email" class="control-label">${account.email}</label>
										<form:input path="email" class="form-control" />
										<form:errors path="email" style="color:red;" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-6">
										<label for="phone" class="control-label">${account.phoneNumber}</label>
										<form:input path="phoneNumber" class="form-control" />
										<form:errors path="phoneNumber" style="color:red;" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-6 templatemo-radio-group">
										<div class="mb-3">
											<label class="form-label">Gender</label><br>
											<label class="radio-inline">
												<form:radiobutton path="gender" value="0" label="Male" checked="${account.gender == 0 ? 'checked' : ''}" />
											</label>
											<label class="radio-inline">
												<form:radiobutton path="gender" value="1" label="Female" checked="${account.gender == 1 ? 'checked' : ''}" />
											</label>
											<label class="radio-inline">
												<form:radiobutton path="gender" value="2" label="Other" checked="${account.gender == 2 ? 'checked' : ''}" />
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-6 templatemo-radio-group">
										<div class="mb-3">
											<label class="form-label">Role</label><br>
											<label class="radio-inline">
												<form:radiobutton path="admin" value="0" label="Admin" checked="${account.admin ? 'checked' : ''}" />
											</label>
											<label class="radio-inline">
												<form:radiobutton path="admin" value="1" label="User" checked="${account.admin ? '' : 'checked'}"/>
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-6 templatemo-radio-group">
										<div class="mb-3">
											<label class="form-label">Active</label><br>
											<label class="radio-inline">
												<form:radiobutton path="active" value="0" label="Yes" checked="${account.active ? 'checked' : ''}" />
											</label>
											<label class="radio-inline">
												<form:radiobutton path="active" value="1" label="No" checked="${account.active ? '' : 'checked'}"/>
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<input type="submit" value="Save" class="btn btn-warning">
										<input type="submit" value="Delete" class="btn btn-warning">
										<input type="submit" value="Update" class="btn btn-warning">
									</div>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<div class="col-1">
				<div
					class="panel panel-default templatemo-content-widget white-bg no-padding templatemo-overflow-hidden">
					<div class="panel-heading templatemo-position-relative">
						<h2 class="text-uppercase">History</h2>
					</div>
					<div class="table-responsive">
						<table class="table table-striped table-bordered templatemo-user-table">
							<thead>
								<tr>
									<th><a href="" class="white-text templatemo-sort-by">#
											<span class="caret"></span>
										</a></th>
									<th><a href="" class="white-text templatemo-sort-by">First
											Name <span class="caret">
											</span>
										</a></th>
									<th><a href="" class="white-text templatemo-sort-by">Last
											Name <span class="caret"></span>
										</a></th>
									<th><a href="" class="white-text templatemo-sort-by">Gender <span
												class="caret"></span>
										</a></th>
									<th><a href="" class="white-text templatemo-sort-by">User
											Name <span class="caret"></span>
										</a></th>
									<th><a href="" class="white-text templatemo-sort-by">Phone <span
												class="caret"></span></th>
									<th><a href="" class="white-text templatemo-sort-by">Address <span
												class="caret"></span></th>
									<th><a href="" class="white-text templatemo-sort-by">Email
											<span class="caret"></span></th>
									</a></th>
									<th><a href="" class="white-text templatemo-sort-by">Role<span class="caret"></span>
										</a></th>
									<th><a href="" class="white-text templatemo-sort-by">Active<span
												class="caret"></span>
										</a></th>
									<th>Edit</th>
									<th>Action</th>
									<th>Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${pages.content}" varStatus="i" begin="0"
									end="${pages.size - 1}">
									<tr>
										<td>${i.index}</td>
										<td>${item.userName}</td>
										<td>${item.phoneNumber}</td>
										<td>${item.address}</td>
										<td>${item.lastName} ${item.firstName}</td>
										<c:choose>
											<c:when test="${item.gender == 0}">
												<td>Male</td>
											</c:when>
											<c:when test="${item.gender == 1}">
												<td>Female</td>
											</c:when>
											<c:otherwise>
												<td>Other</td>
											</c:otherwise>
										</c:choose>
										<td>${item.yob}</td>
										<td>${item.email}</td>
										<td>${item.active ? 'Active' : 'Inactive'}</td>
										<td>${item.active ? 'Admin' : 'User'}</td>
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
								<li><a href="#" aria-label="Next"> <span aria-hidden="true"><i
												class="fa fa-play"></i></span>
									</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
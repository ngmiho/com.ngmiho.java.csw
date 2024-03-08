<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <div class="container">
    <div class="col-md-6">
      <div class="form-group">
        <div class="col-md-12">
          <h3>Please enter password information.</h3>
        </div>
      </div>
      <form:form action="/change-password" method="post" modelAttribute="account"
        class="form-horizontal templatemo-login-form-2 templatemo-container" role="form">
        <div class="form-group">
          <div class="col-md-12">
            <form:input path="password" class="form-control" placeholder="Current Password" />
            <form:errors path="password" style="color:red;" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-md-12">
            <form:input path="password" class="form-control" placeholder="New Password" />
            <form:errors path="password" style="color:red;" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-md-12">
            <form:input path="password" class="form-control" placeholder="Confirm Password" />
            <form:errors path="password" style="color:red;" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-md-12">
            <input type="submit" value="Change" class="btn btn-warning">
          </div>
        </div>
      </form:form>
    </div>
  </div>
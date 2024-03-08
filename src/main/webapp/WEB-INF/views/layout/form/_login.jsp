<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <div class="container">
    <div class="col-md-12">
      <form:form action="/login" method="post" modelAttribute="account"
        class="form-horizontal templatemo-login-form-2 templatemo-container" role="form">
        <div class="row">
          <div class="col-md-12">
            <h1>Login</h1>
          </div>
        </div>
        <div class="row">
          <div class="templatemo-one-signin col-md-6">
            <div class="form-group">
              <div class="col-md-12">
                <label for="username" class="control-label">Email</label>
                <div class="templatemo-input-icon-container">
                  <i class="fa fa-user"></i>
                  <form:input path="email" class="form-control" />
                  <form:errors path="email" style="color:red;" />
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="col-md-12">
                <label for="password" class="control-label">Password</label>
                <div class="templatemo-input-icon-container">
                  <i class="fa fa-lock"></i>
                  <form:input path="password" class="form-control" />
                  <form:errors path="password" style="color:red;" />
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="col-md-12">
                <div class="checkbox">
                  <label>
                    <input type="checkbox"> Remember me
                  </label>
                </div>
              </div>
            </div>
            <label class="text-dark">${notification}</label>
            <div class="form-group">
              <div class="col-md-12">
                <input type="submit" value="LOG IN" class="btn btn-warning">
              </div>
            </div>
            <div class="form-group">
              <div class="col-md-12">
                <a href="/forgot-password" class="text-center">Cannot login?</a>
                <a href="/sign-up" class="pull-right">Sign up</a> <br>
                <a href="/home" class="pull-right">Home</a>
              </div>
            </div>
          </div>
          <div class="templatemo-other-signin col-md-6">
            <label class="margin-bottom-15">
              One-click sign in using other services. Credit goes to <a rel="nofollow"
                href="http://lipis.github.io/bootstrap-social/">Bootstrap Social</a> for social sign in buttons.
            </label>
            <a class="btn btn-block btn-social btn-facebook margin-bottom-15">
              <i class="fa fa-facebook"></i> Sign in with Facebook
            </a>
            <a class="btn btn-block btn-social btn-twitter margin-bottom-15">
              <i class="fa fa-twitter"></i> Sign in with Twitter
            </a>
            <a class="btn btn-block btn-social btn-google-plus">
              <i class="fa fa-google-plus"></i> Sign in with Google
            </a>
          </div>
        </div>
      </form:form>
    </div>
  </div>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <div class="container">
    <div class="col-md-12">
      <h1 class="margin-bottom-15">Password Reset</h1>
    </div>
    <form:form action="/otp" method="post" modelAttribute="account"
      class="form-horizontal templatemo-forgot-password-form templatemo-container" role="form">
      <div class="form-group">
        <div class="col-md-12">
          <form:input path="email" class="form-control" placeholder="Your email" />
          <form:errors path="email" style="color:red;" />
        </div>
      </div>
      <div class="form-group">
        <div class="col-md-12">
          <input type="submit" value="Send OTP" class="btn btn-warning">
          <br><br>
          <a href="/login">Login</a> |
          <a href="/sign-up">Sign Up</a> |
          <a href="/home">Home</a>
        </div>
      </div>
    </form:form>
  </div>
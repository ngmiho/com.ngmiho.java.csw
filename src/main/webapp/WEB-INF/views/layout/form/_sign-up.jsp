<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <div class="container">
    <div class="col-md-12">
      <form:form action="/sign-up" method="post" modelAttribute="account"
        class="form-horizontal templatemo-create-account templatemo-container" role="form">
        <div class="row">
          <div class="col-md-12">
            <h1>Sign Up</h1><br>
          </div>
        </div>
        <div class="form-inner">
          <div class="form-group">
            <div class="col-md-6">
              <label for="first_name" class="control-label">First Name</label>
              <form:input path="firstName" class="form-control" />
              <form:errors path="firstName" style="color:red;" />
            </div>
            <div class="col-md-6">
              <label for="first_name" class="control-label">Last Name</label>
              <form:input path="lastName" class="form-control" />
              <form:errors path="lastName" style="color:red;" />
            </div>
          </div>
          <div class="form-group">
            <div class="col-md-6">
              <label for="phone" class="control-label">Phone</label>
              <form:input path="phoneNumber" class="form-control" />
              <form:errors path="phoneNumber" style="color:red;" />
            </div>
            <div class="col-md-6">
              <label for="email" class="control-label">Address</label>

            </div>
          </div>
          <div class="form-group">
            <div class="col-md-6">
              <label for="userName" class="control-label">User
                Name</label>
              <form:input path="userName" class="form-control" />
              <form:errors path="userName" style="color:red;" />
            </div>
            <div class="col-md-6">
              <label for="email" class="control-label">Email</label>
              <form:input path="email" class="form-control" />
              <form:errors path="email" style="color:red;" />
            </div>
          </div>
          <div class="form-group">
            <div class="col-md-6">
              <label for="last_name" class="control-label">Password</label>
              <form:password path="password" class="form-control" />
              <form:errors path="password" style="color:red;" />
            </div>
            <div class="col-md-6">
              <label for="last_name" class="control-label">Confirm Password</label>
              <form:password path="password" class="form-control" />
              <form:errors path="password" style="color:red;" />
            </div>
          </div>

          <div class="form-group">
            <div class="col-md-6 templatemo-radio-group">
              <div class="mb-3">
                <label class="form-label">Role</label><br>
                <label class="radio-inline">
                  <form:radiobutton path="admin" value="0" label="Admin" checked="true" />
                </label>
                <label class="radio-inline">
                  <form:radiobutton path="admin" value="1" label="User" />
                </label>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="col-md-6 templatemo-radio-group">
              <div class="mb-3">
                <label class="form-label">Active</label><br>
                <label class="radio-inline">
                  <form:radiobutton path="active" value="0" label="Yes" checked="true" />
                </label>
                <label class="radio-inline">
                  <form:radiobutton path="active" value="1" label="No" />
                </label>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="col-md-12">
              <label><input type="checkbox">I agree to the <a href="javascript:;" data-toggle="modal"
                  data-target="#templatemo_modal">Terms of Service</a> and <a href="#">Privacy Policy.</a></label>
            </div>
          </div>
          <div class="form-group">
            <div class="col-md-12">
              <input type="submit" value="Create account" class="btn btn-warning">
              <a href="/login" class="pull-right">Login</a>
              <a href="#" class="pull-right" style="color:white;">a</a>
              <a href="/home" class="pull-right">Home</a>
            </div>
          </div>
        </div>
      </form:form>
    </div>
  </div>
  <!-- Modal 
	<div class="modal fade" id="templatemo_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="myModalLabel">Terms of Service</h4>
	      </div>
	      <div class="modal-body">
	      	<p>This form is provided by <a rel="nofollow" href="http://www.templatemo.com/page/1">Free HTML5 Templates</a> that can be used for your websites. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
	        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
	        <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	-->
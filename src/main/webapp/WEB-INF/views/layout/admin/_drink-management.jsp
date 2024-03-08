<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <div class="templatemo-content-container">
    <div class="templatemo-flex-row flex-content-row">
      <div class="templatemo-content-widget white-bg col-2">
        <div class="col-1">
          <div class="panel panel-default templatemo-content-widget white-bg no-padding templatemo-overflow-hidden">
            <i class="fa fa-times"></i>
            <div class="panel-heading templatemo-position-relative">
              <div class="square"></div>
              <h2 class="templatemo-inline-block">DRINK LIST</h2>
            </div>
            <br>
            <div class="row">
              <div class="col-md-3 m-2">
                <input type="text" class="form-control" placeholder="By Order ID" name="orderId">
              </div>
              <div class="col-md-3 m-2">
                <input type="text" class="form-control" placeholder="By Status" name="status">
              </div>
              <a href="#" class="btn btn-warning">Search</a>
            </div>
            <div class="table-responsive">
              <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                    <th>Order ID</th>
                    <th>Status</th>
                    <th>Total</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>order001</td>
                    <td>Delivering</td>
                    <td>xxx.xxx VND</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>

        <div class="templatemo-content-widget white-bg col-2">
          <div class="col-1">
            <div class="square"></div>
            <h2 class="templatemo-inline-block">DRINK INFORMATION</h2>
            <br><br>
            <form:form action="/admin/product" method="post" modelAttribute="product"
              class="form-horizontal templatemo-container" role="form">
              <i class="fa fa-times"></i>
              <div class="media margin-bottom-30">
                <div class="media-left padding-right-25">
                  <a href="#"> <img class="media-object img-circle templatemo-img-bordered" src="images/person.jpg"
                      alt="Sunset">
                  </a>
                </div>
                <div class="media-body">
                  <h2 class="media-heading text-uppercase blue-text">John Barnet</h2>
                  <p>Project Manager</p>
                </div>
              </div>
              <div class="form-inner">
                <div class="form-group">
                  <div class="col-md-12">
                    <label class="control-label">Product Name</label>
                    <form:input path="name" class="form-control" />
                    <form:errors path="name" style="color:red;" />
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-md-8">
                    <label class="control-label">Image</label>
                    <input type="file" class="form-control" />
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
    </div>
  </div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/attach/_taglib.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>Admin Page</title>
    
    <%@ include file="/WEB-INF/views/attach/admin/_css.jsp" %>
    
</head>
<body>  
    <!-- Left column -->
    <div class="templatemo-flex-row">
      <div class="templatemo-sidebar">
        <header class="templatemo-site-header">
          <div class="square"></div>
          <h1>Visual Admin</h1>
        </header>
        <div class="profile-photo-container">
          <img src="/assets/images/profile1.jpg" alt="Profile Photo" class="img-responsive">  
          <div class="profile-photo-overlay"></div>
        </div>      
        <!-- Search box -->
        <form class="templatemo-search-form" role="search">
          <div class="input-group">
              <button type="submit" class="fa fa-search"></button>
              <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">           
          </div>
        </form>
        <div class="mobile-menu-icon">
            <i class="fa fa-bars"></i>
        </div>
        <nav class="templatemo-left-nav">          
          <ul>
            <li><a href="/admin/information" class="${active == '1' ? 'active' : ''}"><i class="fa fa-home fa-fw"></i>Information</a></li>
            <li><a href="/admin/order" class="${active == '2' ? 'active' : ''}"><i class="fa fa-users fa-fw"></i>Order</a></li>
            <li><a href="/admin/history" class="${active == '3' ? 'active' : ''}"><i class="fa fa-users fa-fw"></i>History</a></li>
            <li><a href="/index"><i class="fa fa-sliders fa-fw"></i>Sign Out</a></li>
            <li><hr style="color:white;"></li>
            <li><a href="/admin/account" class="${active == '4' ? 'active' : ''}"><i class="fa fa-sliders fa-fw"></i>Manage User</a></li>
            <li><a href="/admin/product" class="${active == '5' ? 'active' : ''}"><i class="fa fa-sliders fa-fw"></i>Manage Drink</a></li>
            <li><a href="/admin/order-management" class="${active == '6' ? 'active' : ''}"><i class="fa fa-sliders fa-fw"></i>Manage Order</a></li>
            <li><a href="/admin/report" class="${active == '7' ? 'active' : ''}"><i class="fa fa-sliders fa-fw"></i>Report</a></li>
          </ul>  
        </nav>
      </div>
      <!-- Main content --> 
      <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
          <div class="row">
            <nav class="templatemo-top-nav col-lg-12 col-md-12">
              <ul class="text-uppercase">
                <li><a href="/admin/info" class="active">Dash Board</a></li>
                <li><a href="javascript:;" data-toggle="modal" data-target="#templatemo_modal">Change Password</a></li>
                <li><a href="/home">Home</a></li>
              </ul>  
            </nav> 
          </div>
        </div>
        <!-- Modal -->
		<div class="modal fade" id="templatemo_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h2 class="modal-title" id="myModalLabel">Change Password</h2>
		      </div>
		      <div class="modal-body">		     
		       	
		      	<jsp:include page="_change-password.jsp"></jsp:include>
		      	
		      </div>
		      <div class="modal-footer">
		      	<div class="form-group">
                      <button type="button" class="templatemo-blue-button" data-dismiss="modal">Close</button>
                </div>
		      </div>
		    </div>
		  </div>
		</div>
		
        <jsp:include page="${jsp}"></jsp:include>
        
		<div class="templatemo-content-container">
          <footer class="text-right">
            <p class="col-lg-12 small copyright-text text-center">Copyright &copy; 2024 Coffee Shop Management Project</p>
          </footer>         
        </div>
      </div>
    </div>
    
    <!-- JS -->
    <%@ include file="/WEB-INF/views/attach/admin/_js.jsp" %>

  </body>
</html>
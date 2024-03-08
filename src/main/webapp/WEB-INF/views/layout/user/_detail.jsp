<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style>
  a {
    text-decoration: none;
  }
</style>
<div class="row justify-content-md-center">
  <div class="col-md-10 my-4">
    <!-- Detail -->
    <div class="card mb-3" style="height: 480px;">
      <div class="row g-0">
        <div class="col-md-6">
          <div class="row">
            <div class="col-md-12 my-2">
              <img src="/assets/img/drink/${product.image}" class="img-fluid rounded-start" alt="..." style="width:600px;">
            </div>
            <div class="col-md-4">
              <img src="images/profile1.jpg" alt="..." style="width:170px;">
            </div>
            <div class="col-md-4">
              <img src="images/profile1.jpg" alt="..." style="width:170px;">
            </div>
            <div class="col-md-4">
              <img src="images/profile1.jpg" alt="..." style="width:170px;">
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card-body">
            <h5 class="card-title" style="font-size: 40px;">${product.name}</h5>
            <p class="card-text" style="font-size: 20px;">${product.price} VND</p>
            <p class="card-text" style="font-size: 16px;">
              Size<br>

            </p>
            <p class="card-text" style="font-size: 16px;">
              Topping<br>
            </p>
            <p class="card-text" style="font-size: 20px;">${product.descripe}</p>
            <a href="#main" class="tm-more-button tm-more-button-welcome">Details</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Detail -->
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<div class="tm-main-section light-gray-bg">
  <div class="container" id="main">
    <section class="tm-section tm-section-margin-bottom-0 row">
      <div class="col-lg-12 tm-section-header-container">
        <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo"
            class="tm-site-logo"> Popular Items</h2>
        <div class="tm-hr-container">
          <hr class="tm-hr">
        </div>
      </div>
      <div class="col-lg-12 tm-popular-items-container">
        <c:forEach var="product" items="${bestsells}">
          <div class="tm-popular-item">
            <img src="img/drink/${product.image}" alt="Popular" class="tm-popular-item-img">
            <div class="tm-popular-item-description">
              <h3 class="tm-handwriting-font tm-popular-item-title"><span
                  class="tm-handwriting-font bigger-first-letter">a</span>mericano</h3>
              <hr class="tm-popular-item-hr">
              <p>${product.description}</p>
              <div class="order-now-container">
                <a href="/best-sell" class="order-now-link tm-handwriting-font">Order Now</a>
              </div>
            </div>
          </div>
        </c:forEach>
      </div>
    </section>
    <section class="tm-section">
      <div class="row">
        <div class="col-lg-12 tm-section-header-container">
          <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo"
              class="tm-site-logo"> Daily Menu</h2>
          <div class="tm-hr-container">
            <hr class="tm-hr">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="tm-daily-menu-container margin-top-60">
          <div class="col-lg-4 col-md-4">
            <img src="img/menu-board.png" alt="Menu board" class="tm-daily-menu-img">
          </div>
          <div class="col-lg-8 col-md-8">
            <p>Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi
              vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>
            <ol class="margin-top-30">
              <li>Tellus eget condimentum rhoncus.</li>
              <li>Sem quam semper libero.</li>
              <li>Sit amet adipiscing sem neque sed ipsum.</li>
              <li>Nam quam nunc, blandit vel, luctus pulvinar.</li>
              <li>Maecenas nec odio et ante tincidunt tempus.</li>
              <li>Donec vitae sapien ut libero ventenatis faucibus.</li>
            </ol>
            <a href="#" class="tm-more-button margin-top-30">Read More</a>
          </div>
        </div>
      </div>
    </section>
  </div>
</div>
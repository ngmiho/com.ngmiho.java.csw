<section class="tm-welcome-section">
  <div class="container tm-position-relative">
    <div class="tm-lights-container">
      <img src="/assets/img/light.png" alt="Light" class="light light-1">
      <img src="/assets/img/light.png" alt="Light" class="light light-2">
      <img src="/assets/img/light.png" alt="Light" class="light light-3">
    </div>
    <div class="row tm-welcome-content">
      <h2 class="white-text tm-handwriting-font tm-welcome-header"><img src="/assets/img/header-line.png" alt="Line"
          class="tm-header-line">&nbsp;Welcome To&nbsp;&nbsp;<img src="/assets/img/header-line.png" alt="Line"
          class="tm-header-line"></h2>
      <h2 class="gold-text tm-welcome-header-2">Cafe House</h2>
      <a href="#main" class="tm-more-button tm-more-button-welcome">Details</a>
    </div>
    <img src="/assets/img/table-set.png" alt="Table Set" class="tm-table-set img-responsive">
  </div>
</section>
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
        <c:forEach var="product" items="${bestsells}" varStatus="status">
          <c:if test="${status.index < 3}">
            <div class="tm-popular-item">
              <img src="img/drink/${product.images.name}" alt="Popular" class="tm-popular-item-img">
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
          </c:if>
        </c:forEach>
      </div>
    </section> --%>

    <section class="tm-section row">
      <div class="col-lg-12 tm-section-header-container">
        <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo"
            class="tm-site-logo"> Today's Special</h2>
        <div class="tm-hr-container">
          <hr class="tm-hr">
        </div>
      </div>
      <div class="col-lg-12 tm-special-container margin-top-60">
        <div class="tm-special-container-left"> <!-- left -->
          <div class="tm-special-item">
            <div class="tm-special-img-container">
              <img src="img/drink/${bestsells[0].image}" style="width:520px;height:400px;" alt="Special"
                class="tm-special-img img-responsive">
              <a href="#">
                <div class="tm-special-description">
                  <h3 class="tm-special-title">Donec pede justo</h3>
                  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
                </div>
              </a>
            </div>
          </div>
        </div>
        <div class="tm-special-container-right"> <!-- right -->
          <div>
            <div class="tm-special-item">
              <div class="tm-special-img-container">
                <img src="img/drink/${bestsells[1].image}" style="width:360px;height:207px;" alt="Special"
                  class="img-responsive">
                <a href="#">
                  <div class="tm-special-description">
                    <h3 class="tm-special-title">Etiam sit amet</h3>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
                  </div>
                </a>
              </div>
            </div>
          </div>
          <div class="tm-special-container-lower">
            <div class="tm-special-item">
              <div class="tm-special-img-container">
                <img src="img/drink/${bestsells[2].image}" style="width:155px;height:155px;" alt="Special"
                  class="img-responsive">
                <a href="#">
                  <div class="tm-special-description">
                    <p>Vivamus elementum</p>
                  </div>
                </a>
              </div>
            </div>
            <div class="tm-special-item">
              <div class="tm-special-img-container">
                <img src="img/drink/${bestsells[3].image}" style="width:155px;height:155px;" alt="Special"
                  class="img-responsive">
                <a href="#">
                  <div class="tm-special-description">
                    <p>Quisque rutrum.</p>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
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

            <c:forEach items="${page.content}" var="drink">
              <div class="tm-product">
                <img src="img/drink/CFDenDa.jpg" alt="" width="130">
                <div class="tm-product-text">
                  <h3 class="tm-product-title">${drink.name}</h3>
                  <p class="tm-product-description">${drink.description }</p>
                </div>
                <div class="tm-product-price">
                  <a href="#" class="tm-product-price-link tm-handwriting-font"><span
                      class="tm-product-price-currency">$</span>30</a>
                </div>
              </div>
            </c:forEach>
            <a href="/menu" class="tm-more-button margin-top-30">Read More</a>
          </div>
        </div>
      </div>
    </section>
  </div>
</div>
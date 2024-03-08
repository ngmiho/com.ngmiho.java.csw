<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="tm-main-section light-gray-bg">
      <div class="container" id="main">
        <section class="tm-section row">
          <div class="col-lg-12 tm-section-header-container margin-bottom-30">
            <div class="tm-hr-container"><hr class="tm-hr"></div>
          </div>
          <div>
            <div class="col-lg-3 col-md-3">
              <div class="tm-position-relative margin-bottom-30">              
                <nav class="tm-side-menu">
                  <ul>
                  	<c:forEach var="item" items="${categories}">
                    	<li><a href="/menu?category=${item.name}" class="${item.name == currentCategory ? 'active' : '' }">${item.name}</a></li>
                    </c:forEach>
                  </ul>              
                </nav>    
                <img src="/assets/img/vertical-menu-bg.png" alt="Menu bg" class="tm-side-menu-bg">
              </div>  
            </div>            
            <div class="tm-menu-product-content col-lg-9 col-md-9"> <!-- menu content -->
              <c:forEach var="item" items="${pages.content}">
              	<div class="tm-product">
	                <img src="/assets/img/drink/${item.image}" alt="Product" style="width:136px;height:136px;">
	                <div class="tm-product-text">
	                  <h3 class="tm-product-title">${item.name}</h3>
	                  <p class="tm-product-description">${item.descripe}</p>
	                </div>
	                <div class="tm-product-price">
	                  <a href="/detail?id=${item.id}" class="tm-product-price-link tm-handwriting-font"><span class="tm-product-price-currency">VND</span>${item.price}</a>
	                </div>
	              </div>
              </c:forEach>
            </div>
          </div>          
        </section>
      </div>
    </div>
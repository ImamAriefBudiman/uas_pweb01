<nav class="navbar navbar-expand-lg navbar navbar-light" style="background-color: #ff9d00; ">
<div class='container'>
  <a class="navbar-brand" href="index.php">Menu Warung Imam | Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav ml-auto">
      <a class="nav-item nav-link" href="index.php">Detail Menu</a>
      <a class="nav-item nav-link" href="view_cart.php">Keranjang Menu (<?php echo $cart->get_cart_count();?>)</a>
    </div>
  </div>
  </div>
</nav>
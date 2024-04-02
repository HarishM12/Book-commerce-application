<?php
function mobcomponent($productname,$productbrand,$productcolor,$productandriod,$productfront,$productback,$productsize,$productstorage,$productram,$productstock,$productyourprice,$productimg,$productid)
{
    $giga="Gb";

	$element="

 <div class=\"col-md-3 mb-2 border border-secondary\" style=\"margin-bottom:50px !important;\">
            <form action=\"#\"   method=\"post\">
                <div class=\"card-deck text-center\">
                    <div style=\"width:100%;\">
  <img src=\"admin-panel/$productimg\" alt=\"Image Cannot Load Properly\" class=\"img-fluid card-img-top\" id=\"productimg\">
                    </div>
                    <div class=\"card-body\">
                        <h5 class=\"card-title\">$productname</h5>
                            <p class=\"card-text\">
                                Author: $productbrand<br>
                                Publisher: $productandriod<br>
                            </p>

                            <h5>
                                <small class=\"text-success\">$productstock
                                </small>
                                <span class=\"price\">Price: $productyourprice$</span>
                            </h5>
                                       <div class=\"btn-group d-flex\">
                <a href=\"phpwork/book_summary.php?book=$productname\">View More</a>
                <input type=\"hidden\" name=\"product_id\">

            </div>
                    </div>

                </div>
            </form>
            </div>

	";

	echo $element;
}
?>

<style>
.shopping-cart
{
    padding: 3% 0;
}
.cart-items + .cart-items
{
    padding: 2% 0;
}
#productimg
{
    max-width:100%;
    height:auto;
    background:lightblue;
    background:radial-grediant(white30%,lightblue70%);
}
.d-flex
{
    justify-content:center !important;
}
</style>
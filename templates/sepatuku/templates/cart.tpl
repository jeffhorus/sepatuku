<!-- 
SEPATUKU SIRCLO THEME 
 (c) 2015 by AMBISNIS.COM
 Enquiry: sales@ambisnis.com
-->

{extends file='includes/theme.tpl'}

{block name="body"}
<!-- PAGE CONTENT HERE -->
<div class="row s-main-content">

	<div class="col-md-12 s-breadcrumb s-bottom-padding">
		<a href="{$links.home}">{sirclo_get_text text='home_title'}</a>
		<span>&nbsp;/&nbsp;</span>
		<a href="{$links.cart}">{sirclo_get_text text='cart_title'}</a>
	</div>

	<div class="col-md-12 s-content-title">
		<h1>SHOPPING CART</h1>
		<hr/>
	</div>
	<div class="col-md-12 s-cart ">
		{if !empty($cart['items'])}
			<div class="row s-main-content">
				
				<div class="cart-table">
					{sirclo_render_cart_table cart=$cart shows_discount=false with_shipping_country=true thumbnail_suffix='_tn' with_backorder_shipping=false with_image=true}
				</div>
		{else}
			<p class="cart-empty">{sirclo_get_text text='cart_empty'}.</p>
		{/if}
	</div>
	<div class="s-wavy-separator pull-right"></div>
	<br> <br> <br>

</div>

{/block}

{block name="footer"}
    <script type="text/javascript">
        $('.sirclo-form').validate();
    </script>
    {if !empty($configs.theme_facebook_appid)}
    <script type="text/javascript">
        $(document).ready(function() {
          $.getScript('//connect.facebook.com/en_UK/all.js', function(){
            FB.init({
              appId  : '{$configs.theme_facebook_appid}',
              cookie : true,  // enable cookies to allow the server to access
                              // the session
              xfbml  : true,  // parse social plugins on this page
              version: 'v2.0' // use version 2.0
              });
            });
          if (location.search) {
              $("#fbloginlink").facebooklogin("{$links.cart_place_order}");
          } else {
              $("#fbloginlink").facebooklogin("{$links.account_login}");                       
          }
        });
    </script>
    {/if}
{/block}

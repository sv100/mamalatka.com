<!DOCTYPE html>
<!--[if lt IE 7]><html class="ie6" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"><![endif]-->
<!--[if IE 7]><html class="ie7" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"><![endif]-->
<!--[if IE 8]><html class="ie8" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"><!--<![endif]-->
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<!-- Palm -->
<meta name="HandheldFriendly" content="True" />
<!-- Windows -->
<meta name="MobileOptimized" content="320" />
<!-- Safari, Android, BB, Opera -->
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<!-- Use the .htaccess and remove these lines to avoid edge case issues. -->

<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<!-- Megnor  - Start-->
<?php if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
$http_type = "https:";} else {$http_type = "http:";} 
 ?><link href='<?php echo $http_type;?>//fonts.googleapis.com/css?family=Play:400,700' rel='stylesheet' type='text/css'>
 <link href='<?php echo $http_type;?>//fonts.googleapis.com/css?family=Droid+Serif:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/custom.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/carousel.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/responsive.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/rcarousel.css" />
<?php if($direction=='rtl'){ ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/rtl.css">
<?php }?>
<!--[if lt IE 9]><script type="text/javascript" src="catalog/view/javascript/megnor/html5.js"></script><![endif]-->
<!-- Megnor   - End -->

<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>

<!-- Megnor - Start -->
<script type="text/javascript" src="catalog/view/javascript/megnor/carousel.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/megnor.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/custom.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jquery.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/scrolltop.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jquery.formalize.min.js"></script> 
<script type="text/javascript" src="catalog/view/javascript/megnor/jstree.min.js"></script> 
<script type="text/javascript" src="catalog/view/javascript/megnor/cloudzoom.js"></script> 
<script type="text/javascript" src="catalog/view/javascript/megnor/fancybox.js"></script> 
<script type="text/javascript" src="catalog/view/javascript/megnor/jquery.ui.rcarousel.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jquery.ui.rcarousel.js"></script>
<!-- Megnor - End -->

<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<!--[if lt IE 7]>
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->

<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {<?php foreach ($stores as $store) { ?>$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');<?php } ?>});//--></script>
<?php } ?>

<?php echo $google_analytics; ?>
<!-- TemplateMela - Start -->
<!--[if lt IE 9]><script type="text/javascript" src="catalog/view/javascript/megnor/respond.min.js"></script><![endif]-->
<!-- TemplateMela  - End -->
</head>
<body class="<?php echo $body_class; ?>">
<div id="container">

			<table width="100%">
			 <tr>
			  <td align="left"><?php echo $content_topl; ?></td>
			  <td align="center"><?php echo $content_topc; ?></td>
			  <td align="right"><?php echo $content_topr; ?></td>
			 </tr>
			</table>
			

<header id="header-container">
	
	<div class="header_top">
				<div class="header_top_inner">
						<?php echo $language; ?>
						<?php echo $currency; ?>
						
						<div class="welcome-links">
							<div class="links">												
								<a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
								<a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
							</div>
				<div id="welcome">
					<?php if (!$logged) { ?>
						<?php echo $text_welcome; ?>
					<?php } else { ?>
						<?php echo $text_logged; ?>
					<?php } ?>		
				</div>
			</div>
					
				</div>
	</div>
	<div id="header">
		<div class="header-left">  <!--megnor 'header-left' start -->
	
				<!--megnor added -->
		<div class="tm_headerlinkmenu">
				<div class="tm_headerlinks_inner"><div class="headertoggle_img">&nbsp;</div></div>
				<ul class="header_links">
			 	 <li> <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				<li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
				</ul> 
		</div>
			
			<?php if ($logo) { ?>
				<div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>			
			<?php } ?>
		</div>  <!--megnor 'header-left' end -->	  
		<div class="header-right">  <!--megnor 'header-right' start -->
		   
			<?php echo $cart; ?>
			<div id="search">
				<div class="button-search"></div>
				<input type="text" name="search" onClick="this.placeholder = '';" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
			</div>							
		</div> <!--megnor 'header-right' end -->	   
	</div>
</header>
  
<nav class="nav-container" role="navigation">
<div class="nav-inner">
<!-- ======= Menu Code START ========= -->

			<table width="100%">
			 <tr>
			  <td align="left"><?php echo $content_menu_overl; ?></td>
			  <td align="center"><?php echo $content_menu_overc; ?></td>
			  <td align="right"><?php echo $content_menu_overr; ?></td>
			 </tr>
			</table>
			<div><?php echo $content_menu_over; ?></div>
			
<?php if ($categories) { ?>
<!-- Opencart 3 level Category Menu-->
<div id="menu" class="main-menu">
<div class="nav-responsive"><span>Menu</span><div class="expandable"></div></div>
  <ul class="main-navigation">
	<li class="menu_home first">
		<a class="menu-home" href="#"> </a>
	</li>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>

        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>										
				<li>
				<?php if(count($category['children'][$i]['children_level2'])>0){ ?>
					<a href="<?php echo $category['children'][$i]['href']; ?>" class="activSub" <?php /*?>onmouseover='JavaScript:openSubMenu("<?php echo $category['children'][$i]['id']; ?>")'<?php */?>><?php echo $category['children'][$i]['name'];?></a> 					
				<?php } else { ?>				
					<a href="<?php echo $category['children'][$i]['href']; ?>" <?php /*?>onmouseover='JavaScript:closeSubMenu()'<?php */?> ><?php echo $category['children'][$i]['name']; ?></a>
				<?php } ?>

				<?php if ($category['children'][$i]['children_level2']) { ?>
				<?php /*?><div class="submenu" id="id_menu_<?php echo $category['children'][$i]['id']; ?>"><?php */?>
				<ul>
				<?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
					<li><a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?></a></li>
				 <?php } ?>
				</ul>
				<?php /*?></div><?php */?>
			  <?php } ?>		  
			</li>		
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>

      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>

<?php /*?>
<!--Default Opencart 2 level Category-->
<div id="menu" class="main-menu">
<div class="nav-responsive"><span>Menu</span><div class="expandable"></div></div>
  <ul class="main-navigation">
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>
<?php */?>

<?php } ?>
<!-- ======= Menu Code END ========= -->
</div>
</nav>   
 
<!-- section code start -->
<section id='content-wrapper'>

<div class="content-inner">

<?php if ($error) { ?>
<div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>

<div id="notification"></div>

			<div><?php echo $content_menu_under; ?></div>
			<table width="100%">
			 <tr>
			  <td align="left"><?php echo $content_menu_underl; ?></td>
			  <td align="center"><?php echo $content_menu_underc; ?></td>
			  <td align="right"><?php echo $content_menu_underr; ?></td>
			 </tr>
			</table>
			
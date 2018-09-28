<!DOCTYPE html>
<html>
	<head>
		{headers}
		<link rel="shortcut icon" href="{THEME}/images/favicon.ico">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="{THEME}/css/bootstrap.css">
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">	
		<link rel="stylesheet" href="{THEME}/css/engine.css">
		<link rel="stylesheet" href="{THEME}/css/styles.css">
		<link rel="stylesheet" href="{THEME}/css/ssg.css">
        <link rel="stylesheet" href="{THEME}/css/owl.carousel.css">
        <link rel="stylesheet" href="{THEME}/css/owl.transitions.css">
        <link rel="stylesheet" href="{THEME}/css/owl.theme.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css">
        <link rel="stylesheet" href="{THEME}/css/bootstrap.offcanvas.css">
        
	</head>
<script type="text/javascript">
  jQuery(document).ready(function() {
    jQuery('.content1, .sidebar').theiaStickySidebar({
      additionalMarginTop: 10
    });
  });
</script>
    {include file="scripts.tpl"}
  
	<body>
		{AJAX}
		<main>
			<div class="container cnt"> 
                {include file="menu_header.tpl"}

				<div class="row my">
                    <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 my sidebar">
                        <div class="theiaStickySidebar">
						{include file="sidebar.tpl"}
                        </div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 my content1">
                        <div class="theiaStickySidebar">
                            [aviable=main]{include file="slider.tpl"}[/aviable]
                            {speedbar}
                            {info}
                        <div class="row my" style="margin: 0 -10px 0 -10px;">
						    {content}
                            </div>
                        </div>
					</div>
				</div>
                {include file="menu_footer.tpl"}
			</div>
		</main>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/smoothscroll/1.4.6/SmoothScroll.js"></script>
        <script type="text/javascript" src="{THEME}/js/ResizeSensor.js"></script>
        <script type="text/javascript" src="{THEME}/js/theia-sticky-sidebar.js"></script>
        <script src="{THEME}/js/tilt.jquery.js"></script>
        <script src="{THEME}/js/bootstrap.offcanvas.js"></script>
        <script src="{THEME}/js/owl.carousel.js"></script>
		<script src="{THEME}/js/bootstrap.js"></script>
		<script src="{THEME}/js/libs.js"></script>

<div id="authmodal" class="modal fade">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <div class="modal-title">
        [not-group=5] <img src="{foto}" style="width: 36px;
    height: 36px;
    margin: -10px 5px -10px 0px;
    border-radius: 50%;
    object-fit: cover;
    border: 1px solid #1f2333;"> %username_login% [/not-group]
        [group=5] Авторизация[/group]</div>
      </div>
      <div class="modal-body" style="padding:0px;">
        {login}
      </div>
    </div>
  </div>
</div>
    
    </body>
</html>
<!DOCTYPE html>
<html lang="ru">
<head>
  {headers}
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  [not-aviable=login|register|lostpassword]
  <link rel="shortcut icon" href="{THEME}/images/favicon.ico" />
  <link href="{THEME}/style/styles.css" type="text/css" rel="stylesheet" />
  <link href="{THEME}/style/engine.css" type="text/css" rel="stylesheet" />
  <!--[if lt IE 9]><script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
  <script type='text/javascript' src='{THEME}/js/SmoothScroll.js'></script>
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
[/not-aviable]
[not-aviable=login|register|lostpassword]
<body>

<div class="wrap">

	<!-- 
	<a href="#" class="brand-link"></a>
	 ссылка фона, уберите ее из комментария, плюс нужно будет отрегулировать отступ от верха -->

	<div class="main center">
	
		<header class="header" id="header">
			<a href="/" class="logotype" title="На главную">MADANVIL</a>
			<div class="search-box">
					<form id="quicksearch" method="post">
						<input type="hidden" name="do" value="search" />
						<input type="hidden" name="subaction" value="search" />
						<div class="search-inner">
							<input id="story" name="story" placeholder="Поиск..." type="text" style="border: 1px solid #c30;border-radius: 0px;" />
							<button type="submit" title="Найти"><span class="fa fa-search"></span></button>
						</div>
					</form>
			</div>
			<div class="show-login img-box" id="loginbtn"><span class="fa fa-user"></span></div>
		</header>
		
		<div class="cols clearfix" id="cols">
		
			<div class="content">
				
				{info}
				[aviable=main|cat]
				<div class="main-title clearfix">
					<h1>Заголовок</h1>
					[sort]
					<div class="sorter" data-label="Сортировать по">
						<span class="fa fa-chevron-down"></span>
						{sort}
					</div>
					[/sort]
				</div>
				<div class="floaters clearfix">
					{content}
				</div>
				[/aviable]
					
				[not-aviable=main|cat]<div class="full-wrap clearfix">{content}</div>[/not-aviable]
				
			</div>
			<!-- end content -->
			
			<aside class="sidebar">
			
				<div class="side-b">
					<div class="side-t ic-l decor"><span class="fa fa-gamepad"></span>Категории</div>
					<nav class="side-c nav">
						<ul class="flex-row">
							<li><a href="#">Категория 1</a></li>
							<li><a href="#">Категория 2</a></li>
							<li><a href="#">Категория 3</a></li>
							<li><a href="#">Категория 4</a></li>
							<li><a href="#">Категория 5</a></li>
							<li><a href="#">Категория 6</a></li>
							<li><a href="#">Категория 7</a></li>
							<li><a href="#">Категория 8</a></li>
							<li><a href="#">Категория 9</a></li>
							<li><a href="#">Категория 10</a></li>
							<li><a href="#">Категория 11</a></li>
							<li><a href="#">Категория 12</a></li>
							<li><a href="#">Категория 13</a></li>
							<li><a href="#">Категория 14</a></li>
							<li><a href="#">Категория 15</a></li>
							<li><a href="#">Категория 16</a></li>
						</ul>
					</nav>
				</div>
				
				<div class="side-b">
					<div class="side-t ic-l decor"><span class="fa fa-align-left"></span>Популярное</div>
					<div class="side-c flex-row">
						{topnews}
					</div>
				</div>
				
			</aside>
			
		</div>
		<!-- end cols -->
		
		<footer class="footer">
				<ul class="bot-menu clearfix">
					<li><a href="#">Ссылка</a></li>
					<li><a href="#">Ссылка</a></li>
					<li><a href="#">Ссылка</a></li>
					<li><a href="#">Ссылка</a></li>
					<li><a href="#">Ссылка</a></li>
				</ul>
				<div class="bot-text">
				Неискушенная студентка колледжа знакомится с состоятельным бизнесменом, чьи сексуальные предпочтения омрачают их отношения.</a>
				</div>
		</footer>
		
	</div>
	<!-- end main -->
	
</div>
<!-- end wrap -->	
[/not-aviable]
{login}
{info}

[aviable=login|register|lostpassword]
{content}
[/aviable]

<script src="{THEME}/js/libs.js"></script>
{AJAX}

</body>
</html>
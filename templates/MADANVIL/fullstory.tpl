<article class="full">

	<header class="full-title">
		<h1>{title}</h1>
	</header>
	
	<div class="cols-mov clearfix ignore-select">

		<div class="col-mov-left">
			<div class="mov-img">
				<img src="{image-1}" alt="{title}" />
			</div>
		</div>
		<!-- end col-mov-left -->

		<div class="col-mov-right">
			<div class="full-tools">
			    [edit]<span class="fa fa-bars"></span>[/edit]
			    [add-favorites]<span class="fa fa-star-o" title="Добавить в закладки" onclick="javascript:document.location.reload()"></span>[/add-favorites]
				[del-favorites]<span class="fa fa-star" title="Убрать из закладок" onclick="javascript:document.location.reload()"></span>[/del-favorites]
			</div>
			<ul class="mov-list">
				<li><div class="mov-label">Разработчик:</div> <div class="mov-desc">[xfgiven_developer] [xfvalue_developer] [/xfgiven_developer]</div></li>
				<li><div class="mov-label">Издатель:</div> <div class="mov-desc">[xfgiven_publisher] [xfvalue_publisher] [/xfgiven_publisher]</div></li>
				<li><div class="mov-label">Дата выхода:</div> <div class="mov-desc">[xfgiven_date] [xfvalue_date] [/xfgiven_date]</div></li>
				<li><div class="mov-label">Жанр:</div> <div class="mov-desc">{link-category}</div></li>
				<li><div class="mov-label">Мультиплеер:</div> <div class="mov-desc">[xfgiven_multiplayer] [xfvalue_multiplayer] [/xfgiven_multiplayer]</div></li>
				<li><div class="mov-label">Язык:</div> <div class="mov-desc">[xfgiven_language] [xfvalue_language] [/xfgiven_language]</div></li>
			</ul>
		</div>
		<!-- end col-mov-right -->
		
	</div>
	<!-- end cols-mov -->
	
	<div class="mov-desc-text full-text clearfix">
		{full-story}
	</div>
	
	<div class="tabsbox ignore-select">
		<div class="mov-compl ic-l">[complaint]<span class="fa fa-exclamation"></span>Игра не работает[/complaint]</div>
	</div>
	<br>
	<br>
	<br>
	
	[related-news]
	<div class="related tcarusel">
		<h2 class="rel-title">Похожие игры:</h2>
		<div class="tcarusel-scroll clearfix">
			{related-news}
		</div>
		<div class="tcarusel-prev"><span class="fa fa-arrow-left"></span></div>
		<div class="tcarusel-next"><span class="fa fa-arrow-right"></span></div>
	</div>
	[/related-news]
</article>
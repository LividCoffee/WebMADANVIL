<article class="full">

	<header class="full-title">
		<h1>{title}</h1>
		<div class="orig-name">Оригинальное название тут</div>
	</header>
	
	<div class="cols-mov clearfix ignore-select">

		<div class="col-mov-left">
			<div class="mov-img">
				<img src="{image-1}" alt="{title}" />
				<div class="mov-m">WEBDL-rip</div>
			</div>
			[rating-type-3]
			<div class="rate3 clearfix rate-f">
				<div class="pluss" id="pluss-{news-id}" onclick="doRateLD('plus', '{news-id}');"><span class="fa fa-thumbs-o-up"></span></div>
				<div class="minuss" id="minuss-{news-id}" onclick="doRateLD('minus', '{news-id}');"><span class="fa fa-thumbs-o-down"></span></div>
			{rating}
			{vote-num}
			</div>
			[/rating-type-3]
		</div>
		<!-- end col-mov-left -->

		<div class="col-mov-right">
			
			<div class="full-tools">
			    [edit]<span class="fa fa-bars"></span>[/edit]
			    [add-favorites]<span class="fa fa-star-o" title="Добавить в закладки"></span>[/add-favorites][del-favorites]<span class="fa fa-star" title="Убрать из закладок"></span>[/del-favorites]
			</div>
			
			<div class="rates">
				<div class="r-kp" data-label="KP">8.00</div> 
				<div class="r-imdb" data-label="IMDB">8.00</div>
			</div>
			<ul class="mov-list">
				<li><div class="mov-label">Доп поле:</div> <div class="mov-desc">Содержимое доп поля</div></li>
				<li><div class="mov-label">Жанр:</div> <div class="mov-desc">{link-category}</div></li>
				<li><div class="mov-label">Доп поле:</div> <div class="mov-desc">Содержимое доп поля</div></li>
				<li><div class="mov-label">Доп поле:</div> <div class="mov-desc">Содержимое доп поля</div></li>
				<li><div class="mov-label">Доп поле:</div> <div class="mov-desc">Содержимое доп поля</div></li>
				<li><div class="mov-label">Доп поле:</div> <div class="mov-desc">Содержимое доп поля</div></li>
				<li><div class="mov-label">Доп поле:</div> <div class="mov-desc">Содержимое доп поля</div></li>
			</ul>
			
			<div class="full-soc">
			<script type="text/javascript">(function() {
				  if (window.pluso)if (typeof window.pluso.start == "function") return;
				  if (window.ifpluso==undefined) { window.ifpluso = 1;
					var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
					s.type = 'text/javascript'; s.charset='UTF-8'; s.async = true;
					s.src = ('https:' == window.location.protocol ? 'https' : 'http')  + '://share.pluso.ru/pluso-like.js';
					var h=d[g]('body')[0];
					h.appendChild(s);
				  }})();</script>
				<div class="pluso" data-background="transparent" data-options="big,square,line,horizontal,nocounter,theme=04" data-services="vkontakte,odnoklassniki,facebook,twitter,google,moimir,email"></div>
			</div>
			
		</div>
		<!-- end col-mov-right -->
		
	</div>
	<!-- end cols-mov -->
	
	<div class="mov-desc-text full-text clearfix" data-slice="200">
		{full-story}
	</div>
	
	<div class="tabsbox ignore-select">
		<div class="tabs-sel">
			<span>Смотреть онлайн</span> 
			<span>Трейлер</span>
		</div>
		<div class="tabs-b video-box">
			<iframe width="560" height="400" src="https://www.youtube.com/embed/IwfUnkBfdZ4" frameborder="0" allowfullscreen></iframe>
        </div>
		<div class="tabs-b video-box">
			<iframe width="560" height="400" src="https://www.youtube.com/embed/eX_iASz1Si8" frameborder="0" allowfullscreen></iframe>
		</div>
		<div class="mov-compl ic-l">[complaint]<span class="fa fa-exclamation"></span>Фильм не работает[/complaint]</div>
	</div>
	
     <div class="sub-text clearfix ignore-select">
		<span class="fa fa-mobile"></span>Смотреть {title} в нашем кинотеатре.
    </div>   
	[related-news]
	<div class="related tcarusel">
		<h2 class="rel-title">Похожие фильмы:</h2>
		<div class="tcarusel-scroll clearfix">
			{related-news}
		</div>
		<div class="tcarusel-prev"><span class="fa fa-arrow-left"></span></div>
		<div class="tcarusel-next"><span class="fa fa-arrow-right"></span></div>
	</div>
	[/related-news]
</article>

<div class="full-comms ignore-select" id="full-comms">
	<div class="add-commbtn button ic-l" id="add-commbtn"><span class="fa fa-plus"></span>Комментировать</div>
	{addcomments}
	<div class="comments-items">{comments}{navigation}</div>
</div>
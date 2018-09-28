<div class="mov">
	<div class="mov-i img-box">
		<img src="{image-1}" alt="{title}" />
		<div class="mov-mask flex-col ps-link" data-link="{full-link}"><span class="fa fa-play"></span></div>
		[rating-type-3]
		<div class="rate3 clearfix mov-r">
			<div class="pluss" id="pluss-{news-id}" onclick="doRateLD('plus', '{news-id}');"><span class="fa fa-thumbs-o-up"></span></div>
			<div class="minuss" id="minuss-{news-id}" onclick="doRateLD('minus', '{news-id}');"><span class="fa fa-thumbs-o-down"></span></div>
		    {rating}
		    {vote-num}
		</div>
		[/rating-type-3]
	</div>
	<a class="mov-t nowrap" href="{full-link}">{title}</a>
	<div class="mov-c nowrap">{category}</div>
</div>

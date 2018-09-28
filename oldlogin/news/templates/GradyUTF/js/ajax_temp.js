$("body").on("click", "[data-temp*=this_]", function() {
	if($(this).hasClass("activetempajax"))
	{
		return false;
	}
	else
	{
		ShowLoading('');
		$(".templater > a").removeClass("activetempajax");
		$(this).addClass("activetempajax");
		var $temp = $(this).attr("data-nametemp");
		var $catid = $(this).attr("data-catid");
		var $pageid = $(this).attr("data-pageid");
		$.post(dle_root + "engine/ajax/ajax_template.php", { template_ajax : $temp, cstart : $pageid, category_id : $catid }, function(data) {
			if(data)
			{
				$("#dle-content").html(data);
				HideLoading('');
			}
		});
		return false;
	}
});





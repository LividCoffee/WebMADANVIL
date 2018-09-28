<div class="panel panel-default animated fadeIn">
  <div class="panel-body">
 <div class="row my">
  <div class="col-md-4 my"> 
   <a href="{full-link}"><img src="{image-1}" alt="{title}" width="100%" data-tilt data-tilt-glare="true" data-tilt-transition="true" data-tilt-perspective="1000"  data-tilt-scale="1"></a>
     </div>
  <div class="col-md-8 my">
      <div class="short-title"><a href="{full-link}">{title}</a></div>
    <span class="noimg">{short-story}</span>
      
     </div>
</div>
      [edit-date]<div class="alert alert-warning" role="alert" style="margin:0px;font-size: 13px;">
      <p class="editdate">Новость отредактировал: <b>{editor}</b> - {edit-date}<br>
          [edit-reason]Причина: <b>{edit-reason}</b>[/edit-reason]</p>
      </div>
      [/edit-date]
  </div>
    <div class="panel-footer">
         [rating]
				[rating-type-2]
				<div class="rate_like" title="Мне нравится">
				[rating-plus]
					<button class="btn btn-xs btn-default pull-right" style="margin: -3px -5px 0 0;" data-placement="left" data-toggle="tooltip" title="Мне нравится"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> {rating}</button>
				[/rating-plus]
				</div>
				[/rating-type-2]
		[/rating]
        <!--<button  class="btn btn-default btn-xs pull-right" style="margin: -3px 10px 0 0;" data-placement="top" tabindex="0" data-toggle="popover" data-trigger="focus" data-popover-content="#a2" data-original-title="" title=""><i class="fa fa-share-alt" aria-hidden="true"></i></button>-->
<ul class="list-inline" style="font-size: 13px;margin: 0px 0 0px 0;">
  <li> <img cass="hidden-sm" src="{foto}" alt="{login}" style="width: 28px;
    height: 28px;
    margin: -13px 10px -10px -10px;
    border-radius: 50%;
    object-fit: cover;" /> <span class="short-title" style="font-size: 13px;">{author}</span><li>
  <li><span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="margin: 0 5px 0 0;"></span> <span class="short-title" style="font-size: 13px;">{link-category}</span></li>
  <li><span class="glyphicon glyphicon-time" aria-hidden="true"></span> {date}<li>
    <li> <i class="fa fa-eye" aria-hidden="true"></i> {views}</li>
</ul>

    </div>
 
</div>
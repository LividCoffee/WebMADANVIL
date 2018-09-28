<div class="col-xs-12 my">
<div class="panel panel-default">
  <div class="panel-body" style="padding: 16px;">
      <span class="pull-right">
          [rating]
<div class="pull-right">
[rating-type-1]<div class="rate_stars">{rating}</div>[/rating-type-1]
[rating-type-2]
<div class="rate_like">
[rating-plus]
<button class="btn btn-sm btn-default pull-right" style="margin: 0px 0px 0 0;" data-placement="left" data-toggle="tooltip" title="Мне нравится"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> {rating}</button>
[/rating-plus]
</div>
[/rating-type-2]
</div>
[/rating]

      </span>
    
    <h2 class="short-title" style="margin: 0px 0px 15px 0px;">{title}</h2>
      <div id="question0" class="panel-collapse collapse" style="height: 0px;">
                <div class="panel-body">
                     <h5><span class="label label-primary">Answer</span></h5>

                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                </div>
            </div>
      {full-story}
      {poll}
      [tags]<hr> <div class="tgs">{tags}</div>[/tags]
      <br><br>
      
      <h2 class="gg"><span class="icon-share-alt"></span> Поделись с друзьями</h2>
      <script src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
<script src="//yastatic.net/share2/share.js"></script>
<div class="ya-share2" data-services="collections,vkontakte,facebook,odnoklassniki,moimir" data-counter=""></div>
      [edit-date]<div class="alert alert-warning" role="alert" style="margin: 15px 0px 0 0;font-size: 13px;">
      <p class="editdate ">Новость отредактировал: <b>{editor}</b> - {edit-date}<br>
          [edit-reason]Причина: <b>{edit-reason}</b>[/edit-reason]</p>
      </div>
      [/edit-date]
      
  </div>
    
   <div class="panel-footer">
<div class="author" style="margin: 0;padding: 0;">
  <div class="media pull-left">
  <div class="media-left media-middle">
      <img class="av" src="{foto}" alt="{login}"/>
  </div>
  <div class="media-body">
      <div class="author__name sp2">{author}</div>
    <div class="author__text"><time datetime="{date=Y-m-d}T{date=H:i:s}" class="ago" data-toggle="tooltip" title="{date}">{date=Y-m-d}</time></div>
  </div>
</div>
    
    <div class="media pull-right" style="margin: 5px 0 0 0;">
  <div class="media-left">
   <i class="icon-folder" style="font-size: 25px;"></i>
  </div>
  <div class="media-body" style="text-transform: none;">
    <h4 class="media-heading ph">Категория</h4>
      <div class="pt sp2">{link-category}</div>
  </div>
</div>
  </div>
    </div>
</div>
    
</div>

[related-news]
<div class="col-xs-12 my">
 <div class="panel panel-default">
     <div class="panel-heading"><span class="icon-docs"></span> Похожие новости</div>
  <div class="panel-body" style="padding: 10px;">
     <div class="row my" style="margin: 0 -10px 0px -10px;"> {related-news}
  </div>
  </div>
</div>
</div>
[/related-news]

[comments]
<div class="col-xs-12 my">
<div class="panel panel-default">
  <div class="panel-heading" style="font-size: 16px;color: #656D78;"><span class="icon-speech"></span> Комментариев: {comments-num}</div>
  <div class="panel-body">
    {comments}
    {navigation}
      {addcomments}
  </div>
</div>
</div>
	[/comments]
	[not-comments]
	<div style="padding-left:45px;padding-right:45px;">
		{comments}
	</div>
	[/not-comments]
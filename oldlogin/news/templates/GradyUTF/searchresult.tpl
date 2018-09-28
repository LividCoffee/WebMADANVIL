[searchposts]
[fullresult]
	
<div class="col-xs-12 my">
<div class="panel panel-default animated fadeIn">
    <div class="panel-heading">
        [fixed]
        <span class="label label-warning pull-right" style="margin: 5px;font-size: 12px;padding: 3px 6px 3px 6px;color: #8a6d3b;">Это важно!</span>
        [/fixed]
        <div class="short-title"><a href="{full-link}" style="font-weight: normal;">{title}</a></div></div>
  <div class="panel-body columns">
 <div class="row my">
  <div class="col-md-4 my"> 
      <a href="{full-link}"><span class="rippler rippler-img rippler-bs-primary"><img src="{image-1}" alt="{title}" width="100%" ></span></a>
     </div>
  <div class="col-md-8 my">
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
<div class="btn-group" role="group" style="position: absolute;right: 0;margin: 1px 12px 0 0;">
    [rating][rating-type-2][rating-plus]
  <button class="btn btn-xs btn-default" style="margin: 0px 0px 0px -1px;">
      <i class="fa fa-thumbs-o-up" aria-hidden="true"></i> {rating}
  </button>
    [/rating-plus][/rating-type-2][/rating]
</div>
        <!--<button  class="btn btn-default btn-xs pull-right" style="margin: -3px 10px 0 0;" data-placement="top" tabindex="0" data-toggle="popover" data-trigger="focus" data-popover-content="#a2" data-original-title="" title=""><i class="fa fa-share-alt" aria-hidden="true"></i></button>-->
<ul class="list-inline" style="font-size: 13px;margin: 0px 0 0px 0;">
  <li> <img cass="hidden-sm" src="{foto}" alt="{login}" style="    width: 22px;
    height: 22px;
    margin: 0px 3px 2px -5px;
    border-radius: 50%;
    object-fit: cover;" /> <span class="short-title" style="font-size: 13px;">{author}</span></li>
    <li><span class="icon-puzzle"></span> <span class="short-title" style="font-size: 13px;font-weight: normal;">{link-category}</span></li>
  <li><span class="glyphicon glyphicon-time" aria-hidden="true"></span> {date}</li>
    <li> <i class="fa fa-eye" aria-hidden="true"></i> {views}</li>
    <li><span class="icon-bubbles"></span> {comments-num}</li>
</ul>
        
        
    </div>
 
</div>
</div>

<script>
    //---------выравниваем блоки
function setEqualHeight(columns){
var tallestcolumn = 0;
columns.each(
function(){
currentHeight = $(this).height();
if(currentHeight > tallestcolumn){
tallestcolumn = currentHeight;}});
columns.height(tallestcolumn);}
$(document).ready(function() {
setEqualHeight($(".columns > div"));});
//---------------------------------------
    //-------риплы, фект волн при клике    
$(document).ready(function() {
  $(".rippler").rippler({
    effectClass      :  'rippler-effect'
    ,effectSize      :  16      
    ,addElement      :  'div'
    ,duration        :  400
  });
});
//---------------------------------
</script>

[/fullresult]
[/searchposts]
<div class="col-xs-12 col-sm-6 my">
    <div class="panel panel-default animated fadeIn">
        <div class="datka">
                    <div class="mes">{date=F}</div>
                    <div class="den">{date=d}</div>
                    <div class="year">{date=Y}</div>
                </div>
        <div class="panel-body columns"> 
            <a href="{full-link}">
                <span class="rippler rippler-img rippler-bs-primary" data-toggle="tooltip" title="Подробнее">
                    
                    [fixed]
                    <span class="label label-warning" style="right: 0;position: absolute;margin: 5px;font-size: 12px;padding: 3px 6px 3px 6px;color: #8a6d3b;">Это важно!</span>
                    [/fixed]
                    <img src="{image-1}" style="width: 100%;height: 200px;object-fit: cover;">
                </span>
            </a>
            <br>
            
            <div class="noimg" style="font-size: 94%;">
                
                <b style="font-size: 16px;line-height: 1;">{title}</b>
      [edit-date]
<i class="fa fa-exclamation-triangle animated flash" aria-hidden="true" style="color: #E9573F;font-size: 15px;" 
   data-toggle="tooltip" title="Новость отредактировал {editor} - {edit-date}
      [edit-reason]Причина: {edit-reason}[/edit-reason]"></i>
      [/edit-date]
                <br>
                <br>{short-story}
                [tags]<hr>{tags}[/tags]
            </div>
  </div>
    <div class="panel panel-footer " style="padding: 6px 6px 3px 10px;">
<!--<div class="btn-group dropup" style="position: absolute;left: 0;top: 40%;z-index: 9;margin: 4px 0px 0px 21px;">
    <a type="button" class="btn btn-xs btn-default dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fa fa-share-alt"></i>
    </a>
    <ul class="dropdown-menu arrow">
        <li><input class="form-control input-sm" value="/" type="text"></li>
        <li><a href="#" class="social-likes" data-url="/"><div class="twitter"> Twitter</div></a></li>
        <li><a href="#" class="social-likes" data-url="/"><div class="facebook"> Facebook</div></a></li>
        <li><a href="#" class="social-likes" data-url="/"><div class="vkontakte"> ВКонтакте</div></a></li>
        <li><a href="#" class="social-likes" data-url="/"><div class="plusone"> Google+</div></a></li>
    </ul>
</div>-->
<div class="btn-group" role="group" style="position: absolute;right: 0;    margin: 4px 15px 0 0;">
  <a href="{full-link}" class="btn btn-sm btn-default">Подробнее</a>
    [rating][rating-type-2][rating-plus]
  <button class="btn btn-sm btn-default" style="margin: 0px 0px 0px -1px;">
      <i class="fa fa-thumbs-o-up" aria-hidden="true"></i> {rating}
  </button>
    [/rating-plus][/rating-type-2][/rating]
</div>
        
        <div class="author" style="margin-bottom: 0;">
            <div class="media">
                <div class="media-left media-middle">
                    <img cass="media-object" src="{foto}" alt="{login}" style="width: 30px;height: 30px;border-radius: 50%;object-fit: cover;" />
                </div>
                <div class="media-body">
                    <div class="author__text"><span class="short-title" style="font-size: 13px;" data-toggle="tooltip" title="Автор">{author}</span></div>
                        <div class="author__name" style="font-weight: normal;font-size: 80%;"><span class="icon-puzzle"></span>
                    <span class="short-title" style="font-size: 13px;font-weight: normal;" data-toggle="tooltip" title="Категория">
                        {link-category}
                    </span></div>
                </div>
            </div>
        </div>
        
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
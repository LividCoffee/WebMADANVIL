<form id="app_faq_form" role="form" action='' method="post" style="margin-bottom: 10px;">
    <div class="input-group margin-bottom-0">
        <div class="input-group-addon">
            <span class="fa fa-search"></span>
        </div>
        <input id="story" name="story" placeholder="Поиск..." type="search" class="form-control" >
				<input type="hidden" name="do" value="search">
				<input type="hidden" name="subaction" value="search">
				<span class="input-group-btn" style="width: 50px;">
                <input class="btn btn-default" value="Найти" type="submit" >
       
    </div>
</form>

<div class="panel panel-default">
  <div class="panel-heading">
<div class="media">
  <div class="media-left">
      
   <i class="icon-map" style="font-size: 25px;"></i>
  </div>
  <div class="media-body">
    <h4 class="media-heading ph">Навигация</h4>
      <div class="pt">Список доступных категорий сайта.</div>
  </div>
</div>
  </div>
<div id='cssmenu'>
<ul>
    <li><a href='#'><span><span class="icon-book-open gp2"></span> Новости</span></a></li>
    <li class='has-sub'><a href='#'><span><span class="icon-game-controller gp2"></span> Игры для PC</span></a>
      <ul>
          <li><a href='#'><span>Онлайн игры</span></a></li>
          <li><a href='#'><span>Стратегии</span></a></li>
          <li><a href='#'><span>RPG/MMO</span></a></li>
          <li><a href='#'><span>Стрелялки</span></a></li>
          <li><a href='#'><span>Симуляторы</span></a></li>
      </ul>
   </li>
   <li class='has-sub'><a href='#'><span><span class="icon-game-controller gp2"></span> Игры для Playstation</span></a>
      <ul>
          <li><a href='#'><span>Онлайн игры</span></a></li>
          <li><a href='#'><span>Стратегии</span></a></li>
          <li><a href='#'><span>RPG/MMO</span></a></li>
          <li><a href='#'><span>Стрелялки</span></a></li>
          <li><a href='#'><span>Симуляторы</span></a></li>
      </ul>
   </li>
    <li><a href='#'><span><span class="icon-settings gp2"></span> Различный софт</span></a></li>
    <li class='last'><a href='#'><span><span class="icon-question gp2"></span> F.A.Q / ЧАВО?</span></a></li>
</ul>
</div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
<div class="media">
  <div class="media-left">
   <i class="icon-graph" style="font-size: 25px;"></i>
  </div>
  <div class="media-body">
    <h4 class="media-heading ph">Статистика</h4>
      <div class="pt">Краткая статистика сайта.</div>
  </div>
</div>
  </div>
  <div class="panel-body">
    {include file="engine/modules/zpstats.php"}
  </div>
    <div class="panel-footer"><a href="/statistics.html" class="btn btn-default btn-sm btn-block">Полная статистика</a></div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
<div class="media">
  <div class="media-left">
   <i class="icon-bubble" style="font-size: 25px;"></i>
  </div>
  <div class="media-body">
    <h4 class="media-heading ph">Комментарии</h4>
      <div class="pt">10 последних комментариев.</div>
  </div>
</div>
  </div>
  <div class="panel-body">
    {customcomments template="lastcomments" available="global" from="0" limit="10" order="date" sort="desc" cache="no"}
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
<div class="media">
  <div class="media-left">
   <i class="icon-pin" style="font-size: 25px;"></i>
  </div>
  <div class="media-body">
    <h4 class="media-heading ph">Реклама</h4>
      <div class="pt">Тут могла быть ваша реклама!</div>
  </div>
</div>
  </div>
  <div class="panel-body">
    stas.mowniy@mail.ru
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
<div class="media">
  <div class="media-left">
   <i class="icon-tag" style="font-size: 25px;"></i>
  </div>
  <div class="media-body">
    <h4 class="media-heading ph">Поиск по тегам</h4>
      <div class="pt">Облако популярных тегов.</div>
  </div>
</div>
  </div>
  <div class="panel-body tgs">
    {tags}
  </div>
</div>
<script>
$("div.tgs").find("a").addClass("btn btn-default btn-xs mg")
</script>
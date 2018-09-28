<div class="col-xs-12 my">
<div class="panel panel-default">
  <div class="panel-body">

<div class="media">
  <div class="media-left">
   <i class="icon-graph" style="font-size: 25px;"></i>
  </div>
  <div class="media-body">
    <h4 class="media-heading ph">Статистика</h4>
      <div class="pt">Общая статистика сайта.</div>
  </div>
</div>
  
</div>
</div>
    
    <div class="panel panel-default">
    <div class="panel-heading"> Общая статистика</div>
  <div class="panel-body" style="color: #55606e;">
            <ul class="list-group" style="margin:0px;">
				<li class="list-group-item" style="background:#fff;"><b>За сутки</b> <span>{news_day} новостей и {comm_day} комментариев, зарегистрировано {user_day} пользователей</span></li>
				<li class="list-group-item" style="background:#fff;"><b>За неделю</b> <span>{news_week} новостей и {comm_week} комментариев, зарегистрировано {user_week} пользователей</span></li>
				<li class="list-group-item" style="background:#fff;"><b>За месяц</b> <span>{news_month} новостей и {comm_month} комментариев, зарегистрировано {user_month} пользователей</span></li>
		  		<li class="list-group-item" style="background:#fff;">Общий размер базы данных: {datenbank}</li>	
      </ul>
   </div>
   </div>
    
    <div class="row  row-flex row-flex-wrap my" style="margin: 0px -10px 0 -10px;">
  <div class="col-md-4 my">
  <div class="panel panel-default" style="width:100%;">
      <div class="panel-heading" style="text-align: center;font-size: 20px;">Новости</div>
  <div class="panel-body" style="font-size: 13px;color: #55606e;">
 <table class="table">
 		<tbody>
    		<tr>
     	 	<td><i class="fa fa-caret-right" aria-hidden="true"></i> Общее кол-во новостей:</td>
      		<td>{news_num}</td>
   	 		</tr>
   	 		<tr>
      		<td><i class="fa fa-caret-right" aria-hidden="true"></i> Из них опубликовано:</td>
      		<td>{news_allow}</td>
    		</tr>
    		<tr>
      		<td><i class="fa fa-caret-right" aria-hidden="true"></i> Опубликовано на главной:</td>
      		<td>{news_main}</td>
    		</tr>
            <tr>
      		<td><i class="fa fa-caret-right" aria-hidden="true"></i> Ожидает модерации:</td>
      		<td>{news_moder}</td>
    		</tr>
  		</tbody>
</table>
   </div>
   </div>
      </div>
      <div class="col-md-4 my">
<div class="panel panel-default" style="width:100%;">
  <div class="panel-heading" style="text-align: center;font-size: 20px;">Пользователи</div>
  <div class="panel-body" style="font-size: 13px;color: #55606e;">
 <table class="table">
 		<tbody>
    		<tr>
     	 	<td><i class="fa fa-caret-right" aria-hidden="true"></i> Всего пользователей:</td>
      		<td>{user_num}</td>
   	 		</tr>
   	 		<tr>
      		<td><i class="fa fa-caret-right" aria-hidden="true"></i> Из них забанено:</td>
      		<td>{user_banned}</td>
    		</tr>
  		</tbody>
</table>
   </div>
   </div>      
      </div>
      <div class="col-md-4 my">
<div class="panel panel-default" style="width:100%;">
  <div class="panel-heading" style="text-align: center;font-size: 20px;">Комментарии</div>
  <div class="panel-body" style="font-size: 13px;color: #55606e;">
 <table class="table">
 		<tbody>
    		<tr>
     	 	<td><i class="fa fa-caret-right" aria-hidden="true"></i> Кол-во комментариев:</td>
      		<td>{comm_num}</td>
   	 		</tr>
    		<tr>
      		<td><i class="fa fa-caret-right" aria-hidden="true"></i> <a href="/?do=lastcomments">Посмотреть последние</a></td>
      		
    		</tr>
  		</tbody>
</table>
   </div>
   </div>
   </div>
      </div>
    <div class="panel panel-default">
  <div class="panel-heading"> Лучшие пользователи</div>
  <div class="panel-body" style="padding: 0;">
    <table class="table table-hover" style="width: 100%;margin-bottom:0px;">{topusers}</table>
  </div>
</div>
</div>
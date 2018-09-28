<div class="col-xs-12 my">
<div class="panel panel-default" style="border: 1px solid #40b1d0;"> 
  <div class="panel-heading"><i class="icon-people"></i> Поиск среди пользователей</div>
  <div class="panel-body" style="padding: 15px 15px 0px 15px;">

<div class="users_search">
	<form action="" method="get">
<div class="input-group" style="width: 100%;">
    <input type="hidden" name="do" value="users" />
  
  <input type="text" name="login" class="form-control"  value="{login}" placeholder="Логин пользователя" aria-describedby="sizing-addon2">
<span class="input-group-btn" style="width: 50px;">
                <input class="btn btn-default" value="Найти" type="submit" >
                </span>
        </div><br>
   
<div class =  "row  row-flex row-flex-wrap my" style="color: #777b90;">
  <div class="col-xs-6 col-sm-3 my">
  <div class="well well-sm" style="width: 100%;box-shadow: none;
    border: 1px solid #e9ecf3;">
  Сортировать по <select name="count" class="form-control">
			<option value="">Выбрать</option>
			{count}
		</select>
  </div>
  </div>
  <div class="col-xs-6 col-sm-3 my">
  <div class="well well-sm" style="width: 100%;box-shadow: none;
    border: 1px solid #e9ecf3;">
      Искать по
  <select name="order" class="form-control">
			<option value="">Выбрать</option>
			{order}
		</select>
  </div>
  </div>

  <div class="clearfix visible-xs-block"></div>

  <div class="col-xs-6 col-sm-3 my">
  <div class="well well-sm" style="width: 100%;box-shadow: none;
    border: 1px solid #e9ecf3;">
      Отображать по
  <select name="sort" class="form-control">
			<option value="">Выбрать</option>
			{sort}
		</select>
  </div>
  </div>
  <div class="col-xs-6 col-sm-3 my">
  <div class="well well-sm" style="width: 100%;box-shadow: none;
    border: 1px solid #e9ecf3;">
  Показать только
		<select name="usergroups" class="form-control">
			<option value="">Выбрать</option>
			{usergroups}
		</select>
  </div>
  </div>
</div>
		<div>
			
		</div>
	</form>
</div>
      </div>
    <div class="panel-footer" style="color: #8093a7;">{numbers} </div>
</div>
</div>
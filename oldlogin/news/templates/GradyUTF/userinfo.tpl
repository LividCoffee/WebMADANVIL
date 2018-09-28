<div class="col-xs-12 my">
<div class="panel">
        		<div class="panel-bg-cover">
        			<img class="img-responsive" src="{THEME}/images/pbg.jpg" alt="Image">
        		</div>
        		<div class="panel-media">
        			<img src="{foto}" class="panel-media-img img-circle img-border-light" alt="Profile Picture">
        			<div class="row">
        				<div class="col-md-7">
        					<h3 class="panel-media-heading">{usertitle}</h3>
        					<p>{signature}</p>
        					<p class="text-muted mar-btm">{info}</p>
        				</div>
        				<div class=" pull-right" style="margin-right: 10px;">
        					[not-logged]<a href="#settings" class="btn btn-sm btn-primary" data-toggle="modal"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></a>[/not-logged]
        					[not-group=5]{pm}[/not-group]
        				</div>
        			</div>
        		</div>
        		<div class="panel-body">
        			<table class="table ">
                    <tbody>
                      <tr>
                        <td>Имя/Ник</td>
                        <td><b>[fullname]{fullname}[/fullname]</b>[not-fullname]<i>Не указано</i>[/not-fullname]</td>
                      </tr>
                      <tr>
                        <td>Место жительства</td>
                        <td><b>[land]{land}[/land]</b>[not-land]<i>Не указано</i>[/not-land]</td>
                      </tr>
                      <tr>
                        <td>Дата регистрации</td>
                        <td><b>{registration}</b></td>
                      </tr>
                         <tr>
                             <tr>
                        <td>Последняя активность</td>
                        <td><b>{lastdate}</b></td>
                      </tr>
                        <tr>
                        <td>Группа</td>
                        <td><b>{status}</b></td>
                      </tr>
                      <tr>
                        <td>Email</td>
                        <td><b>{editmail}</b></td>
                      </tr>
                        
                    </tbody>
                  </table>  
        		</div>
        	</div>

</div>
[not-logged]
<div id="settings" class="modal fade">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">Настройка профиля</h4>
      </div>
      <div class="modal-body" style="background: #f1f2f6;">
        
          <div class="row my" style="color: #656D78;">
  <div class="col-md-6 my">
  <div class="panel panel-default">
  <div class="panel-heading">Персональные данные</div>
  <div class="panel-body">
      <b>Имя/Ник</b><br>
    <div class="input-group" style="width: 100%;">
  <input type="text" name="fullname" id="fullname" value="{fullname}" class="form-control">
    </div><br>
      <b>Email Почта</b><br>
    <div class="input-group" style="width: 100%;">
  <input type="email" name="email" id="email" value="{editmail}" class="form-control" required>
    </div><br>
      <b>Место жительства</b><br>
    <div class="input-group" style="width: 100%;">
 
  <input type="text" name="land" id="land" value="{land}" class="form-control">
    </div>
      
  </div>
</div>
  </div>
  <div class="col-md-6 my">
  <div class="panel panel-default">
  <div class="panel-heading">Безопасность</div>
  <div class="panel-body">
      <b>Старый пароль</b><br>
    <div class="input-group"style="width: 100%;">
  
  <input type="password" name="altpass" id="altpass" class="form-control">
    </div><br>
      <b>Новый пароль</b><br>
    <div class="input-group"style="width: 100%;">
  
  <input type="password" name="password1" id="password1" class="form-control">
    </div><br>
    <b>Повторите новый пароль</b><br>
    <div class="input-group"style="width: 100%;">
  
  <input type="password" name="password1" id="password1" class="form-control">
    </div>
  </div>
</div>  
  </div>
</div>
<div class =  "row  row-flex row-flex-wrap my">
    <div class="col-md-6 my">
<div class="panel panel-default" style="width:100%;">
  <div class="panel-heading">Загрузить аватар</div>
  <div class="panel-body">
    <input type="file" name="image" id="image" class="form-control">
      <input type="checkbox" name="del_foto" id="del_foto" value="yes" /> <label for="del_foto">Удалить аватар</label>
  </div>
    <div class="panel-footer" style="color: #909090;">Максимальный вес изображения не должен привышать 1000кб (1мб)</div>
</div>
        </div>
          
        <div class="col-md-6 my">
<div class="panel panel-default" style="width:100%;">
  <div class="panel-heading">О себе</div>
  <div class="panel-body">
    <textarea name="info" id="info" rows="5" class="form-control" style="width: 100%;">{editinfo}</textarea>
  </div>
</div>
 </div>
        </div>
          
          <div class =  "row  row-flex row-flex-wrap my">
              <div class="col-md-6 my">
<div class="panel panel-default" style="width:100%;">
  <div class="panel-heading" >Подпись</div>
  <div class="panel-body">
    <textarea name="signature" id="signature" rows="3" class="form-control" style="width:100%;">{editsignature}</textarea>
  </div>
</div>
          </div>    
<div class="col-md-6 my">
<div class="panel panel-default" style="width:100%;">
  <div class="panel-heading">Список игнорируемых</div>
  <div class="panel-body">
    {ignore-list}
  </div>
</div>
</div>
              </div>
{xfields}

<div class="panel panel-default" style="color: #656D78;">
  <div class="panel-heading">Опции</div>
  <div class="panel-body">
    {news-subscribe}{comments-reply-subscribe}{unsubscribe}<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon3">Часовой пояс</span>
  {timezones}
</div>
      
  </div>
</div>
          
          
      </div>
      <div class="modal-footer">
       <div class="form_submit">
							<button class="btn btn-big btn-primary" name="submit" type="submit"><b>Сохранить</b></button>
							<input name="submit" type="hidden" id="submit" value="submit">
						</div>
      </div>
    </div>
  </div>
</div>
[/not-logged]
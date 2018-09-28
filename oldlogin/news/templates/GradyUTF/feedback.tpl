<div class="col-xs-12 my">

<div class="panel panel-default">
    <div class="panel-heading">
      <div class="media">
  <div class="media-left">
   <i class="icon-ghost" style="font-size: 25px;"></i>
  </div>
  <div class="media-body">
    <h4 class="media-heading ph">Обратная связь</h4>
      <div class="pt">Связь с администрацией проекта.</div>
  </div>
</div></div>
  <div class="panel-body">
    [not-logged]
      <li class="list-group-item"><input placeholder="Ваше имя" type="text" maxlength="35" name="name" class="form-control"></li>
      <li class="list-group-item"><input placeholder="E-mail" type="email" maxlength="35" name="email" class="form-control"></li>
    [/not-logged]
      <li class="list-group-item">
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">Выберите получателя</span>
  {recipient}
</div>
      </li>
      <li class="list-group-item"><input placeholder="Заголовок сообщения" type="text" maxlength="45" name="subject" class="form-control"><div style="display: none">{recipient}</div></li>
      <li class="list-group-item"><textarea placeholder="Сообщение" name="message" row="3" class="form-control" style="height: 200px;"></textarea></li><br/>
			[recaptcha]
			{recaptcha}
			[/recaptcha]<br />
      <button name="submit" class="btn btn-primary" type="submit">Отправить</button>
  </div>
</div>

</div>
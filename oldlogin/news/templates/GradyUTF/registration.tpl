<div class="col-xs-12 my">
<div class="panel panel-default">
  <div class="panel-heading">
      [registration]
      <div class="media">
  <div class="media-left">
   <i class="icon-graduation" style="font-size: 25px;"></i>
  </div>
  <div class="media-body">
    <h4 class="media-heading ph">Регистрация</h4>
      <div class="pt">Для успешной регистрации необходимо заполнить поля ниже правильно!</div>
  </div>
</div>
      [/registration]
      [validation]<b>Продолжение регистрации</b>[/validation]
  </div>
  <div class="panel-body" id="1panel">
    [registration]
      <div class="well" style="color:#656D78;">
		Регистрация на нашем сайте позволит Вам быть его полноценным участником.<br>
		Вы сможете добавлять новости на сайт, оставлять свои комментарии, просматривать скрытый текст и многое другое.
<br>В случае возникновения проблем с регистрацией, обратитесь к <a href="/index.php?do=feedback">администратору</a> сайта.
	</div>
          [/registration]
	[validation]
      <div class="well" style="color:#656D78;">
		Ваш аккаунт был зарегистрирован на нашем сайте,
		однако информация о Вас является неполной, поэтому ОБЯЗАТЕЛЬНО заполните дополнительные поля в Вашем профиле.<br>
	</div>
          [/validation]<br/>
      [registration]
      <div class="input-group">
        <span class="input-group-addon"><i class="icon-arrow-right" ></i></span>
        <input type="text" name="name" id="name" class="form-control" placeholder="Логин" required>
          <span class="input-group-btn">
        <button class="btn btn-default" type="button" title="Проверить" onclick="CheckLogin(); return false;">Проверить</button>
      </span>
      </div>
      <div id="result-registration"></div><br>
      <div class="input-group">
          <span class="input-group-addon"><i class="icon-arrow-right" ></i></span>
          <input type="password" name="password1" id="password1" class="form-control" placeholder="Пароль" required>
      </div><br>
      <div class="input-group">
          <span class="input-group-addon"><i class="icon-arrow-right" ></i></span>
          <input type="password" name="password2" id="password2" class="form-control" placeholder="Повторите пароль" required>
      </div><br>
      <div class="input-group">
          <span class="input-group-addon"><i class="icon-arrow-right" ></i></span>
          <input type="email" name="email" id="email" class="form-control" placeholder="Электронная почта Email" required>
      </div><br>
      [question]
			<li class="form-group">
				<label for="question_answer">{question}</label>
				<input placeholder="Введите ответ" type="text" name="question_answer" id="question_answer" class="wide" required>
			</li>
      [/question]
      [recaptcha]
			{recaptcha}
      [/recaptcha]
      [/registration]
      [validation]
      <div class="input-group">
          <span class="input-group-addon">Ваше имя</span>
          <input type="text" name="fullname" id="fullname" class="form-control">
      </div><br>
      <div class="input-group">
          <span class="input-group-addon">Место жительства</span>
          <input type="text" id="land" name="land" class="form-control">
      </div><br>
    
      <div class="panel panel-default" style="border: 1px solid #f6bb42;box-shadow: none;">
        <div class="panel-heading">О себе</div>
        <div class="panel-body">
        <textarea id="info" name="info" rows="5" class="form-control" style="width: 100%;"></textarea>
        </div>
      </div>
      <div class="panel panel-default" style="border: 1px solid #f6bb42;box-shadow: none;">
        <div class="panel-heading">Загрузите аватар</div>
        <div class="panel-body">
        <input type="file" id="image" name="image" class="wide">
        </div>
      </div>

				<table class="xfields">
					{xfields}
				</table>

      [/validation]
      [registration]
		[sec_code]
			<div class="c-capcha">
				{reg_code}
				<input placeholder="Повторите код" title="Введите код указанный на картинке" type="text" name="sec_code" id="sec_code" required>
			</div>
		[/sec_code]
		[/registration]<hr/>
      <button class="btn btn-primary" name="submit" type="submit">Зарегистрироваться</button>
  </div>
</div>
</div>
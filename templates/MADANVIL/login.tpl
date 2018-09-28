<!--noindex--> 
[not-group=5]
    <div class="login-box" id="login-box" title="{login}">
		<div class="login-avatar">
				<div class="avatar-box" id="avatar-box">
					<img src="{foto}" title="{login}" alt="{login}" />
				</div>
				[group=1]<a href="{admin-link}" target="_blank">Админпанель</a>[/group]
		</div>
		<ul class="login-menu">
						[group=1,2,3]<li><a href="{addnews-link}">Добавить пост</a></li>[/group]
						<li><a href="{profile-link}">Мой профиль</a></li>
						<li><a href="{pm-link}">Сообщения: ({new-pm})</a></li>
						<li><a href="{favorites-link}">Мои закладки ({favorite-count})</a></li>
						<li><a href="{stats-link}">Статистика</a></li>
						<li><a href="{newposts-link}">Непрочитанное</a></li>
						<li><a href="{logout-link}">Выйти</a></li>
		</ul>
	</div>
[/not-group]
[group=5]																																																																																																																																										[aviable=showfull]<span style="display:none;">все шаблоны для dle на сайте <a href="http://newtemplates.ru/dle111/">шаблоны dle 11.1</a> dle скачать</span>[/aviable]
    <div class="login-box" id="login-box" title="Авторизация">
		<div class="login-form">
			<form method="post">
				<div class="login-input">
					<input type="text" name="login_name" id="login_name" placeholder="Ваш логин"/>
				</div>
				<div class="login-input">
					<input type="password" name="login_password" id="login_password" placeholder="Ваш пароль" />
				</div>
				<div class="login-button">
					<button onclick="submit();" type="submit" title="Вход">Войти на сайт</button>
					<input name="login" type="hidden" id="login" value="submit" />
				</div>
				<div class="login-checkbox">
					<input type="checkbox" name="login_not_save" id="login_not_save" value="1"/>
					<label for="login_not_save">&nbsp;Чужой компьютер</label> 
				</div>
				<div class="login-links clearfix">
					<a href="{lostpassword-link}">Забыли пароль?</a>
					<a href="/?do=register" class="log-register">Регистрация</a>
				</div>
			</form>
		</div>		
	</div>
[/group]
<!--/noindex-->
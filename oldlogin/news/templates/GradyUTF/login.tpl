[not-group=5]
<!--noindex-->
	<ul class="list-group short-title" style="font-size: 15px;font-weight: 400;margin: 0px;">
        [admin-link]<a class="list-group-item" href="{admin-link}" target="_blank"><span class="icon-energy gp2"></span> Панель управления</a>[/admin-link]
        <a class="list-group-item" href="{addnews-link}"><span class="icon-note gp2"></span> Добавить новость</a>
		<a class="list-group-item" href="{profile-link}"><span class="icon-user gp2"></span> Моя страница </a>
        <a class="list-group-item" href="{favorites-link}"><span class="icon-pin gp2"></span> Закладки <span style="font-size: 11px;" >({favorite-count})</span></a>
        <a class="list-group-item" href="{pm-link}"><span class="icon-envelope gp2"></span> Сообщения <span style="font-size: 11px;" >({new-pm} | {all-pm})</span></a>
		<a class="thide lexit list-group-item" href="{logout-link}"><i class="icon-logout pull-right"></i> Выход</a>
	</ul>
<!--/noindex-->
[/not-group]
[group=5]
<!--noindex-->
<div style="margin: 12px;">																															
	<div>
			<form  role="form" method="post" action="">
				<div class="form-group">
					<input class="form-control" type="text" id="inputEmail" name="login_name" placeholder="Логин" />
				</div>
				<div class="form-group">
					<input class="form-control" type="password" id="inputPassword" name="login_password" placeholder="Пароль" />
				</div>
				
					<div class="checkbox" style="margin: 0 0px 15px 0;">
                        <input id="checkbox1" type="checkbox" value="1" name="login_not_save">
                        <label for="checkbox1" data-toggle="tooltip" title="Не запоминать пароль">
                           Чужой компьютер
                        </label>
                    </div>
				
				<button type="submit" class="btn btn-success btn-block">Войти</button>
				<input class="form-control" name="login" type="hidden" id="login" value="submit" />
			</form>
		<div class="btn-group" role="group" style="width:100%;margin-top:12px;margin-bottom:12px;">
  <a href="{registration-link}" class="btn btn-default" style="width:50%;">Регистрация</a>
  <a href="{lostpassword-link}" class="btn btn-default" style="width:50%;">Забыл пароль</a>
</div>
</div>

<div>
		<p>
			[vk]<noindex><a href="{vk_url}" target="_blank" class="btn btn-default"><i class="fa fa-vk"></i> Вконтакте</a></noindex>[/vk]
			[facebook]<noindex><a href="{facebook_url}" target="_blank" class="btn btn-default"><i class="fa fa-facebook"></i> Facebook</a></noindex>[/facebook]
			[google]<noindex><a href="{google_url}" target="_blank" class="btn btn-default"><i class="fa fa-google"></i> Google</a></noindex>[/google]
			[mailru]<noindex><a href="{mailru_url}" target="_blank" class="btn btn-default"> @ Mail.ru</a></noindex>[/mailru]
			[yandex]<noindex><a href="{yandex_url}" target="_blank" class="btn btn-default"> Яндекс</a></noindex>[/yandex]
		</p>	
</div>
</div>
<!--/noindex-->																																																																																																																																																										[aviable=showfull]<span style="display:none;">лучший сайт где можно скачать <a href="http://newtemplates.ru/dle113/">шаблоны для dle 13.0</a> бесплатно</span>[/aviable]
[/group]
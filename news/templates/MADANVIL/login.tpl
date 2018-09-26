<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title></title>

    <link href="/favicon.ico" rel="shortcut icon">

    <link href="{THEME}/css/style.css" type="text/css" rel="stylesheet">
    <!-- UIkit CSS -->
    <link rel="stylesheet" href="{THEME}/css/uikit.min.css" />

    <script src="{THEME}/css/jquery.min.js"></script>
    <!-- UIkit JS -->
    <script src="{THEME}/css//uikit.min.js"></script>
    <script src="{THEME}/css/uikit-icons.min.js"></script>

    <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body>
[group=5]
<div class='content' id='one'>
  <div id='hide' class="loading-spinner"></div>
  <div id="show" class="show_form">
    <div class="over" style="position:absolute; width:100%; top: 5%;">
      <img src="https://www.ucraft.ru/images/icon2.png" width="150px" height="150px">
    </div>
    <div id='show'>
      <div class="over" style="position:absolute; width:100%; top: 15%;">
      <br><br><br><br><br>
        <form class="dropdown-form dot" method="post" style="width:300px;">
        <div class="uk-margin">
          <div class="uk-inline" style="width: 300px;">
            <input type="hidden" name="" value="" >
            <span class="uk-form-icon" uk-icon="icon: user"></span>
            <input class="uk-input" placeholder="{login-method}" type="text" name="login_name" id="login_name">
          </div>
        </div>
        <div class="uk-margin">
          <div class="uk-inline" style="width: 300px;">
            <span class="uk-form-icon" uk-icon="icon: lock"></span>
            <input class="uk-input" placeholder="Пароль" type="password" name="login_password" id="login_password">
          </div>
        </div>
        <button class="uk-button uk-button-secondary uk-margin-small-bottom" style="width: 300px;" type="submit" onclick="submit();">ВОЙТИ</button>
        <br>
        <input name="login" type="hidden" id="login" value="submit">

        <div class="login_form__foot">
  				<a class="right" href="{registration-link}"><b>Регистрация</b></a>
  				<a href="{lostpassword-link}">Забыли пароль?</a>
  			</div>

      </form>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
$(document).ready(function(){
   setTimeout(function(){
    $('#hide').hide();
   }, 500);
   setTimeout(function(){
    $('#show').show();
   }, 700);
});
</script>

[/group]

[not-group=5] 
<ul id="login_pane">
	<li class="dropdown">
		<a data-toggle="dropdown" class="btn-border" href="{profile-link}">
			<b class="over">{login}</b><span title="Новые сообщения - {new-pm}" class="pm_num">{new-pm}</span>
		</a>
		<div class="dropdown-form dot logged">
			<div class="login_pane__info">
				<div class="avatar">
					<a href="{profile-link}"><span class="cover" style="background-image: url({foto});">{login}</span></a>
				</div>
				[admin-link]<div class="login_pane__admin"><a href="{admin-link}" target="_blank">Админпанель</a></div>[/admin-link]
			</div>
			<ul class="login_pane__menu">
				<li><a href="{pm-link}">Сообщения <span class="right grey"><b>{new-pm}</b> из {all-pm}</span></a></li>
				<li><a href="{favorites-link}">Закладки <span class="right grey"><b>{favorite-count}</b></span></a></li>
				<li><a href="{newposts-link}">Непрочитанные новости</a></li>
			</ul>
			<div class="login_pane__foot">
				<a class="right" href="{logout-link}">Выход</a>
				<a href="{addnews-link}"><span class="plus_icon circle"><span>+</span></span>Добавить новость</a>
			</div>
		</div>
	</li>
</ul>
[/not-group]
  </body>
</html>

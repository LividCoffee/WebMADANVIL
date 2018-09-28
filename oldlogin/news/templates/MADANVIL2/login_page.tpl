
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="content-type" content="text/html; charset=windows-1251" />
        <link rel="stylesheet" type="text/css" href="/login/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="/login/responsive.css" />
        <link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="/login/style-metro.css" />
        <link rel="stylesheet" type="text/css" href="/login/style.css" />
        <link rel="stylesheet" type="text/css" href="/login/brandico.css" />
        <link rel="stylesheet" type="text/css" href="/login/auth.css" />
        <link rel="stylesheet" type="text/css" href="/login/login.css" />
        <script type="text/javascript" src="/login/bootstrap.min.js"></script>
        <script type="text/javascript" src="/login/jquery.blockui.js"></script>


<body class="page login">
<br>
<center><h3 class="form-title"><span id="testCodeception" ><font color="ffffff">Coderlaba | </font><font color="FF6633">Вход</font></h3><center>

<div class="content">
	<!-- BEGIN LOGIN FORM -->
<form style="login-form" class="form-vertical" id="login" action="/login" method="post"><h3 class="form-title"><span id="testCodeception">В</span>ход в личный кабинет</h3>
<div class="loginform">
<div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-user"></i><input placeholder="Email" class="m-wrap placeholder-no-fix" name="login_name" id="webmaster_models_web_LoginForm_email" type="text" /></div></div></div>

<div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-lock"></i><input placeholder="Пароль" class="m-wrap placeholder-no-fix" name="login_password" id="webmaster_models_web_LoginForm_password" type="password" /></div></div></div>


<div class="form-actions">
	
<div class="fieldsubmit">
	<button type="submit" onclick="sitelogin();return false;" class="btn red pull-right">
		Вход <i class="m-icon-swapright m-icon-white"></i>
	</button>
	</div>
</div>
</div>
	
	    <!--
		//
		   Раскомментируйте, если у вас есть uLogin  и замените "site.ru" на свой домен!
		//
		
	<h3 class="form-title">Войти с помощью</h3>
	<div class="form-actions">
		<div class="services">

		
		<div class="ulogin">

    <input type="hidden" name="ulogin_token" id="ulogin_token" />
    <script src="https://ulogin.ru/js/ulogin.js"></script>
    
         <div id="uLoginВАШID" x-ulogin-params="display=buttons;fields=first_name,last_name;
redirect_uri=http%3A%2F%2Fwww.site.ru;receiver=http%3A%2F%2Fwww.site.ru%2Fxd_custom.html">

	<a class="btn auth-link vkontakte" x-ulogin-button="vkontakte" ><i></i> ВКонтакте</a><a class="btn auth-link facebook" x-ulogin-button="facebook" ><i></i> Facebook</a>
	    </div> 
	    </div>
        </div>
		
	</div>
	-->
<div class="forget-password">
	<h4>Забыли пароль?</h4>
	<p>Перейдите по <a href="/reset" class="" id="forget-password">ссылке</a>
		для восстановления.
	</p>
</div>
<div class="create-account">
	<p>
		Еще не зарегистрированы ?&nbsp;
		<a href="/reg" id="register-btn" class="">Создайте аккаунт</a>
	</p>
</div>
</form>
<!-- END LOGIN FORM -->
	</form>	<!-- END REGISTRATION FORM -->
</div>

<div class="copyright">
	<span >
	 © 2014 Coderlaba. 
	 <span>Все права защищены.</span>
		<br>
		Эл. почта: <a style="color: #eee;" href="mailto:test@test.com"> test@test.com</a>
	</span>
</div>
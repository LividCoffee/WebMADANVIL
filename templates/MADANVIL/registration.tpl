
<link rel="stylesheet" type="text/css" href="/login/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/login/responsive.css" />
<link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/login/style-metro.css" />
<link rel="stylesheet" type="text/css" href="/login/style.css" />
<link rel="stylesheet" type="text/css" href="/login/brandico.css" />
<link rel="stylesheet" type="text/css" href="/login/uniform.default.css" />
<link rel="stylesheet" type="text/css" href="/login/auth.css" />
<link rel="stylesheet" type="text/css" href="/login/login.css" />

<script type="text/javascript" src="/reg/jquery.min.js"></script>
<script type="text/javascript" src="/reg/bootstrap.min.js"></script>
<script type="text/javascript" src="/reg/jquery.blockui.js"></script>
<script type="text/javascript" src="/reg/underscore-min.js"></script>
<script type="text/javascript" src="/reg/breakpoints.js"></script>
<script type="text/javascript" src="/reg/jquery.cookie.js"></script>
<script type="text/javascript" src="/reg/app.js"></script>
<script type="text/javascript" src="/reg/jquery.uniform.min.js"></script>
<script type="text/javascript" src="/reg/jquery-ui-1.10.1.custom.min.js"></script>
<script type="text/javascript" src="/reg/ui-jqueryui.js"></script>
<script type="text/javascript" src="/reg/jquery.pulsate.min.js"></script>

<body class="page login register">
<div class="baseform">
<table class="tableform">
<br>
<br>
[registration]
<div class="content">
	<form class="form-vertical" >	<div class="row-fluid">
	</div>


	<div class="row-fluid form-actions">
		<div class="span6">
			<fieldset>
				<legend>Регистрационные данные</legend>
				<div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="Логин" name="name" type="text" id="name" maxlength="50" onblur="check_login(this); return false;" /></div></div></div>

				<div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="Электронная почта" name="email" type="text" maxlength="64" onblur="check_mail(this)" /></div></div></div>
                <div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="Пароль" type="password" name="password1" /></div></div></div>
                <div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="Повторите пароль" type="password" name="password2" /></div></div></div>
				
			</fieldset>
		</div>

		<div class="span6">
			<fieldset>
				<legend>Давайте дружить!</legend>
				<div class="control-group">
				
<!-- Сюда можете вставить описание или виджет (VK, FB, G+) -->

				</div>
			</fieldset>
		</div>
	</div>
				<div class="control-group">
			<div class="controls">
				<input id="ytagree_accept" type="hidden" value="0" name="webmaster_models_web_RegisterForm[agree]" /><input id="agree_accept" name="webmaster_models_web_RegisterForm[agree]" value="1" type="checkbox" />				Я прочитал и подтверждаю принятие
				<a data-toggle="modal" data-target="#conditions" href="#">условий пользования</a> MADANVIL					</div>
		</div>
		<div class="control-group">
			<a href="/login" id="register-btn" class=""><button type="button" class="btn blue pull-left">
				<i class="m-icon-swapleft m-icon-white"></i>
				Авторизироваться
			</button></a>
			<div class="controls submit_button">
				<div class="fieldsubmit">
				<button name="submit" type="submit" class="btn green pull-right">
					Зарегистрироваться
					<i class="m-icon-swapright m-icon-white"></i>
				</button>
				<br>
				</div>
			</div>
		</div>
	</div>
	<input name="webmaster_models_web_RegisterForm[socialServiceName]" id="webmaster_models_web_RegisterForm_socialServiceName" type="hidden" />	<input name="webmaster_models_web_RegisterForm[socialServiceId]" id="webmaster_models_web_RegisterForm_socialServiceId" type="hidden" />


</form>
<div id="conditions" class="modal hide fade"><div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
	<h3>Условия использования</h3>
</div>
<div class="modal-body">
	Лицензионное соглашение которое никто не читает
</div>
<div class="modal-footer">
	<button data-dismiss="modal" class="btn green">OK</button></div></div>
</div>
[/registration]

[validation]
<div class="content">
	<form class="form-vertical">
	  <div class="row-fluid">
		<div class="span12">
			<h3>Регистрация</h3>
		</div>
	   </div>



	 <div class="row-fluid form-actions">
		<div class="span6">
			<fieldset>
				<legend>Добавить данные</legend>
				<div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="Никнейм" type="text" name="fullname" maxlength="50" /></div></div></div>

				<div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="Место жительства" type="text" name="land" maxlength="64" /></div></div></div>
				<div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="Номер ICQ" type="text" name="icq" maxlength="32" /></div></div></div>
				<div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="Аватар" type="file" name="image" /></div></div></div>
                <div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="О себе" type="text" name="info" /></div></div></div>
				

				
			</fieldset>
		</div>
		
      <div class="span6">
			<fieldset>
				<legend>Давайте дружить!</legend>
				<div class="control-group">

<!-- Сюда можете вставить описание или виджет (VK, FB, G+) -->
				
			</div>
			</fieldset>
	</div>
	 </div>
	
				<div class="control-group">
			<div class="controls">
				<input id="ytagree_accept" type="hidden" value="0" name="webmaster_models_web_RegisterForm[agree]" /><input id="agree_accept" name="webmaster_models_web_RegisterForm[agree]" value="1" type="checkbox" />				Я прочитал и подтверждаю принятие
				<a data-toggle="modal" data-target="#conditions" href="#">условий пользования</a> MADANVIL							</div>
		</div>
		<div class="control-group">
			<div class="controls submit_button">
				<div class="fieldsubmit">
				<button name="submit" type="submit" class="btn green pull-right">
					Зарегистрироваться
					<i class="m-icon-swapright m-icon-white"></i>
				</button>
				<br>
				</div>
			</div>
		</div>
	</div>
	<input name="webmaster_models_web_RegisterForm[socialServiceName]" id="webmaster_models_web_RegisterForm_socialServiceName" type="hidden" />	<input name="webmaster_models_web_RegisterForm[socialServiceId]" id="webmaster_models_web_RegisterForm_socialServiceId" type="hidden" />
	{include file="engine/modules/redirectreg.php"}

</form>

	[/validation]
	
</table>
<div>
<script type="text/javascript" src="/login/auth.js"></script>
<script type="text/javascript">
/*<![CDATA[*/
(function ($, n) {
	if ($) {
		if ($.fn.popover) {
			var title, content,
				$glossary = document.getElementsByClassName('glossary');
			$('body').on('click', ':not(.glossary)', function (e) {
				$('.glossary').filter('.opened').removeClass('opened').popover('hide');
			});

			$('body').on('click', '.glossary', function(e){
				e.preventDefault();
				setPopover();
					var $target = $(this);
					if ($target.next().hasClass('popover') && !$target.hasClass('opened')) {
						$target.popover('hide');
					} else {
						$.get(this.getAttribute('href'), function (data) {
							n.title = data.title;
							n.content = data.description;
							$target.addClass('opened').popover('show');
						}, 'json');
					}
					if ($(this).closest('.notification').length) {
						if ($(this).hasClass('glossary')) {
							$($glossary).filter('.opened').removeClass('opened').popover('hide');
						}
						e.stopPropagation();
					}
			});

			function setPopover(){
				$($glossary)
					.popover({
						trigger: 'manual',
						placement: 'bottom',
						html: true,
						title: function () {
							return n.title;
						},
						content: function () {
							return n.content;
						}
					});
			}
			setPopover();
		}
	}
}(window.jQuery, (window.Glossary = window.Glossary || {})));
jQuery(function($) {
App.init(); 


jQuery('#conditions').modal({'show':false});


		$('.submit_button' ).mouseenter( function() {
			var acceptData = $('#agree_accept').is(':checked')

			if(!acceptData)
			{
					$(':button' ).attr('disabled',true)
					$('.checker').pulsate({
									color: '#bb2413',
									repeat: 1
						});
			}


		});

		$('.control-group').mouseleave(function () {

                 $(':button' ).removeAttr('disabled')
        });


		$('#agree_accept').click(function() {
            $(':button' ).removeAttr('disabled')
		});



	
});
/*]]>*/
</script>
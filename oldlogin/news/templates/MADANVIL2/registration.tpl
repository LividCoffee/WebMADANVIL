
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
<center><h3 class="form-title"><span id="testCodeception" ><font color="ffffff">Coderlaba | </font><font color="FF6633">�������</font></h3></center>

[registration]
<div class="content">
	<form class="form-vertical" >	<div class="row-fluid">
		<div class="span12">
			<h3>�����������</h3>
								</div>
	</div>


	<div class="row-fluid form-actions">
		<div class="span6">
			<fieldset>
				<legend>��������������� ������</legend>
				<div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="�����" name="name" type="text" id="name" maxlength="50" onblur="check_login(this); return false;" /></div></div></div>

				<div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="����������� �����" name="email" type="text" maxlength="64" onblur="check_mail(this)" /></div></div></div>
                <div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="������" type="password" name="password1" /></div></div></div>
                <div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="��������� ������" type="password" name="password2" /></div></div></div>
                <!--
				
				//
		           	����������������, ���� � ��� ���� ������ Advance Lost Password ( http://coderlaba.com/modules/dle-modules/867-advance-lost-password-10-dle-9x-10x.html )	
				//
				
				{questions}
                <div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="����� �� ���. ������" type="text" name="answer" /></div></div></div>
                -->
				
			</fieldset>
		</div>

		<div class="span6">
			<fieldset>
				<legend>������� �������!</legend>
				<div class="control-group">
				
<!-- ���� ������ �������� �������� ��� ������ (VK, FB, G+) -->

				</div>
			</fieldset>
		</div>
	</div>

		<!--
		
				//
		����������������, ���� � ��� ���� uLogin  � �������� "site.ru" �� ���� �����!
		
		//
		
	<div class="row-fluid">
					<h3 class="form-title">����� � �������</h3>
			<div class="form-actions">
				<div class="services">
				<div class="ulogin">
    <input type="hidden" name="ulogin_token" id="ulogin_token" />
    <script src="https://ulogin.ru/js/ulogin.js"></script>
    
         <div id="uLogin���ID" x-ulogin-params="display=buttons;fields=first_name,last_name;
redirect_uri=http%3A%2F%2Fwww.site.ru;receiver=http%3A%2F%2Fwww.site.ru%2Fxd_custom.html">
				
	<a class="btn auth-link vkontakte" x-ulogin-button="vkontakte" ><i></i> ���������</a><a class="btn auth-link facebook" x-ulogin-button="facebook" ><i></i> Facebook</a></div>
	</div>
			  </div>			</div> -->
				<div class="control-group">
			<div class="controls">
				<input id="ytagree_accept" type="hidden" value="0" name="webmaster_models_web_RegisterForm[agree]" /><input id="agree_accept" name="webmaster_models_web_RegisterForm[agree]" value="1" type="checkbox" />				� �������� � ����������� ��������
				<a data-toggle="modal" data-target="#conditions" href="#">������� �����������</a> Coderlaba					</div>
		</div>
		<div class="control-group">
			<div class="controls submit_button">
				<div class="fieldsubmit">
				<button name="submit" type="submit" class="btn green pull-right">
					������������������
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
	<h3>������� �������������</h3>
</div>
<div class="modal-body">
<b>����� ������� ��������� �� �����:</b><br />
<br />
������ � ����, ��� �� ����� �������� ����� �����, ������ ������� � ��������, � ��� ��� �������� ������������� ������������ ������ �����, ������� ���� �� ����� ����� ��� ���������� ����� ��������������� ��� � ���������� �������. �� ������������ ����������� ��������� ��������� �������, ��� ������ � ��� ����� ����� ����, �� �������� ��� � ��� ����� � ������� ������� ���� ����� ���������� � ��������������.<br />
<br />
������ � ����, ��� �� ����� ����� ����� ����� ���� ����������� �� ���� ����������� �����. �� ���� ����������� �� ��������� � ����������, ��� ������ ������. ���� ���� ��������� - ����������� � ������� ��� ����������� (�������������� ������� �����������). ����������� ������ ����������� ��������� � ��� ����� �� ����� ������ ��������� � ������ ������������ ��������������. <b>� ��� ������ �������� ������, ����������� � ������������ ������������.</b> ������� ���������� ��� �� ��������� � �� ������� ������� ��� ���� ����� �������� � �����������.<br />
<br />
<b>�� ����� ������ ���������:</b> <br />
<br />
- ���������, �� ����������� � ���������� ������ ��� � ��������� ����������<br />
- ����������� � ������ � ����� ����������� �����<br />
- � ������������ ����������� ���������, ���������� ������������� �������, ��������� ������������ �����������, ����������� ��������������� �����<br />
- ����, � ����� ������� ����� ������� � �����, ���� ��������, ��� ��� �������, �� ����������� � ��������� ���������� ������<br />
<br />
������� ����� ������� ���� ����� � ����, �� ������� �� � ������ �������� �������� ���������� � ��������� ���� �����. ������������� ����� ��������� �� ����� ����� ������� ����������� ��� ����� ������������, ���� ��� �� ������������� ������ �����������.<br />
<br />
��� ��������� ������ ��� ����� ���� ���� <b>��������������</b>. � ��������� ������� ����� ���� ��� ��� <b>��� ��������������</b>. �� �������� ������ ���� ������ ��������������.<br />
<br />
<b>�����������</b> ��������������� ��� ����������� ����� �������� <b>�����</b> - �������� ����� ����.<br />
<br />
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
			<h3>�����������</h3>
		</div>
	   </div>



	 <div class="row-fluid form-actions">
		<div class="span6">
			<fieldset>
				<legend>�������� ������</legend>
				<div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="���" type="text" name="fullname" maxlength="50" /></div></div></div>

				<div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="����� ����������" type="text" name="land" maxlength="64" /></div></div></div>
				<div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="����� ICQ" type="text" name="icq" maxlength="32" /></div></div></div>
				<div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="������" type="file" name="image" /></div></div></div>
                <div class="control-group  "><div class="controls"><div class="input-icon left"><i class="icon-ok"></i><input placeholderFromAttribute="1" icon="icon-ok" class="m-wrap placeholder-no-fix" placeholder="� ����" type="text" name="info" /></div></div></div>


				
			</fieldset>
		</div>
		
      <div class="span6">
			<fieldset>
				<legend>������� �������!</legend>
				<div class="control-group">

<!-- ���� ������ �������� �������� ��� ������ (VK, FB, G+) -->
				
			</div>
			</fieldset>
	</div>
	 </div>
	
				<div class="control-group">
			<div class="controls">
				<input id="ytagree_accept" type="hidden" value="0" name="webmaster_models_web_RegisterForm[agree]" /><input id="agree_accept" name="webmaster_models_web_RegisterForm[agree]" value="1" type="checkbox" />				� �������� � ����������� ��������
				<a data-toggle="modal" data-target="#conditions" href="#">������� �����������</a> Coderlaba							</div>
		</div>
		<div class="control-group">
			<div class="controls submit_button">
				<div class="fieldsubmit">
				<button name="submit" type="submit" class="btn green pull-right">
					������������������
					<i class="m-icon-swapright m-icon-white"></i>
				</button>
				<br>
				</div>
			</div>
		</div>
	</div>
	<input name="webmaster_models_web_RegisterForm[socialServiceName]" id="webmaster_models_web_RegisterForm_socialServiceName" type="hidden" />	<input name="webmaster_models_web_RegisterForm[socialServiceId]" id="webmaster_models_web_RegisterForm_socialServiceId" type="hidden" />


</form>

	[/validation]
	
<div class="copyright">
	<span >
	  � 2014 Coderlaba. <span>��� ����� ��������.</span>
		<br>
		��. �����: <a style="color: #eee;" href="mailto:test@test.com"> test@test.com</a>
	</span>
</div>
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
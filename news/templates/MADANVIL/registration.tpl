<div class='content' id='one'>
    <div id='hide' class="loading-spinner"></div>
    <div id="show" class="show_form">
      <div class="over" style="position:absolute; width:100%; top: 2%;">
	      <img src="https://www.ucraft.ru/images/icon2.png" width="150px" height="150px">
      </div>
	    <div id='show'>
        <div class="over" style="position:absolute; width:100%; top: 10%;">
					<h1 class="title h1">
						[validation]Продолжение регистрации[/validation]
					</h1>
					<div class="regtext">
						[validation]
							Ваш аккаунт был зарегистрирован на нашем сайте,
							однако информация о Вас является неполной, поэтому ОБЯЗАТЕЛЬНО заполните дополнительные поля в Вашем профиле.<br>
						[/validation]
					</div>
					[registration]
					<form class="login_form" action="" method="post" role="form" style="width:300px;">
					          <!-- -->
								<input type="hidden" name="<?= $token_id; ?>" value="<?= $token_value; ?>">
					            <div class="uk-margin">
						  	    		<div class="uk-inline" style="width: 300px;">
						  	    			<span class="uk-form-icon" uk-icon="icon: user"></span>
						  	    			<input class="uk-input" type="text" id="reusername" name="<?= $form_names['loginform']['regfname'];?>" autocomplete="off" placeholder="Логин" value="" required />
						  	    		</div>
						  	    	</div>

					            <div class="uk-margin">
						  	    		<div class="uk-inline" style="width: 300px;">
						  	    			<span class="uk-form-icon" uk-icon="icon: happy"></span>
						  	    			<input class="uk-input" type="text" id="reusersurname" name="<?= $form_names['loginform']['regfsurname'];?>" autocomplete="off" placeholder="Имя" value="" required />
						  	    		</div>
						  	    	</div>
					            <!-- -->
					            <div class="uk-margin">
						  	    		<div class="uk-inline" style="width: 300px;">
						  	    			<span class="uk-form-icon" uk-icon="icon: mail"></span>
						  	    			<input class="uk-input" type="text" id="reemail" name="<?= $form_names['loginform']['regfemail'];?>" autocomplete="off" placeholder="E-mail" value="" required />
						  	    		</div>
						  	    	</div>
					            <!-- -->
						  	    	<div class="uk-margin">
						  	    		<div class="uk-inline" style="width: 300px;">
						  	    			<span class="uk-form-icon" uk-icon="icon: lock"></span>
						  	    			<input class="uk-input" type="password" id="repassword" name="<?= $form_names['loginform']['regfpassword1'];?>" autocomplete="off" placeholder="Пароль" value="" required />
						  	    		</div>
						  	    	</div>
					            <!-- -->
					            <div class="uk-margin">
						  	    		<div class="uk-inline" style="width: 300px;">
						  	    			<span class="uk-form-icon" uk-icon="icon: lock"></span>
						  	    			<input class="uk-input" type="password" id="confirm-password" name="<?= $form_names['loginform']['regfpassword2'];?>" autocomplete="off" placeholder="Повторите пароль" value="" required />
						  	    		</div>
						  	    	</div>
					            <!-- -->
						  	    	<button class="uk-button uk-button-secondary uk-margin-small-bottom" style="width: 300px;" type="submit">СОЗДАТЬ АККАУНТ<input type="hidden" name="<?= $form_names['loginform']['regfregister']; ?>" id="register-submit" value=""></button>
					          </form>
							[question]
							<label for="question_answer">{question}</label>
							<input placeholder="Введите ответ" type="text" name="question_answer" id="question_answer" class="wide" required>
							[/question]
							[sec_code]
							{reg_code}
							<input placeholder="Повторите код" title="Введите код указанный на картинке" type="text" name="sec_code" id="sec_code" required>
							[/sec_code]
							[recaptcha]
									<!-- <li>{recaptcha}</li> -->
							[/recaptcha]
					[/registration]
					[validation]
				<label for="fullname">Ваше имя</label>
				<input type="text" id="fullname" name="fullname" class="wide">

				<label for="land">Место жительства</label>
				<input type="text" id="land" name="land" class="wide">

				<label for="image">О себе</label>
				<textarea id="info" name="info" rows="5" class="wide"></textarea>

				<label for="image">Аватар</label>
				<input type="file" id="image" name="image" class="wide">

				<table class="xfields">
					{xfields}
				</table>

		[/validation]

				<button class="btn" name="submit" type="submit">Зарегистрироваться</button>

			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function(){
	   setTimeout(function(){
		  $('#hide').hide();
		}, 100);
	   setTimeout(function(){
		  $('#show').show();
		}, 200);
	});
</script>

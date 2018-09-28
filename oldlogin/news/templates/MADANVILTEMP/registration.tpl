<div class='content' id='one' style="width: 100%; height: 100vh;">
    <div id='hide' class="loading-spinner"></div>
    <div id="show" class="show_form">
      <div class="over" style="position:absolute; width:100%; top: 2%;">
	      <img src="https://www.ucraft.ru/images/icon2.png" width="150px" height="150px">
      </div>
	    <div id='show'>
        <div class="over" id="centerDiv">
					[registration]

							<div class="uk-margin">
								<div class="uk-inline" style="width: 300px;">
									<span class="uk-form-icon" uk-icon="icon: user"></span>
									<input class="uk-input" type="text" name="name" id="name" class="wide" placeholder="Логин" required >
								</div>
							</div>

							<div class="uk-margin">
						 		<div class="uk-inline" style="width: 300px;">
									<button class="uk-input" title="Проверить" onclick="CheckLogin(); return false;">Проверить</button>
								</div>
							</div>
              <div style="text-align:center;list-style-type: none;">
                <p style="width:300px;color:green;font-size:10pt;font-weight:700;font-family:Roboto;text-transform:uppercase;" id="result-registration"></p>
              </div>

							<div class="uk-margin">
						 		<div class="uk-inline" style="width: 300px;">
						 	  	<span class="uk-form-icon" uk-icon="icon: lock"></span>
									<input class="uk-input" type="password" name="password1" placeholder="Пароль">
								</div>
							</div>

							<div class="uk-margin">
								<div class="uk-inline" style="width: 300px;">
									<span class="uk-form-icon" uk-icon="icon: lock"></span>
									<input class="uk-input" type="password" name="password2" placeholder="Повторите пароль">
								</div>
							</div>

							<div class="uk-margin">
	  	    			<div class="uk-inline" style="width: 300px;">
	  	    				<span class="uk-form-icon" uk-icon="icon: mail"></span>
	  	    				<input class="uk-input" type="email" name="email" placeholder="Почта">
	  	    			</div>
	  	    		</div>



							[question]
							<label for="question_answer">{question}</label>
							<input placeholder="Введите ответ" type="text" name="question_answer" id="question_answer" class="wide" required>
							[/question]
							[sec_code]
							{reg_code}
							<input placeholder="Повторите код" title="Введите код указанный на картинке" type="text" name="sec_code" id="sec_code" required>
							[/sec_code]
							[recaptcha]
									<!-- {recaptcha} -->
							[/recaptcha]
					[/registration]
				<button class="uk-input" name="submit" type="submit" style="width:300px;">Зарегистрироваться</button>

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

[validation]{include file="engine/modules/redirectreg.php"}[/validation]

<?php require 'header.php';?>
<?php
require_once 'includes/authenticate.php';
require_once 'includes/library/HTMLPurifier.auto.php';
require_once 'login.php';
?>

<?php if(!isLoggedIn($db)): ?>

<div class='content' id='one'>
    <div id='hide' class="loading-spinner"></div>
    <div id="show" class="show_form">
      <div class="over" style="position:absolute; width:100%; top: 2%;">
	      <img src="https://www.ucraft.ru/images/icon2.png" width="150px" height="150px">
      </div>
	    <div id='show'>
        <div class="over" style="position:absolute; width:100%; top: 10%;">
        <br><br><br><br><br>
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
          <a href="/index.php" style="width: 300px;"><button class="uk-button uk-button-primary uk-margin-small-bottom" style="width: 300px;">АВТОРИЗАЦИЯ</button></a>
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

  
<?php 
else:
?>
<br>
<?php echo $_SESSION['email']; ?>
<br>
<a href="/logout.php">Выйти</a>
<?php  
 endif;  
?>
<?php require 'header.php';

?>

<?php
if(!defined("MenuSctipt")){ header('Location: index.php'); }
?>

<?php if(!isLoggedIn($db)): ?>

  <div class='content' id='one'>
    <div id='hide' class="loading-spinner"></div>
    <div id="show" class="show_form">
      <div class="over" style="position:absolute; width:100%; top: 5%;">
	      <img src="https://www.ucraft.ru/images/icon2.png" width="150px" height="150px">
      </div>
	    <div id='show'>
        <div class="over" style="position:absolute; width:100%; top: 15%;">
        <br><br><br><br><br>
	    	<form class="login_form" action="" method="post" role="form" style="width:300px;">
	    		<div class="uk-margin">
	    			<div class="uk-inline" style="width: 300px;">
              <input type="hidden" name="<?= $token_id; ?>" value="<?= $token_value; ?>" >
	    				<span class="uk-form-icon" uk-icon="icon: mail"></span>
	    				<input class="uk-input" type="text" name="<?= $form_names['loginform']['linfemail']; ?>" tabindex="1" placeholder="Email" autocomplete="off" value="" required>
	    			</div>
	    		</div>
	    		<div class="uk-margin">
	    			<div class="uk-inline" style="width: 300px;">
	    				<span class="uk-form-icon" uk-icon="icon: lock"></span>
	    				<input class="uk-input" type="password" name="<?= $form_names['loginform']['linfpassword']; ?>" tabindex="2" placeholder="Пароль" autocomplete="off" value="" required>
	    			</div>
	    		</div>
	    		<button class="uk-button uk-button-secondary uk-margin-small-bottom" style="width: 300px;" type="submit">ВОЙТИ<input type="hidden" name="<?= $form_names['loginform']['linfsubmit']; ?>" tabindex="4" value="Войти" ></button>
	    		<br>
	    		<input name="username" type="hidden" id="login" value="submit">
	    	</form>
	    	<a href="/registration.php" style="width: 300px;"><button class="uk-button uk-button-primary uk-margin-small-bottom" style="width: 300px;">РЕГИСТРАЦИЯ</button></a>
        <br>
        <a href="/reset-password.php" style="width: 300px;"><button class="uk-button uk-button-primary uk-margin-small-bottom" style="width: 300px;">Я забыл свой пароль</button></a>
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

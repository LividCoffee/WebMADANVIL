<?php

require_once 'includes/library/HTMLPurifier.auto.php';
require_once 'includes/authenticate.php';
require_once 'includes/db_connect.php';
require_once 'includes/functions.php';
require_once 'includes/autoload.php';

if(!isLoggedIn($db)){

$csrf = new csrf();
$token_id = $csrf->get_token_id();
$token_value = $csrf->get_token($token_id);
$form_names = $csrf->form_names(array('reseemail', 'resesubmit'), false,"resetform");

if(isset($_POST[$form_names['resetform']['reseemail']],
         $_POST[$form_names['resetform']['resesubmit']])){

$email = filterxss($_POST[$form_names['resetform']['reseemail']]);
        
    if(!filter_var($email, FILTER_VALIDATE_EMAIL) === false){
     
        try{

            $stmtq = $db->prepare("SELECT * FROM users WHERE email = :email");
            $stmtq->bindParam(':email',$email);
            $stmtq->execute();
            $result = $stmtq->fetch();

            if(!$result){

             phpAlert('Ваша заявка не может быть подана. Проверьте свою электронную почту!');

            }else{

             $userKey = $result['user_key'];
             $theemail = $result['email'];
             $thename =  $result['username'];
             $thesurname =  $result['surname'];
             $resetCode =  hash('sha256', microtime(true).mt_rand().$userKey);

             $stmt = $db->prepare("REPLACE INTO resetpassword(email,user_key,reset_code) VALUES(:email, :key, :code)");
             $stmt->bindParam(':email', $theemail);
             $stmt->bindParam(':key', $userKey);
             $stmt->bindParam(':code', $resetCode);
                    
             if( $stmt->execute() ){
            
              //if(sendPasswordToEmail($theemail, $thename, $thesurname,$userKey, $resetCode)){
                
                phpAlert('Ссылка была отправлена на ваш адрес электронной почты!');

              }else{

                phpAlert('Была техническая проблема. Вы можете попробовать еще раз. Благодарю!'); 
              }
            
             }else{ phpAlert('Была техническая проблема. Вы можете попробовать еще раз. Благодарю!'); }
            }

        }catch(PDOException $e){ throw $e; }catch(Exception $ew){ throw $ew; }
    }else{ phpAlert('Ваша заявка не может быть подана. Проверьте свою электронную почту!'); }

$form_names = $csrf->form_names(array('reseemail', 'resesubmit'),true,"resetform");

}
}else{ loginRegisterAuth($db); }

function phpAlert($amsg){

 echo '<div class="msgfromserver centerthis"><h4>'.$amsg.'</h4><img src="images/cancel.png" onclick="closeMsg()"></div>';
}
?>

<!DOCTYPE html>
<html lang="el">
<head>
<title></title>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="Iordanis Georgiadis">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<?php require 'header.php';?>
</head>
<body>
<?php
definers(); 
uniquePage();
?>

<div class="resetpassworddiv">
 <div class='resetpassworddiv-tag'>
  <h4>Изменить пароль</h4>
  <p>Введите адрес электронной почты, для которого вы хотите изменить пароль!</p>
 </div>
<form action="" method="POST" >
 <input type="hidden" name="<?= $token_id; ?>" value="<?= $token_value; ?>" />
 <input type="text" name="<?= $form_names['resetform']['reseemail']; ?>" id="email" placeholder='Email' autocomplete="off" required>
 <input type="submit" name="<?= $form_names['resetform']['resesubmit']; ?>" id="reset_password" Value="reset">
</form>
</div>

</body>
</html>
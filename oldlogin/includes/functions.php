<?php

//ini_set( SMTP, "ssl://smtp.gmail.com" ); 
//ini_set( smtp_port, 425 );
//ini_set("username","danil.evmenchuk@gmail.com");  
//ini_set("password","13141974zxCV");

function definers(){
    define("MenuSctipt",'OK');
}

function protectOne($stringx){

    if( (!preg_match('/[\'"]/', $stringx) && !preg_match('/\\\\/', $stringx) ) && $stringx != null )
     return true;
    
    return false; 
}

function clearIt($aa){

    if (strpos($aa, '<') == true || strpos($aa,'>') == true || strpos($aa,'script') == true) {
        return false;
    }
    if (strpos($aa, '"') == true || strpos($aa,'/') == true || strpos($aa,'\\') == true) {
        return false;
    }

    return true;
}

function passwordRegister($password){
    
    $lowercase = preg_match('@[a-z]@', $password);
    $number    = preg_match('@[0-9]@', $password);

    if( !$lowercase || !$number )
     return true;
    
    return false;
}

function validate_email($email){
    
    $one=explode("@",$email);
    
    $tmp=array_pop($one);
        
        if(checkdnsrr($tmp,"MX")){
        
            return true;
        
        }else{
            
            return false;
        
        }
}

function getUserIp(){
    
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    }elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
        $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
    }else{
        $ip = $_SERVER['REMOTE_ADDR'];
    }

    return $ip;
}

function loginRegisterAuth(){  
 if($_SESSION['verify'] == 1){ header('Location: home.php');exit;
 }elseif($_SESSION['verify']==0){ header('Location: restricted-home.php');exit;    
 }
}

function resHomeAuth(){

 if(isLoggedIn()){
    if($_SESSION['verify'] == 1){
        header('Location: home.php');
        exit;
    }
 }else{ header('Location: index.php'); exit; }
}
function homeAuth(){
    if(isLoggedIn()){
        if($_SESSION['verify'] == 0){ header('Location: restricted-home.php');exit;}
    }else{ header('Location: index.php'); exit; }
}

function clearSessionVars(){

if(isset($_SESSION['token_id']))
 unset($_SESSION['token_id']);

if(isset($_SESSION['token_value']))
 unset($_SESSION['token_value']);

if(isset($_SESSION['loginform']))
 unset($_SESSION['loginform']);
}

function isLoggedIn(){

if(isset($_SESSION['user_key'],$_SESSION['clientip'],$_SESSION['verify'],$_SESSION['email']))
 return true;

return false;
}

function filterxss($var){
 $config = HTMLPurifier_Config::createDefault();
 $purifier = new HTMLPurifier($config);
 return $purifier->purify($var);
}

function userInfos($db,$thekey){

}

function uniquePage(){

if(isset($_SESSION['randomnumber'])){
    echo "<input type='hidden' value=".$_SESSION['randomnumber']." id='unique'>";
}else{
 
 $unique = bin2hex(openssl_random_pseudo_bytes(10));
 $_SESSION['randomnumber'] = $unique;
 echo "<input type='hidden' value=".$_SESSION['randomnumber']." id='unique'>"; 
}

}

function exceptor($exception){

$starsS = '*********************************************';
$changeline = "\n\n";

$datetime  = date("d/m/Y");
$exName = "<b>Exception:</b> " . $exception->getMessage();

if(isset($_SESSION['email'])){
 $emailname = $_SESSION['email'];    
}else{
 $emailname = 'loggedout';
}

$urltemp = basename($_SERVER['PHP_SELF']);
$urltemptwo = explode('.',$urltemp);
$url = $urltemptwo[0];

$thepath = 'errors/'.$url.'/'.$emailname.'_'.rand().'.txt';
$lasttext = $starsS.$changeline.$exName.$changeline.$datetime.$changeline.$starsS;

$myfile = fopen($thepath,"w") or die("Unable to continue!");
fwrite($myfile,$lasttext);
fclose($myfile);

redirectJs('error.php');
}

function redirectJs($url){
    if (headers_sent()){
      die('<script type="text/javascript">window.location=\''.$url.'\';</script‌​>');
    }else{
      header('Location: ' . $url);
      die();
    }    
}
/**************************************
db funcs

/*
$table='login_attempts';
$tablevals = "(email,attempts,ipaddress)";
$forbinds = "(:one,:two,:three)";
$pars = array(':one'=>'1111',':two'=>2,':three'=>getUserIp());

*/
function insertInto($db,$table,$tablevals,$forbinds,$pars){

 try{

    $one = $db->prepare("INSERT INTO $table$tablevals VALUES $forbinds");
    foreach ($pars as $key => $value) {
        $one->bindValue($key,$value);
    }
    if($one->execute()){ return true; }else{ return false; }

 }catch(PDOException $ex){ throw $ex; }catch(Exception $ex){ throw $ex; }
}

/*

$table='login_attempts';
$colbind = "attempts=:one,ipaddress=:two";
$wheres = 'email=:mail';
$bindvals = array(':one'=>44,':two'=>'192.192.004.004',':mail'=>'1111');

*/

function updateDb($db,$table,$vals,$wherevals,$binds){

    try{

        $one = $db->prepare("UPDATE $table SET $vals WHERE $wherevals");
        foreach ($binds as $key => $value) {
            $one->bindValue($key,$value);
        }

        $one->execute();

    }catch(PDOException $ex){throw $ex;}catch(Exception $ex){throw $ex;}
}

function selectFromWhere($db,$select,$from,$where,$value){
    
    try{

        $stmt = $db->prepare("SELECT $select FROM $from WHERE $where = :variable");
        $stmt->bindParam(':variable',$value);
        $stmt->execute();
        return $stmt;

    }catch(PDOException $ex){ throw $ex; }catch(Exception $ex){ throw $ex; }
}

function deleteFromWhere($db,$from,$where,$is){

 try{

    $one = $db->prepare("DELETE FROM $from WHERE $where=:qqq");
    $one->bindParam(':qqq',$is);
    $one->execute();
    if($one->rowCount()){ return true; }else{ return false; }

 }catch(PDOException $ex){throw $ex;}catch(Exception $ex){throw $ex;}
}
//***********************************************************************

//*******************************
//email functions

function registerEmail($useremail,$name,$surname,$ukey,$resetcode){

try{
 
 $from_name = 'MADANVIL';
 //-------------
 $to      = $useremail;
 $reply = 'danil.evmenchuk@gmail.com';
 $subject = 'Регистрация';
 $message = '<div style="width:100%;text-align:center;display:block;">
              <h4>Ваша регистрация была подтверждена. Добро пожаловать!</h4>
              <p>Привет, гомула '.$name.' '.$surname.', вы только что создали свою учетную запись. Следующим шагом для проверки вашей личности является следовать приведенной ниже ссылке. Вы сразу же получите доступ ко всем функциям</p>
              <h4>Спасибо, что вы здесь!</h4><div style="width:100%;padding: 20px 0px;"><a href="'.$GLOBALS['linkforverify'].'?id='.$ukey.'&code='.$resetcode.'">Включить учетную запись</a></div></div>';

 $headers = "MIME-Version: 1.0\r\n";
 $headers.= "From: =?utf-8?b?".base64_encode($from_name)."?= \r\n";
 $headers.= "Content-Type: text/html;charset=utf-8\r\n";
 $headers.= "Reply-To: $reply\r\n";  
 $headers.= "X-Mailer: PHP/" . phpversion();

 if(mail($to, '=?utf-8?B?'.base64_encode($subject).'?=', $message, $headers)){ return true; }else{ return false; }

}catch(Exception $rr){
 throw $rr;
}

}

function sendPasswordToEmail($theemail, $thename, $thesurname,$ukey, $resetcode){

try{
 
 $from_name = 'MADANVIL';
 //-------------
 $to      = $theemail;
 $reply = 'beelowfce@gmail.com';
 $subject = 'Изменить пароль';
 $message = '<div style="width:100%;text-align:center;display:block;">
              <h4>Ваш запрос на изменение пароля!</h4>
              <p>Привет,'.$thename.' '.$thesurname.', вы только что запросили изменение пароля для своей учетной записи. Следующим шагом для проверки вашей личности и ввода нового пароля является ссылка ниже. Вы сразу же сможете войти в систему с новым паролем.</p>
              <h4>Спасибо, что вы здесь!</h4><div style="width:100%;padding: 20px 0px;"><a href="'.$GLOBALS['linkforpassword'].'?key='.$ukey.'&reset_code='.$resetcode.'">Включить учетную запись</a></div></div>';

 $headers = "MIME-Version: 1.0\r\n";
 $headers.= "From: =?utf-8?b?".base64_encode($from_name)."?= \r\n";
 $headers.= "Content-Type: text/html;charset=utf-8\r\n";
 $headers.= "Reply-To: $reply\r\n";  
 $headers.= "X-Mailer: PHP/" . phpversion();

 if(mail($to, '=?utf-8?B?'.base64_encode($subject).'?=', $message, $headers)){ return true; }else{ return false; }

}catch(Exception $rr){
 throw $rr;
}  
}

function emailAccountBlock($theemail,$name,$surname,$blockcode){
try{
 
 $from_name = 'MADANVIL';
 //-------------
 $to      = $theemail;
 $reply = 'danil.evmenchuk@gmail.com';
 $subject = 'Блокировка учетной записи!';
 $message = '<div style="width:100%;text-align:center;display:block;">
              <h4>Ваш аккаунт заблокирован!</h4>
              <p>Привет, '.$name.' '.$surname.', вы, кажется, ввели свой пароль 10 раз неправильно, и ваша учетная запись была заблокирована на 10 минут<b>'.date("h:i:sa").'</b> ). Если вы не помните пароль, вы можете его изменить. В противном случае, если вы этого не сделали, вы должны запросить смену пароля!</h4><div style="width:100%;padding: 20px 0px;"><a href="'.$GLOBALS['linkforchangepassword'].'"> Изменить пароль</a></div><div style="width:100%;padding: 20px 0px;"><a href="'.$GLOBALS['linkforitwasntme'].'?email='.$theemail.'&blockcode='.$blockcode.'">Это был не я</a></div></div>';

 $headers = "MIME-Version: 1.0\r\n";
 $headers.= "From: =?utf-8?b?".base64_encode($from_name)."?= \r\n";
 $headers.= "Content-Type: text/html;charset=utf-8\r\n";
 $headers.= "Reply-To: $reply\r\n";  
 $headers.= "X-Mailer: PHP/" . phpversion();

 if(mail($to, '=?utf-8?B?'.base64_encode($subject).'?=', $message, $headers)){ return true; }else{ return false; }

}catch(Exception $rr){
 throw $rr;
}
}
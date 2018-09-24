<?php
if(!defined("MenuSctipt")){ header('Location: appname.php'); }
if(!isLoggedIn($db)): ?>
<!-- Редирект если не зарегистрирован / авторизован -->

<?php else:?>
<?php echo $_SESSION['email']; ?>

<!-- Редирект если зарегистрирован / авторизован -->
<?php
header('Location: news.php');
endif;
?>

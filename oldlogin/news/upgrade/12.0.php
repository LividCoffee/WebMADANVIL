<?php

$config['version_id'] = "12.1";
$config['own_404'] = '0';
$config['own_ip'] = '';
$config['disable_frame'] = '0';

$tableSchema = array();

$tableSchema[] = "DROP TABLE IF EXISTS " . PREFIX . "_banners_logs";
$tableSchema[] = "CREATE TABLE " . PREFIX . "_banners_logs (
  `id` int(11) unsigned NOT NULL auto_increment,
  `bid` int(11) NOT NULL default '0',
  `click` tinyint(1) NOT NULL default '0',
  `ip` varchar(40) NOT NULL  default '',
  PRIMARY KEY  (`id`),
  KEY `bid` (`bid`),
  KEY `ip` (`ip`)
) ENGINE=" . $storage_engine . " DEFAULT CHARACTER SET " . COLLATE . " COLLATE " . COLLATE . "_general_ci";

$tableSchema[] = "DROP TABLE IF EXISTS " . PREFIX . "_banners_rubrics";
$tableSchema[] = "CREATE TABLE " . PREFIX . "_banners_rubrics (
  `id` mediumint(8) NOT NULL auto_increment,
  `parentid` mediumint(8) NOT NULL default '0',
  `title` varchar(70) NOT NULL default '',
  `description` varchar(255) NOT NULL  default '',
  PRIMARY KEY  (`id`)
) ENGINE=" . $storage_engine . " DEFAULT CHARACTER SET " . COLLATE . " COLLATE " . COLLATE . "_general_ci";

$tableSchema[] = "ALTER TABLE `" . PREFIX . "_category` ADD `disable_main` TINYINT(1) NOT NULL DEFAULT '0', ADD `disable_rating` TINYINT(1) NOT NULL DEFAULT '0', ADD `disable_comments` TINYINT(1) NOT NULL DEFAULT '0'";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_metatags` ADD `page_title` VARCHAR(255) NOT NULL DEFAULT '', ADD `page_description` TEXT NOT NULL";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_banners` ADD `allow_views` TINYINT(1) NOT NULL DEFAULT '0', ADD `max_views` INT(11) NOT NULL DEFAULT '0', ADD `allow_counts` TINYINT(1) NOT NULL DEFAULT '0', ADD `max_counts` INT(11) NOT NULL DEFAULT '0', ADD `views` INT(11) NOT NULL DEFAULT '0', ADD `clicks` INT(11) NOT NULL DEFAULT '0',  ADD `rubric` MEDIUMINT(8) NOT NULL DEFAULT '0'";

foreach($tableSchema as $table) {
	$db->query ($table);
}


$handler = fopen(ENGINE_DIR.'/data/config.php', "w") OR die("Извините, но невозможно записать информацию в файл <b>.engine/data/config.php</b>.<br />Проверьте правильность проставленного CHMOD!");
fwrite($handler, "<?PHP \n\n//System Configurations\n\n\$config = array (\n\n");
foreach($config as $name => $value)
{
	fwrite($handler, "'{$name}' => \"{$value}\",\n\n");
}
fwrite($handler, ");\n\n?>");
fclose($handler);

	
$fdir = opendir( ENGINE_DIR . '/cache/system/' );
while ( $file = readdir( $fdir ) ) {
	if( $file != '.' and $file != '..' and $file != '.htaccess' ) {
		@unlink( ENGINE_DIR . '/cache/system/' . $file );
		
	}
}

@unlink(ENGINE_DIR.'/data/snap.db');

listdir( ENGINE_DIR . '/cache/system/CSS' );
listdir( ENGINE_DIR . '/cache/system/HTML' );
listdir( ENGINE_DIR . '/cache/system/URI' );

clear_cache();

if ($db->error_count) {

	$error_info = "Всего запланировано запросов: <b>".$db->query_num."</b> Неудалось выполнить запросов: <b>".$db->error_count."</b>. Возможно они уже выполнены ранее.<br /><br /><div class=\"quote\"><b>Список не выполненных запросов:</b><br /><br />"; 

	foreach ($db->query_list as $value) {

		$error_info .= $value['query']."<br /><br />";

	}

	$error_info .= "</div>";

} else $error_info = "";

msgbox("info","Информация", "Обновление базы данных с версии <b>12.0</b> до версии <b>12.1</b> успешно завершено.<br /><br />{$error_info}<br />Нажмите далее для продолжения процессa обновления скрипта.");

?>
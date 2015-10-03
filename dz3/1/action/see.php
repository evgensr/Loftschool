<?php
if (!isset($action)) die ('нет доступа');



if (!preg_match( "/^[0-9а-яА-Яa-zA-Z\_ЁёйЙ]*\.txt$/",$_GET['file']))
{
    echo '<h3>Плохои имя файла</h3>';



}else if (!file_exists('./file/'.$_GET['file'])){
    echo '<h3>Нет такого файла</h3>';
    exit;

}else
{
   echo nl2br(htmlspecialchars(file_get_contents('./file/'.$_GET['file'])));

}


?>


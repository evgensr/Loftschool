<?php

if(isset($_SERVER['HTTP_X_REQUESTED_WITH']) && !empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {


    if (!preg_match( "/^[0-9а-яА-Яa-zA-Z\_ЁёйЙ]*\.txt$/",$_POST['uid'])) {
        // echo 'плохой файл';
        exit;
    }

    if (file_exists('../file/'.$_POST['uid'])){
        unlink('../file/'.$_POST['uid']);
    }
}

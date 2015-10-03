<?php

include_once 'helper_functions.php';

$mysqli = new mysqli("localhost", "root", "", "test1");

/* проверяем соединение */
if (mysqli_connect_errno()) {
    printf("Ошибка соединения: %s\n", mysqli_connect_error());
    exit();
}




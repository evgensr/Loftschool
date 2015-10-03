<?php

if (!empty($_POST['exampleInputName']) and !empty($_POST['exampleInputText1']) ){

    if (!preg_match( "/^[0-9а-яА-Яa-zA-Z\_ЁёйЙ]*$/",$_POST['exampleInputName']))
    {
        echo '<h3>Плохои имя файла</h3>';
        exit;

    }else if (mb_strlen($_POST['exampleInputName'])>251)
    {
        echo '<h3>Слишком длинное имя файла</h3>';
        exit;

    }else if (file_exists('./file/'.$_POST['exampleInputName'].'.txt') and empty($_POST['edit'])){
        echo '<h3>Такой файл уже есть</h3>';
        exit;

    }else
    {
        file_put_contents('./file/'.$_POST['exampleInputName'].'.txt', $_POST['exampleInputText1'] );
        header("Location: ./?action=save&status=ok&c=".time());
        exit;
    }



}else if ($_GET['status']=='ok'){
    echo '<h3>Файл сохранен</h3>';
}else{
    echo '<h3>Не заполнены все поля</h3>';

}
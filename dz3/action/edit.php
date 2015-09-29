<?php
if (!isset($action)) die ('нет доступа');

if(!preg_match( "/^[0-9а-яА-Яa-zA-Z\_ЁёйЙ]*\.txt$/",$_GET['file']))
{
    echo '<h3>Плохои имя файла</h3>';



}else if (!file_exists('./file/'.$_GET['file'])){
    echo '<h3>Нет такого файла</h3>';
    exit;

}else
{
    $file =  htmlspecialchars(file_get_contents('./file/'.$_GET['file']));

}


?>


<form action="./?action=save" method="post">

    <div class="bs-example" data-example-id="basic-forms">
        <form>
            <div class="form-group">
                <label for="exampleInputName2">Название файлы</label>
                <input type="text" class="form-control" id="exampleInputName2" name="exampleInputName2" value="<?=$_GET['file']?>" disabled>
                <input type="hidden" value="<?=substr($_GET['file'], 0 , -4)?>" name="exampleInputName">
                <input type="hidden" value="1" name="edit">
            </div>
            <div class="form-group">
                <label for="exampleInputText1">Текст</label>
                <textarea class="form-control" rows="3" id="exampleInputText1" placeholder="текст" name="exampleInputText1"><?=$file?></textarea>
            </div>
            <button type="submit" class="btn btn-default">Сохранить</button>
        </form>
    </div>

</form>



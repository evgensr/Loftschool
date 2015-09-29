<?php
if (!isset($action)) die ('нет доступа');
?>

<form action="./?action=save" method="post">

    <div class="bs-example" data-example-id="basic-forms">
        <form>
            <div class="form-group">
                <label for="exampleInputName">Название файлы</label>
                <input type="text" class="form-control" id="exampleInputName" name="exampleInputName" placeholder="Без расширения">
            </div>
            <div class="form-group">
                <label for="exampleInputText1">Текст</label>
                <textarea class="form-control" rows="3" id="exampleInputText1" placeholder="текст" name="exampleInputText1"></textarea>
            </div>
            <button type="submit" class="btn btn-default">Сохранить</button>
        </form>
    </div>

</form>
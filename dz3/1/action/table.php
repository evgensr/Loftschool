<?php
if (!isset($action)) die ('нет доступа');
?>

<div class="row">
    <div class="col-lg-12">
        <h1>Список файлов</h1>

        <table class="table">
            <caption>Список файлов из папки file</caption>
            <thead>
            <tr>
                <th>#</th>
                <th>Название файла</th>
                <th>Размер файла</th>
                <th>Редактировать</th>
                <th>Удалить</th>
            </tr>
            </thead>
            <tbody>

            <?php
            $i = 0;
            foreach (glob("./file/*.txt") as $filename) {
                ++$i;
                echo "<tr> <th scope='row'>$i</th> <td><a href='?action=see&file=".substr($filename, 7)."'>".substr($filename, 7)."</a></td>  <td>".filesize($filename)." байт</td>  <td>
                    <button type='button' class='btn btn-info btn-xs edit' data-name='".substr($filename, 7)."'>Редактировать</button>
                    </td>   <td>
                    <button type='button' class='btn btn-danger btn-xs remove'  data-name='".substr($filename, 7)."'>Удалить</button>
                    </td> </tr> ";
            }
            ?>


            </tbody>
        </table>
    </div>
</div>

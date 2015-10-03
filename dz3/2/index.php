<?php


include_once 'db.php';


/* создаем подготовленное выражение */
if ($stmt = $mysqli->query('SHOW TABLES')) {
    /* Выбираем результаты запроса: */
    while( $row = $stmt->fetch_assoc() ){
        $itemTbles[] = $row;
    }
}

/* закрываем соединение */
$stmt->close();


?>

<!DOCTYPE html>
<html lang="ru">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Домашнее задание номер три</title>

    <!-- Bootstrap Core CSS -->
    <link href="http://ironsummitmedia.github.io/startbootstrap-logo-nav/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="http://ironsummitmedia.github.io/startbootstrap-logo-nav/css/logo-nav.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Навигация</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>


        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li>
                    <a href="./">Выгрузка файлов</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<!-- Page Content -->
<div class="container">



    <div class="row">
        <div class="col-lg-12">
            <h1>Выгрузка файлом</h1>
            <div id="at_frm"></div>

            <div class="bs-example" data-example-id="inline-static-form-control" name="export">
                <form class="form-inline">
                    <div class="form-group">

                        <select class="form-control" name="table">
                            <?php
                            foreach ($itemTbles as $item)
                            {
                                echo '<option value="'.$item['Tables_in_test1'].'">'.$item['Tables_in_test1'].'</option>';
                            }
                            ?>

                        </select>

                    </div>
                    <div class="form-group">

                        <select class="form-control" name="format">
                            <option value="json">json</option>
                            <option value="xml">xml</option>
                            <option value="csv">csv</option>
                        </select>

                    </div>
                    <button type="submit" class="btn btn-default">Выгрузить</button>
                </form>
            </div>


        </div>
    </div>






</div>
<!-- /.container -->

<!-- jQuery -->
<script src="http://ironsummitmedia.github.io/startbootstrap-logo-nav/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="http://ironsummitmedia.github.io/startbootstrap-logo-nav/js/bootstrap.min.js"></script>

<script type="text/javascript">
    //<![CDATA[
    $(document).ready(function() {
        $("[name='export']").on( "submit", function() {
            var data = $('form').serialize();
            window.location.replace("./handling.php?"+data);
            return false;
        });
    });

    //]]>
</script>

</body>

</html>

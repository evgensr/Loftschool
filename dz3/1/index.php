<?php

set_time_limit(5);
error_reporting(E_ALL ^E_NOTICE);

ini_set('display_errors',true);
ini_set('html_errors',true);
// ob_implicit_flush();


switch ($_REQUEST['action']) {
    case 'see':
        $action='see.php';
        break;
    case 'new':
        $action='new.php';
        break;
    case 'edit':
        $action='edit.php';
        break;
    case 'remove':
        $action='remove.php';
        break;
    case 'save':
        $action='save.php';
        break;
    default:
        $action='table.php';
}


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
                    <a href="./">Список файлов</a>
                </li>
                <li>
                    <a href="./?action=new">Создать файл</a>
                </li>

            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<!-- Page Content -->
<div class="container">

    <?php
    include './action/'.$action;
    ?>


</div>
<!-- /.container -->

<!-- jQuery -->
<script src="http://ironsummitmedia.github.io/startbootstrap-logo-nav/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="http://ironsummitmedia.github.io/startbootstrap-logo-nav/js/bootstrap.min.js"></script>

<script type="text/javascript">
    //<![CDATA[
    $(document).ready(function() {

        $(".edit").click(function() {
            var Name=$(this).data('name');
            window.location.replace("?action=edit&file="+Name);
        });

        $(".remove").click(function() {
            var Name=$(this).data('name');
            if (confirm('Удалить файл?')) {
                $.ajax({
                    type: "POST",
                    url: "./action/remove.php",
                    cache: false,
                    data: ({uid : Name }),
                    success: function(){
                        window.location.replace(".");
                    }
                });
            }
        });
    });
    //]]>
</script>

</body>

</html>

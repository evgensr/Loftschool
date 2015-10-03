<?php



    include_once 'db.php';


    /* создаем подготовленное выражение */
    if ($stmt = $mysqli->query("SELECT * FROM  `".$mysqli->escape_string($_REQUEST['table'])."` ")) {

        $i = 0;
         /* Выбираем результаты запроса: */
        while( $row = $stmt->fetch_assoc() ){
            $i++;
            $arrData['r_'.$i] = $row;
        }

        if ($_REQUEST['format']=='csv')
        {
            sendHeaderAttachment($_REQUEST['table'].'.csv', 'text/xml');
            $outputBuffer = fopen("php://output", 'w');
            foreach ($arrData as $fields) {
                fputcsv($outputBuffer, $fields);
            }
            fclose($outputBuffer);

        }else if ($_REQUEST['format']=='json')
        {
            sendHeaderAttachment($_REQUEST['table'].'.json', 'text/xml');
            echo json_encode($arrData);

        }else if ($_REQUEST['format']=='xml')
        {
            sendHeaderAttachment($_REQUEST['table'].'.xml', 'text/xml');
            $xml = new SimpleXMLElement('<rootTag/>');
            to_xml($xml, $arrData);
            echo $xml->asXML();

        }


    }else{
        echo 'нет такой таблицы';
    }





<?php




function sendHeaderAttachment($nameFile, $type){

    header('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT');
    header('Cache-Control: no-store, no-cache, must-revalidate');
    header('Cache-Control: post-check=0, pre-check=0', false);
    header('Pragma: no-cache');
    header("Content-type: ".$type);
    header('Content-Disposition: attachment;filename='.$nameFile);


}


function to_xml(SimpleXMLElement $object, array $data)
{
    foreach ($data as $key => $value)
    {
        if (is_array($value))
        {
            $new_object = $object->addChild($key);
            to_xml($new_object, $value);
        }
        else
        {
            $object->addChild($key, $value);
        }
    }
}



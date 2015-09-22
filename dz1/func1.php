<?php
/**
 * User: serov.eu
 * Date: 9/12/15
 * Time: 2:48 AM
 */


function sectionOut($arr, $show=0)
{
    if (!is_array($arr)) return false;

    $out='';
    foreach ($arr as $item)
    {
        $out.='<p>'.htmlentities($item).'</p>';
    }

    if ($show) echo $out;

    return $out;

}

function someOperation($arr, $operation)
{
    $operation=trim($operation);
    $_result = $result='';
    $checkOperaion = ['-','+','*','/'];

    if (!is_array($arr) or !in_array($operation, $checkOperaion)) return false;

    foreach($arr as $imem)
    {
        if (!is_numeric($imem)) return false;
        $_result.=$imem.$operation;
    }
    $exc = '$result ='.trim($_result, $operation).';';
    eval ($exc);
    return $result;
}


function someMathOperation($operation)
{
    $checkOperaion = ['-','+','*','/'];
    $_result = $result='';
    if (!in_array($operation, $checkOperaion)) return false;

    $arr = func_get_args();
    array_shift($arr);

    foreach($arr as $imem)
    {
        if (!is_numeric($imem)) return false;
        $_result.=$imem.$operation;
    }
    $exc = '$result ='.trim($_result, $operation).';';
    eval ($exc);
    return $result;

}


function tabl($row, $col)
{
    if (!preg_match( "/^[0-9]*$/",$row) or !preg_match( "/^[0-9]*$/",$col))
    {
        trigger_error('Natural number only') ;
        return false;
    }

    $row = array_fill(0 , $row , 0);
    $col = array_fill(0 , $col , 0);

    $r = $c = 0;

    $table='<table>';

    foreach ($col as $rowItem)
    {
        ++$r;
        $table.='<tr>';
        foreach ($row as $colItem)
        {
            ++$c;
            $table.='<td> ' .$r * $c.' </td>';
        }
        $table.='</tr>';
        $c = 0;
    }

    $table.='</table>';

    return $table;


}


function myArSort($arr)
{
    if (is_array($arr)) return sort($arr);
    return false;
}


function rangeOfOddNumbers($begin, $end)
{
    if ($begin>$end) return false;
    if (!is_int($begin) or  !is_int($end)) return false;
    if ($begin%2==0) ++$begin;
    echo $begin.'<br />';
    if ($begin <  $end) rangeOfOddNumbers($begin+2, $end);
    return false;
}


function chackPalindrome($str)
{
    $str = mb_convert_case(trim($str), MB_CASE_UPPER, 'UTF-8');
    $newStr='';
    for($i=mb_strlen($str); --$i>=0; )
    {
        $newStr .=mb_substr($str,$i,1);
    }
    if ($newStr==$str) return true;
    return false;
}


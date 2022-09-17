<?php
/*
2) Реализовать функцию сортировки пузырьком
*/


function sortArr($arr)
{
    $size = count($arr) - 1;
    for ($i = $size; $i >= 0; $i--) {
        for ($j = 0; $j <= ($i - 1); $j++)
            if ($arr[$j] > $arr[$j + 1]) {
                $k = $arr[$j];
                $arr[$j] = $arr[$j + 1];
                $arr[$j + 1] = $k;
            }
    }
    return $arr;
}

$arr = [1, 2, 3, 4, 5, 9, 8, 7, 6,11,10];

var_dump(sortArr($arr));

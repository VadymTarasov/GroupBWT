<?php
/*
2) Реализовать функцию сортировки пузырьком
*/

$arr = [1,2,3,4,5,9,8,7,6];


$size = count($arr)-1;
for ($i = $size; $i>=0; $i--) {
    for ($j = 0; $j<=($i-1); $j++)
        if ($arr[$j]>$arr[$j+1]) {
            $k = $arr[$j];
            $arr[$j] = $arr[$j+1];
            $arr[$j+1] = $k;
        }
}

var_dump($arr);

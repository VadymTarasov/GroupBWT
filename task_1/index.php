<?php

/*
1) Задан массив целых чисел. Написать функцию нахождения максимального элемента в массиве.
*/



$arr = [1,2,3,4,5,9,8,7,6];

//print_r(max($arr));

function maxNumber($arr)
{
    $size = count($arr);
    do {
        $swapped = false;
        for ($i = 0; $i < $size - 1; $i++) {

            $some = $arr[$i] < $arr[$i + 1];

            if ($some) {
                $temp = $arr[$i];
                $arr[$i] = $arr[$i + 1];
                $arr[$i + 1] = $temp;
                $swapped = true;
            }
        }
        $size--;
    }
    while ($swapped);
    return $arr[0];
}

print_r(maxNumber($arr));
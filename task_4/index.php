<?php
/*
4) Задан упорядоченный по возрастанию массив.
Реализовать алгоритм бинарного поиска для нахождения значения в массиве.
Вернуть номер элемента или уведомить что такого элемента нет.
*/

function searchValue(int $element, array $data)
{
    $begin = 0;
    $end = count($data) - 1;
    $prev_begin = $begin;
    $prev_end = $end;
    while (true) {
        $position = round(($begin + $end) / 2);

        if (isset($data[$position])) {
            if ($data[$position] == $element) {
                return $position;
            }
            if ($data[$position] > $element) {
                $end = floor(($begin + $end) / 2);
            } elseif ($data[$position] < $element) {
                $begin = ceil(($begin + $end) / 2);
            }
        }
        if ($prev_begin == $begin && $prev_end == $end) {
            return false;
        }
        $prev_begin = $begin;
        $prev_end = $end;
    }
}
$arr = [1,2,3,4,5,6,7,8,9];
$el = 10;
var_dump(searchValue($el,$arr));



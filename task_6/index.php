<?php

$a = "Ava";

function isPalindrome($a)
{


    $a = strtolower($a);
    $b = strrev($a);

    $string_reverse = str_split($b);

    $palindrome = '';

    foreach ($string_reverse as $value) {

        $palindrome .= $value;
    }

    print $palindrome;

    if ($a == $palindrome) {

        print "<br>Palindrome";

    } else {

        print "<br>Not Palindrome";

    }
}

isPalindrome($a);
<?php

class Vector
{
    private $x;
    private $y;


    function __construct($xx)
    {
        $this->x = $xx;

    }

    public function PrintVect()
    {

        for ($i = 0; $i < count($this->x);$i++)
        {
            for($j = 0; $j < count($this->x[$i]);$j++)
            {
                echo $this->x[$i][$j];
            }
            echo "<br/>";
        }


    }

    public function sum($yy)
    {
        $this->y = $yy;

        for ($i = 0; $i < count($this->x);$i++)
        {
            for($j = 0; $j < count($this->x[$i]);$j++)
            {

                echo $this->x[$i][$j]+$this->y[$i][$j];
            }
            echo "<br/>";
        }

    }



}

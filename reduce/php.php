#!/usr/bin/php
<?php
ini_set('memory_limit', '256M');
$limit = 999999;
if (getenv("LIMIT")) {
	$limit = getenv("LIMIT");
}
$array = range(0,$limit);
echo array_sum($array);
echo "\n";
?>

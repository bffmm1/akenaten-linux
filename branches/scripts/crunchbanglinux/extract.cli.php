#!/usr/bin/php
<?

$farr=file("crunchbang-manifest.txt");
foreach ($farr as $item) {
   $var=explode(" ",$item);
?><?=$var[0]."\n";?><?	
} 

?>

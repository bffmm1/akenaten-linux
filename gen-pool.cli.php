#!/usr/bin/php
<?php

for ($i=97;$i<=122;$i++) {
 echo "create pool dir pool/main/".chr($i)."\n";
 mkdir("pool/main/".chr($i), 0744);
}

?>

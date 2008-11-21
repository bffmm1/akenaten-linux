<html>
<title>Ubuntu Repository</title>
<body>
<img src="ubuntuclub-logo.png">
<p>This is a simple ubuntu repository for ubuntu club package, please update your source.list to use it.</p>
<em><p>sudo gedit /etc/apt/sources.list<br>
deb http://thaiopensource.org/ubuntu intrepid main</p></em>
<p>or download and install <a href="/ubuntu/pool/main/u/ubuntuclub-repository_0.1ubuntu1-1_i386.deb">ubuntuclub-repository</a> package.</p>
<p>Thank you</p>
* You can view package list at <a href="http://www.thaiopensource.org/ubuntu/packagelist.txt">packagelist.txt</a>.
<br><br>
<table bgcolor="#BBBBBB" cellpadding="3" cellspacing="1" width="600">
<tr bgcolor="#DDDDDD">
  <th>Package</th>
  <th>Version</th>
  <th>Install</th>
</tr>
<?php

//load packagelist.txt

$farr=file("packagelist.txt");

//var_dump($farr);

foreach ($farr as $item) {
  $xitem=split("_",$item);
?>
<tr bgcolor="#FFFFFF">
  <td><?=$xitem[0]; ?></td>
  <td><?=$xitem[1]; ?></td>
  <td align="center"><a href="apt:<?=$xitem[0];?>"><input type="button" value="Install" ></a></td>
</tr>
<?
}

?>
</table>
<br/>
<p>This software released under GNU/General Public License Version 2 or later.
</body>
</html>

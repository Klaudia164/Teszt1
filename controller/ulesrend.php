
<?php
// form feldolgozása
require 'model/Hianyzo.php';
require 'model/Adminok.php';

$hianyzo = new Hianyzo();

if(!empty($_POST["hianyzo_id"])) {
	$hianyzo->set_id($_POST["hianyzo_id"], $conn);
}
elseif(!empty($_GET['nem_hianyzo'])) {
	$hianyzo->remove_id($_GET['nem_hianyzo'], $conn);
}

$hianyzok = $hianyzo->lista($conn);

$admin = new Adminok();

$adminok = $admin->lista($conn);

$en = 11;
if(!empty($_SESSION["id"])) $en = $_SESSION["id"];

$tanar = 15;

$tanuloIdk = $tanulo->tanulokListaja($conn);


include 'view/ulesrend.php';
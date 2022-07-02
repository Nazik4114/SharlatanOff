<?php
$dsn = "mysql:host=localhost;dbname=sharlatanov";
$user='root';
$password="";


try {
    $dbh = new PDO($dsn, $user, $password);
} catch (PDOException $error) {
    error_log("DB connection failed." . $error->getMessage());
    die("Подальша робота програми неможлива");
}

$sql = "INSERT INTO scammers (card, mobile, name, socials, search_key, is_active, title, body, created_at) VALUES (:card, :mobile, :name, :socials, :search_key, :is_active, :title, :body ,:created_at);";

$sth = $dbh->prepare($sql);
if(!isset($_POST['card'])){
    die("");
}
else{
    $sth->execute(array(
        ':card' => $_POST['card'],
        ':mobile' => $_POST['number'],
        ':name' => $_POST['fio'],
        ':socials' => $_POST['social'],
        ':search_key' => $_POST['card'].".".$_POST['number'].".".$_POST['fio'],
        ':is_active' => 1,
        ':title' => $_POST['title'],
        ':body' => $_POST['text'],
        ':created_at'=>date("Y-m-d H:i:s"),
    ));
}
require_once __DIR__."\index.php";
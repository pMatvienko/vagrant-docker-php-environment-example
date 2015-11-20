<?php

$pdo = new PDO(
    'mysql:host=mysql_db;dbname=mysql',
    'root',
    'root'
);
echo '<pre>';
var_dump($pdo/*, $pdo->query('SHOW TABLES;')->fetchAll()*/);

echo '</pre><hr /><pre>';

$connection = new MongoClient( "mongodb://mongo_db" );

var_dump($connection);

echo "<pre><hr />";
phpinfo();
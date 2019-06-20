<?php

define("DB_HOST", "localhost");
define("DB_USER", "root");
define("DB_PASS", "admin");
define("DB_NAME", "blog_data");


function db_connect() {
    $connection = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    return $connection;
}


$conn = db_connect();

?>
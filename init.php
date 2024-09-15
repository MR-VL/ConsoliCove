<?php
    require_once 'database.php';

    putenv("DB_HOST=localhost");
    putenv("DB_USER=root");
    putenv("DB_PASSWORD=");
    putenv("DB_NAME=blackjack");

    $database = new Database(
        getenv('DB_HOST'),
        getenv('DB_USER'),
        getenv('DB_PASSWORD'),
        getenv('DB_NAME')
    );

    try{
        global $connect;
        $connect = $database->getConnection();
    }catch(PDOException $e){
        echo "<h1>FATAL ERROR: Unable to connect to database</h1>". $e->getMessage();
        die("Database Connection Failed");
    }
?>
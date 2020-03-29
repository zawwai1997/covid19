<?php

/* error_reporting(0);
ini_set('display_errors', 0); */

class User {
    protected $pdo;

    public function __construct($pdo) {
        $this->pdo = $pdo;
    }

    public function login($table, $email,$password)
    {
        $query = "SELECT * FROM $table WHERE email = :email AND password= :password";

        $stmt = $this->pdo->prepare($query);
        $stmt->bindParam(':email', $email, PDO::PARAM_STR);
        $stmt->bindParam(':password', $password, PDO::PARAM_STR);
        $stmt->execute();

        return $stmt->rowCount();
    }

    public function checkInput($data)
    {
        $data = trim($data);
        $data = htmlspecialchars($data);
        $data = stripcslashes($data);
        return $data;
    } 
    public function insert($data)
    {
        
        $query = "INSERT INTO `person`(`generate_code`) VALUES ('$data')";

        $stmt = $this->pdo->prepare($query);
    
        $stmt->execute();

        return $stmt->rowCount();
    }   
}
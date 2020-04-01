<?php

require_once '../core/init.php';

if (isset($_POST['btnLogin']) && $_POST['tok'] == $_SESSION['token']) {


    $email = $user->checkInput($_POST['email']);
    $password = $user->checkInput($_POST['password']);

    $password = hash("sha512", $password);

    $table = "Admins";

    $rowCount = $user->login($table,  $email,$password);
    global $pre;
    if ($rowCount == 1)
    {   // login success
        $_SESSION['email'] = $email;
        header("location: ../add-district.php");
        exit();
    } else {   
        //login fail
        header("location: ../login.php");
        flash('success', "Incorrect username or password.");
        exit();
    }

} else {
    session_destroy();
    header("location: ../error/404.php");
    exit();

}
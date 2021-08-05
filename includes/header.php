<?php
require "includes/config.php";
require "includes/classes/User.php";
require "includes/classes/Artist.php";
require "includes/classes/Album.php";
require "includes/classes/Song.php";


$db = new Database();
$con = $db->getConnString();



if (isset($_SESSION['userLoggedIn'])) {
    $sessionusername = $_SESSION['userLoggedIn'];
    $userLoggedIn = new User($con,  $_SESSION['userLoggedIn']);

    //TODO: Check if username exists
    $checkUsernameQuery = mysqli_query($con, "SELECT username FROM users WHERE username = '$sessionusername'");
    if (mysqli_num_rows($checkUsernameQuery) != 0) {

        if ($userLoggedIn->getcheckuser()) {
            $username = $userLoggedIn->getUsername();
            $userId = $userLoggedIn->getUserId();
            $userrole = $userLoggedIn->getUserrole();
            $userRegstatus = $userLoggedIn->getUserStatus();
            echo "<script>userLoggedIn = '$username'; </script>";
        } else {
            $username = $sessionusername;
            $userId = $sessionusername;
            $userrole = $sessionusername;
            $userRegstatus = "trial";
            echo "<script>userLoggedIn = '$sessionusername'; </script>";
        }
    } else {
        $userLoggedIn = new User($con,  $_SESSION['userLoggedIn']);
        if ($userLoggedIn->getcheckuser()) {
            $username = $userLoggedIn->getUsername();
            $userId = $userLoggedIn->getUserId();
            $userrole = $userLoggedIn->getUserrole();
            $userRegstatus = $userLoggedIn->getUserStatus();
            echo "<script>userLoggedIn = '$username'; </script>";
        } else {
            $username = 'Guest';
            $username = $username;
            $userId = $username;
            $userrole = $username;
            $userRegstatus = "trial";
            echo "<script>userLoggedIn = '$sessionusername'; </script>";
        }
    }
} elseif (isset($_COOKIE['userID']) && ($_COOKIE['userID'] != '')) {

    //get cookie value and assign to varible
    $cookieusername = $_COOKIE['userID'];
    //TODO: Check if username exists
    $checkUsernameQuery = mysqli_query($con, "SELECT username FROM users WHERE username = '$cookieusername'");

    if (mysqli_num_rows($checkUsernameQuery) != 0) {
        //set sessionbased on cookie -- linked to nowPlayingcontainer to work
        $_SESSION['userLoggedIn'] = $cookieusername;

        $userLoggedIn = new User($con, $cookieusername);    
    
        if ($userLoggedIn->getcheckuser()) {
            $username = $userLoggedIn->getUsername();
            $userId = $userLoggedIn->getUserId();
            $userrole = $userLoggedIn->getUserrole();
            $userRegstatus = $userLoggedIn->getUserStatus();
            echo "<script>userLoggedIn = '$username'; </script>";
        } else {
            $username = 'Guest';
            $username = $username;
            $userId = $username;
            $userrole = $username;
            $userRegstatus = "trial";
            echo "<script>userLoggedIn = '$username'; </script>";
        }
    } else {
      
    }
} else {

    $username = 'Guest';
    $_SESSION['userLoggedIn'] = $username;

    $userLoggedIn = new User($con, $username);

    if ($userLoggedIn->getcheckuser()) {
        $username = $userLoggedIn->getUsername();
        $userId = $userLoggedIn->getUserId();
        $userrole = $userLoggedIn->getUserrole();
        $userRegstatus = $userLoggedIn->getUserStatus();
        echo "<script>userLoggedIn = '$username'; </script>";
    } else {
        $username = $username;
        $userId = $username;
        $userrole = $username;
        $userRegstatus = "trial";
        echo "<script>userLoggedIn = '$username'; </script>";
    }
}


?>



<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-YNG3P75VXH"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'G-YNG3P75VXH');
    </script>

    <!-- <script data-ad-client="ca-pub-7169073185899705" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script> -->


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Mwonyaa Music</title>

    <!-- favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/images/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/images/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon-16x16.png">
    <meta name="theme-color" content="#140721" />

    <link rel="manifest" href="assets/images/site.webmanifest">
    <link rel="mask-icon" href="assets/images/safari-pinned-tab.svg" color="#6b0784">
    <link rel="shortcut icon" href="assets/images/favicon.ico">
    <meta name="msapplication-TileColor" content="#6b0784">
    <meta name="msapplication-config" content="assets/images/browserconfig.xml">


    <!-- favicon end  -->

    <script>
        // service worker supported by browser
        if ('serviceWorker' in navigator) {
            navigator.serviceWorker.register('sw.js')
        };
    </script>


    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900italic,900' rel='stylesheet' type='text/css'>
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>
    <link rel='stylesheet' href='https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/8.3.0/nouislider.min.css'>

    <link rel="stylesheet" href="staticFiles/css/style.css">
    <!-- <link rel="stylesheet" href="https://d1d1i04hu392ot.cloudfront.net/staticFiles/css/style.css"> -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- <script src="https://d1d1i04hu392ot.cloudfront.net/staticFiles/js/MainScript.js"></script> -->
    <script src="staticFiles/js/MainScript.js"></script>

    <script type="module" src="https://unpkg.com/ionicons@5.4.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule="" src="https://unpkg.com/ionicons@5.4.0/dist/ionicons/ionicons.js"></script>

    <!-- <script src="https://unpkg.com/wavesurfer.js"></script> -->

</head>

<body>



    <?php

    include("includes/headingContainer.php");

    ?>

    <section class="content">

        <?php

        include("includes/navBarContainer.php");

        ?>

        <div class="content__middle">
            <div class="loadercentered">
                <div class="lds-facebook">
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </div>
            <div class="showdialogbox">
                <!-- alertmessage -->
            </div>
            <div class="artist is-verified d-none" id="mainContent">
<?php
session_start();
if (!isset($_SESSION['email'])) {
    header('location:login.php');
}


?>




<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard|moonelearning</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

    <!--=======fontawesome css========-->
    <link rel="stylesheet" href="./css/all.min.css">
    <!--=======styles css========-->
    <link rel="stylesheet" href="../css/styles.css">

    <style>
        .header {
            display: flex;
        }

        @media only screen and (max-width: 600px) {
            .header {
                display: block;
            }
        }
    </style>
</head>

<body>




    <div class="container main-dash ">

        <div class="start-dash">

            <div class="page-wrapper chiller-theme toggled ">
                <a id="show-sidebar" class="btn btn-sm btn-primary" href="#">
                    <i class="fas fa-bars"></i>
                </a>
                <nav id="sidebar" class="sidebar-wrapper pt-2">
                    <div class="sidebar-content">
                        <div class="sidebar-brand">
                            <a href="#">Moon Academy</a>
                            <div id="close-sidebar">
                                <i class="fas fa-times text-dark"></i>
                            </div>
                        </div>
                        <div class="row sidebar-header">
                            <div class="col-2 user-pic">
                                <img class="img-responsive img-rounded" src="../images/university-avatar-education-icon-vector-1979314(1).jpg" alt="User picture">
                            </div>
                            <div class="user-info">
                                <span class="user-name text-dark"> <b> <?php echo $_SESSION['fname'] . " " . $_SESSION['lname'] ?> </b></span>
                                <span class="user-role">Moderator</span>
                                <span class="user-status">
                                    <i class="fa fa-circle"></i>
                                    <span>Online</span>
                                </span>
                            </div>
                        </div>
                        <!-- sidebar-header  -->
                        <div class="sidebar-search">
                            <div>
                                <div class="input-group">
                                    <input type="text" class="form-control search-menu" placeholder="Search course..">
                                    <div class="input-group-append">
                                        <span class="input-group-text">
                                            <i class="fa fa-search" aria-hidden="true"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- sidebar-search  -->
                        <div class="sidebar-menu">
                            <ul>
                                <li class="header-menu">
                                    <span>General</span>
                                </li>
                                <li class="">
                                    <a href="./mdashboard.php">
                                        <i class="fa fa-tachometer-alt"></i>
                                        <span>Dashboard</span>

                                    </a>

                                </li>
                                <!-- 
                                    <li class="">
                                    <a href="./eventscalendar.php">
                                        <i class="fa fa-shopping-cart"></i>
                                        <span>Events </span>
                                        <span class="badge badge-pill badge-danger">3</span>
                                    </a>

                                </li>
                                
                                <li class="sidebar-dropdown">
                                    <a href="#">
                                        <i class="far fa-gem"></i>
                                        <span>Dapartments</span>
                                    </a>
                                    <div class="sidebar-submenu">
                                        <ul>
                                            <li>
                                                <a href="#">Ict</a>
                                            </li>

                                        </ul>
                                    </div>
                                </li>
                                 -->
                                <li class="">
                                    <a href="../Sections/enrollcourse.php">
                                        <i class="fa fa-chart-line"></i>
                                        <span>All Courses</span>
                                    </a>
                                    <div class="sidebar-submenu">
                                        <ul>
                                            <li>
                                                <a href="#">Web Development</a>
                                            </li>
                                            <li>
                                                <a href="#">Android Programming</a>
                                            </li>
                                            <li>
                                                <a href="#">Networking</a>
                                            </li>
                                            <li>
                                                <a href="#">Graphic Design</a>
                                            </li>

                                        </ul>
                                    </div>

                                <li class="sidebar-dropdown">
                                    <a href="#">
                                        <i class="fa fa-file"></i>
                                        <span>Examinations</span>
                                    </a>

                                    <div class="sidebar-submenu">
                                        <ul>

                                            <li>
                                                <a href="pexams.php">Add exam</a>
                                            </li>
                                        </ul>

                                    </div>
                                </li>

                                <li class="sidebar-dropdown">
                                    <a href="#">
                                        <i class="fa fa-globe"></i>
                                        <span>Activities</span>
                                    </a>
                                    <div class="sidebar-submenu">
                                        <ul>
                                            <li>
                                                <a href="#">Chess club</a>
                                            </li>
                                            <li>
                                                <a href="#">code challenge</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="sidebar-dropdown">
                                    <a href="#">
                                        <i class="fa fa-globe"></i>
                                        <span>News and Announcements</span>
                                    </a>
                                    <div class="sidebar-submenu">
                                        <ul>


                                            <li>
                                                <a href="pnews.php"> News</a>
                                            </li>

                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#exampleModal">Post News</a>
                                            </li>
                                            
                                        </ul>
                                    </div>
                                </li>

                        </div>
                        <!-- sidebar-menu  -->
                    </div>
                    <!-- sidebar-content  -->
                    <div class="sidebar-footer">
                        <!-- 
                            <a href="#">
                            <i class="fa fa-bell"></i>
                            <span class="badge badge-pill badge-warning notification">3</span>
                        </a>
                        <a href="#">
                            <i class="fa fa-envelope"></i>
                            <span class="badge badge-pill badge-success notification">7</span>
                        </a>
                        -->
                        <a href="#" data-toggle="modal" data-target="#editprofile">
                            <i class="fa fa-cog"></i>

                        </a>
                        <a href="../Includes/logout.php">
                            <i class="fa fa-power-off"></i>
                        </a>
                    </div>
                </nav>

                <!--============= END NAVBAR ============ -->
                <!-- sidebar-wrapper  -->

                <!-- PAGE CONTENT DASHBOARD -->


                <div class="page-content">
                    <div class="container">
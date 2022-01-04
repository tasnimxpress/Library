<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Page</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"crossorigin="anonymous"></script>

    <!-- Poppins Font -->
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>

    <!-- ======= Icons used for dropdown (you can use your own) ======== -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

    <!-- Main CSS -->
    <link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>

    <div class="maintop fullmaintop">
        <div class="topcontact">
          <div class="gbmail">
            <i class="fas fa-envelope"></i><span>admin@gonouniversity.edu.bd</span>
          </div>
          <div class="gbcontact">
            <i class="fas fa-phone"></i>
            <span>01677697759</span>
          </div>
        </div>
          <a href="" class="catalog">OPAC</a>
      </div>


<!-- ==================== HEADER START ===================== -->
<header id="mainheader" class="topheader fulltopheader">
    <div class="container">
      <nav class="navbar navbar-expand-lg adminnav">
        <div class="container-fluid">
          <div class="navbar-brand adminlogo">
            <img src="./assets/img/GBlogo.png" alt="/GBlogo">
          </div>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
          </button>
          <div class="collapse navbar-collapse mainmenu" id="navbarSupportedContent">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.php">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="services.php">Services</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Resources
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="allbook.php">Book</a></li>
                  <li><a class="dropdown-item" href="allebook.php">Ebook</a></li>
                  <li><a class="dropdown-item" href="alljournal.php">Journal</a></li>
                  <li><a class="dropdown-item" href="allthesis.php">Thesis</a></li>
                  <li><a class="dropdown-item" href="allassignment.php">Assignment</a></li>
                  <li><a class="dropdown-item" href="allreport.php">Report</a></li>
                  <li><a class="dropdown-item" href="allvideos.php">Videos</a></li>
                  <li><a class="dropdown-item" href="allgallery.php">Gallery</a></li>
                  <li><a class="dropdown-item" href="allcddvd.php">CD/DVD</a></li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="modal" data-bs-target="#askLibrarian" href="">Ask Librarian</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="staff.php" tabindex="-1" aria-disabled="true">Staff</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#" tabindex="-1" aria-disabled="true">
                  <input type="text" class="searchbox" placeholder="Search">
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="profile.php" tabindex="-1" aria-disabled="true">Profile</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="landing.php" tabindex="-1" aria-disabled="true">Log Out</a>
              </li>
            </ul>
          </div>
    
            <div class="icongroup">
              <div class="iconsall searchbar">
                <input type="text" class="searchbox" placeholder="Search">
                <div class="searchicon">
                  <i class="fas fa-search headersearch"></i>
                </div>
              </div>
          
              <div class="iconsall dropdown">
                  <i class="fas fa-user" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"></i>
                <ul class="dropdown-menu profilelogout" aria-labelledby="dropdownMenuButton1">
                  <li><a class="dropdown-item" href="profile.php">Profile</a></li>
                  <li><a class="dropdown-item" href="landing.php">Log Out</a></li>
                </ul>
              </div>
    
              <div class="messages">
    
                <div class="panel panel-default">
                  <div class="panel-body">
                    <!-- Single button -->
                    <div class="btn-group pull-right top-head-dropdown">
                        <i class="fas fa-bell" id="dropdownMenutyy" data-bs-toggle="dropdown" aria-expanded="false"><span class="notifycount">3+</span></i>
                      <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenutyy">
                        <li>
                          <a href="#" class="top-text-block">
                            <div class="top-text-heading">You have <b>3 new themes</b> trending</div>
                            <div class="top-text-light">15 minutes ago</div>
                          </a> 
                        </li>
                        <li>
                          <a href="#" class="top-text-block">
                            <div class="top-text-heading">New asset recommendations in <b>Gaming Laptop</b></div>
                            <div class="top-text-light">2 hours ago</div>
                          </a> 
                        </li>
                        <li>
                          <a href="#" class="top-text-block">
                            <div class="top-text-heading">New asset recommendations in <b>5 themes</b></div>
                            <div class="top-text-light">4 hours ago</div>
                          </a> 
                        </li>
                        <li>
                          <a href="#" class="top-text-block">
                            <div class="top-text-heading">Assets specifications modified in themes</div>
                            <div class="top-text-light">4 hours ago</div>
                          </a> 
                        </li>
                        <li>
                          <a href="#" class="top-text-block">
                            <div class="top-text-heading">We crawled <b>www.dell.com</b> successfully</div>
                            <div class="top-text-light">5 hours ago</div>
                          </a> 
                        </li>
                        <li>
                          <a href="#" class="top-text-block">
                            <div class="top-text-heading">Next crawl scheduled on <b>10 Oct 2016</b></div>
                            <div class="top-text-light">6 hours ago</div>
                          </a> 
                        </li>
                        <li>
                          <a href="#" class="top-text-block">
                            <div class="top-text-heading">You have an update for <b>www.dell.com</b></div>
                            <div class="top-text-light">7 hours ago</div>
                          </a> 
                        </li>
                        <li>
                          <a href="#" class="top-text-block">
                            <div class="top-text-heading"><b>"Gaming Laptop"</b> is now trending</div>
                            <div class="top-text-light">7 hours ago</div>
                          </a> 
                        </li>
                        <li>
                          <a href="#" class="top-text-block">
                            <div class="top-text-heading">New asset recommendations in <b>Gaming Laptop</b></div>
                            <div class="top-text-light">7 hours ago</div>
                          </a> 
                        </li>
                       <li>
                        <div class="loader-topbar"></div>
                       </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
      </nav>
    </div>
    </header>
    
    <!-- ==================== HEADER END ===================== -->
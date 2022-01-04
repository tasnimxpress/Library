<?php include "./inc/header.php" ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ</title>
    
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

</div>


<body>
    <div id="maindash" class="heremainpart">
        <section class="container extramainpart">

            <div class="faqtitle">Frequently Asked Questions</div>
            <div class="faq-container">
              <div class="faq active">
                <div class="faq-title">How do we borrow materials from library?</div>
                <p class="faq-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Sapiente et aspernatur doloribus dignissimos necessitatibus! Provident aliquid ex magni voluptate, suscipit nobis id tempora quae voluptas veritatis dolore quidem accusamus voluptatibus!</p>
                <button class="faq-toggle">
                  <i class="fas fa-chevron-down"></i>
                  <i class="fas fa-times"></i>
                </button>
              </div>
              <div class="faq">
                <div class="faq-title">
                    What kind of services are available to me?
                </div>
                <p class="faq-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Sapiente et aspernatur doloribus dignissimos necessitatibus! Provident aliquid ex magni voluptate, suscipit nobis id tempora quae voluptas veritatis dolore quidem accusamus voluptatibus!</p>
                <button class="faq-toggle">
                  <i class="fas fa-chevron-down"></i>
                  <i class="fas fa-times"></i>
                </button>
              </div>
        
              <div class="faq">
                <div class="faq-title">
                    How do I login to Library?
                </div>
                <p class="faq-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Sapiente et aspernatur doloribus dignissimos necessitatibus! Provident aliquid ex magni voluptate, suscipit nobis id tempora quae voluptas veritatis dolore quidem accusamus voluptatibus!</p>
                <button class="faq-toggle">
                  <i class="fas fa-chevron-down"></i>
                  <i class="fas fa-times"></i>
                </button>
              </div>
        
              <div class="faq">
                <div class="faq-title">
                    What are the fine for late materials?
                </div>
                <p class="faq-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Sapiente et aspernatur doloribus dignissimos necessitatibus! Provident aliquid ex magni voluptate, suscipit nobis id tempora quae voluptas veritatis dolore quidem accusamus voluptatibus!</p>
                <button class="faq-toggle">
                  <i class="fas fa-chevron-down"></i>
                  <i class="fas fa-times"></i>
                </button>
              </div>
        
              <div class="faq">
                <div class="faq-title">What library resources are available?</div>
                <p class="faq-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Sapiente et aspernatur doloribus dignissimos necessitatibus! Provident aliquid ex magni voluptate, suscipit nobis id tempora quae voluptas veritatis dolore quidem accusamus voluptatibus!</p>
                <button class="faq-toggle">
                  <i class="fas fa-chevron-down"></i>
                  <i class="fas fa-times"></i>
                </button>
              </div>

              <div class="faq">
                <div class="faq-title">How can I find an ebook?</div>
                <p class="faq-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Sapiente et aspernatur doloribus dignissimos necessitatibus! Provident aliquid ex magni voluptate, suscipit nobis id tempora quae voluptas veritatis dolore quidem accusamus voluptatibus!</p>
                <button class="faq-toggle">
                  <i class="fas fa-chevron-down"></i>
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
                
        </section>
    </div>




    
    
  
  <!-- Ask Librarian -->
     <!-- Approve Modal -->
     <div class="modal fade" id="askLibrarian" tabindex="-1" aria-labelledby="askLibrarianLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content askcontent">
        <div class="mainaskcontent">
          <div class="modal-header askheader">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body askbody"></div>
          <div class="modal-footer typesend askfoter">
            <div class="input-group">
              <input type="text" class="form-control type" placeholder="Type Message..." aria-label="Type Message..." aria-describedby="addon-wrapping">
              <span class="input-group-text send" id="addon-wrapping"><i class="fas fa-paper-plane"></i></span>
            </div>
          </div>
        </div>
        </div>
      </div>
    </div>
    
  
      
  <!-- JS file here -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

  <script>
      // FAQ
        const toggles = document.querySelectorAll(".faq-toggle");

        toggles.forEach((toggle) => {
        toggle.addEventListener("click", () => {
            toggle.parentNode.classList.toggle("active");
        });
        });
  </script>
  
  <script src="./assets/js/main.js"></script>
  
  </body>
  </html>

  <?php include "./inc/footer.php" ?>
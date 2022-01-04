<?php include "./inc/header.php" ?>
<?php
  include "../classes/bookClass.php";
  $bk = new BookClasses();
  $getBooks = $bk->getBooks();

  if ($_SERVER['REQUEST_METHOD']=="GET" && isset($_GET['delete'])) {

    if ($_GET['delete']!=null) {
        $editBookResult = $bk->deleteBookIntoDB($_GET['delete']);
    } else {
        echo "<script>window.location.href = '404.php';</script>";
    }
  }
?>
<div class="dashboadheader" id="maindash">
    <div class="dashnav">
      <label for="nav-toggle">
        <span class="fas fa-bars"></span>
      </label>
      Book List
    </div>
    <a class="nav-link" href="index.php"><i class="fas fa-home"></i> Home</a>
  </div>


      <main>

<!-- stylesheet need to change-->

      <style>
    body{
        font-family: Arail, sans-serif;
    }
  /* Formatting search box */
    .search-box{
        width: 300px;
        position: relative;
        display: inline-block;
        font-size: 14px;
    }
    .search-box input[type="text"]{
        height: 32px;
        padding: 5px 10px;
        border: 1px solid #CCCCCC;
        font-size: 14px;
    }
    .result{
        position: absolute;        
        z-index: 999;
        top: 100%;
        left: 0;
    }
    .search-box input[type="text"], .result{
        width: 100%;
        box-sizing: border-box;
    }
    /* Formatting result items */
    .result p{
        margin: 0;
        padding: 7px 10px;
        border: 1px solid #CCCCCC;
        border-top: none;
        cursor: pointer;
    }
    .result p:hover{
        background: #f2f2f2;
    }
</style>





<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
    $('.search-box input[type="text"]').on("keyup input", function(){
        /* Get input value on change */
        var inputVal = $(this).val();
        var resultDropdown = $(this).siblings(".result");
        if(inputVal.length){
            $.get("backend-search.php", {title: inputVal}).done(function(data){
                // Display the returned data in browser
                resultDropdown.html(data);
            });
        } else{
            resultDropdown.empty();
        }
    });
    
    // Set search input value on click of result item
    $(document).on("click", ".result p", function(){
        $(this).parents(".search-box").find('input[type="text"]').val($(this).text());
        $(this).parent(".result").empty();
    });
});
</script>
</head>
<body>
    <div class="search-box">
        <input type="text" autocomplete="off" placeholder="Search..." />
        <div class="result"></div>
    </div>


<!--Search end -->



      <!--
        <div class="input-group maingroup">
            <input type="text" class=" form-control searchmain">
            <span class="searchicon"><i class="fas fa-search"></i></span>
          </div>
-->

          <div class="table-responsive scroll">
            <table width="100%">
            <thead>
              <tr>
                <th scope="col">Cover</th>
                <th scope="col">Title</th>
                <th scope="col">Author</th>
                <th scope="col">Category</th>
                <th scope="col">ISBN</th>
                <th scope="col">Book ID</th>
                <th scope="col">Publisher</th>
                <th scope="col">Number of Copy</th>
                <th scope="col">Edition</th>
                <th scope="col">Publish Year</th>
                <th scope="col">Actions</th>
  
              </tr>
            </thead>
            <tbody>
              <?php
                if ($getBooks) {
                  while ($book = $getBooks->fetch_assoc()) {
              ?>
              <tr>
                <td data-label="Cover"><img src="<?php echo $book['addedBy']=='Teacher'? '../'.$book['image']:$book['image']; ?>" alt="<?php echo $book['title']; ?>"></td>
                <td data-label="Title"><a href="bookde.php?id=<?php echo $book['id']; ?>"><?php echo $book['title']; ?></a></td>
                <td data-label="Author"><?php echo $book['author']; ?></td>
                <td data-label="Category"><?php echo $book['dept']; ?></td>
                <td data-label="ISBN"><?php echo $book['isbn']; ?></td>
                <td data-label="Book ID"><?php echo $book['bookid']; ?></td>
                <td data-label="Publisher"><?php echo $book['publisher']; ?></td>
                <td data-label="Number of Copy"><?php echo $book['quantity']; ?></td>
                <td data-label="Edition"><?php echo $book['edition']; ?></td>
                <td data-label="Publish Year"><?php echo $book['releaseDate']; ?></td>
                <td data-label="Publish Year">
                    <a class="btn btnsave" href="editbook.php?id=<?php echo $book['id']; ?>"><i class="fas fa-edit"></i></a>
                    <a class="btn btncancel" href="?delete=<?php echo $book['id']; ?>"><i class="fas fa-trash-alt"></i></a>
                </td>
              </tr>
              <?php
                  }
                }
              ?>
            </tbody>
  
          </table>
          </div> 

      </main>
      <?php include "./inc/footer.php" ?>
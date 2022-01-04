
<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
mysqli_report(MYSQLI_REPORT_ERROR|MYSQLI_REPORT_STRICT);

$link = mysqli_connect("localhost", "root", "", "libmanage");


 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
if(isset($_REQUEST["title"])){
    // Prepare a select statement
    $sql = "SELECT * FROM tbl_book WHERE title LIKE ?";
    
    if($stmt = mysqli_prepare($link, $sql)){
        // Bind variables to the prepared statement as parameters
        mysqli_stmt_bind_param($stmt, "s", $param_title);
        
        // Set parameters
        $param_title = $_REQUEST["title"] . '%';
        
        // Attempt to execute the prepared statement
        if(mysqli_stmt_execute($stmt)){
            $result = mysqli_stmt_get_result($stmt);
            
            // Check number of rows in the result set
            if(mysqli_num_rows($result) > 0){
                // Fetch result rows as an associative array
                while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
                    echo "<p>" . $row["title"] . "</p>";
                }
            } else{
                echo "<p>No matches found</p>";
            }
        

        }
        else{
            echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
        }
    }
     


    
            
        

    


    // Close statement
    mysqli_stmt_close($stmt);
}
 
// close connection
mysqli_close($link);
?>
<?php include "./inc/header.php" ?>
<?php
  include "../classes/userListClass.php";
  $bk = new UserListClasses();
  $getTechers = $bk->userList('Student');

  if ( isset($_GET['id']) && isset($_GET['action'])) {
    $id =$_GET['id'];
    $action =$_GET['action'];
    echo $getStatus = $bk->userStatusUpdate($id,$action,'Student');

  }
?>
<div class="dashboadheader" id="maindash">
    <div class="dashnav">
      <label for="nav-toggle">
        <span class="fas fa-bars"></span>
      </label>
      Book List
    </div>
    <a class="nav-link" href="/"><i class="fas fa-home"></i> Home</a>
  </div>


      <main>
        <div class="input-group maingroup">
            <input type="text" class=" form-control searchmain">
            <span class="searchicon"><i class="fas fa-search"></i></span>
          </div>

          <div class="table-responsive scroll">
            <table width="100%">
            <thead>
              <tr>
                <th scope="col">Cover</th>
                <th scope="col">Name</th>
                <th scope="col">Username</th>
                <th scope="col">Department</th>
                <th scope="col">Batch</th>
                <th scope="col">Semester</th>
                <th scope="col">Roll</th>
                <th scope="col">Valid Date</th>
                <th scope="col">Phone</th>
                <th scope="col">Actions</th>
  
              </tr>
            </thead>
            <tbody>
              <?php
                if ($getTechers) {
                  while ($tech = $getTechers->fetch_assoc()) {
              ?>
              <tr>
                <td data-label="Cover"><img src="<?php echo '../'.$tech['image']; ?>" alt="<?php echo $tech['name']; ?>"></td>
                <td data-label="Title"><a href="bookde.php?id=<?php echo $tech['id']; ?>" disabled><?php echo $tech['name']; ?></a></td>
                <td><?php echo $tech['username']; ?></td>
                <td><?php echo $tech['department']; ?></td>
                <td><?php echo $tech['batch']; ?></td>
                <td><?php echo $tech['semester']; ?></td>
                <td><?php echo $tech['roll']; ?></td>
                <td><?php echo $tech['validDate']; ?></td>
                <td><?php echo $tech['phone']; ?></td>
                <td>
                  <?php
                    if ($tech['status']==0) {
                    
                  ?>
                  <a class="btn btn-info" href="?id=<?php echo $tech['id'] ?>&& action=active">Approve</a>
                  <?php
                    
                    } else {
                  ?>
                  <a class="btn btn-danger" href="?id=<?php echo $tech['id'] ?>&&action=block">Block</a>
                  <?php
                    
                    }
                  ?>
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
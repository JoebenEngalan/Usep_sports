<?php
include('includes/config.php');

if(isset($_POST['submit']))
  {    
  $itemname=$_POST['itemname'];
  $description=$_POST['description'];
  $category=$_POST['category'];
  $quantity=$_POST['quantity'];
  $status=1;

  if( empty($itemname) || empty($description) || empty($category) || empty($quantity) )
  {
    {echo "<script type= 'text/javascript'>alert('Empty Fields.');</script>";}  
  }
  else
  {
  
    $sql= "INSERT INTO equipment (ItemName,Description,Category,quantity,status) 
            VALUES(:itemname,:description,:category,:quantity,:status)";

    $query = $dbh->prepare($sql);

    $query->bindParam(':itemname',$itemname,PDO::PARAM_STR);
    $query->bindParam(':description',$description,PDO::PARAM_STR);
    $query->bindParam(':category',$category,PDO::PARAM_STR);
    $query->bindParam(':quantity',$quantity,PDO::PARAM_STR);
    $query->bindParam(':status',$status,PDO::PARAM_STR);
    $query->execute();
    $lastInsertId = $dbh->lastInsertId();
    if($lastInsertId)
      {
      echo "<script>alert('You successfully added an item!');</script>";
      
      }
      else 
      {
      echo "<script>alert('Something went wrong. Please try again');</script>";
      }
    }
  }
?>

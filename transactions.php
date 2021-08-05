<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaction History</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/table.css">
    <link rel="stylesheet" type="text/css" href="css/navbar.css">
    <style type="text/css">
    body{
            background-color: #FFC0CB;
        }
    </style>
</head>

<body>

<?php
  include 'navbar.php';
?>

	<div class="container">
        <h2 class="text-center pt-4">Transaction History</h2>
       <br>
       <div class="table-responsive-sm">
    <table class="table table-hover table-striped table-condensed table-bordered">
        <thead>
            <tr>
                <th class="text-center">S.No</th>
                <th class="text-center">Sender Name</th>
                <th class="text-center">Receiver Name</th>
                <th class="text-center">Amount</th>
                <th class="text-center">Date & Time</th>
            </tr>
        </thead>
        <tbody>
        <?php
            include 'config.php';
            $sql ='select * from transactions';
            $query =mysqli_query($conn, $sql);
            while($rows = mysqli_fetch_assoc($query))
            {
        ?>

            <tr>
            <td class="py-2"><?php echo $rows['S.No']; ?></td>
            <td class="py-2"><?php echo $rows['SenderName']; ?></td>
            <td class="py-2"><?php echo $rows['ReceiverName']; ?></td>
            <td class="py-2"><?php echo $rows['Amount']; ?> </td>
            <td class="py-2"><?php echo $rows['Date&Time']; ?> </td>
            </tr>
                
        <?php
            }
        ?>
        </tbody>
    </table>
    </div>
</div>
<center><h2>THIS IS THE TRANSACTION HISTORY WHICH CONTAINS THE INFORMATION OF THE OF THE TRANSACTIONS TRANSFERRED BETWEEN CUSTOMERS</h2></center>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
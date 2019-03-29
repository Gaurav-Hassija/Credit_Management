<?php
require_once("database.php");
?>
<html>
<head><style>
        table,td,th{
            border:3px solid black;
            border-collapse: collapse;
            font-weight: bolder;
        }
    thead{
        font-size: 35px;
        text-align: center;
    }
    th{
        padding: 12px;
    }
        td{
            padding:12px;
            text-align:center;
            font-size: 20px;
        }
        </style>
    
    <title>
    All users</title></head>
    <body>
    <?php
    $query1="SELECT * FROM users";
    $res1=mysqli_query($connection,$query1);
?>
    
    <table style="width:100%">
        <thead>
    <tr>
        <th>User_ID</th>
        <th>User_Name</th>
        <th>User_Email</th>
        <th>User_Credit</th>
        </tr></thead>
        <tr>
            <tbody>
            <?php
                while( $rows = mysqli_fetch_assoc($res1)){
                    ?>
            <tr>
                <td><?php echo $rows['user_id'];?></td>
                <td><a href="transaction.php?id=<?php echo $rows['user_id']?>&sname=<?php echo $rows['user_name']?>&scredit=<?php echo $rows['user_credit']?> " style="color:black;"><?php echo $rows['user_name'];?></a></td>
                <td><?php echo $rows['user_email'];?></td>
                <td><?php echo $rows['user_credit'];?></td>
                </tr>
                <?php             }
                ?>            
            </tbody></table>
    
          
    </body></html>
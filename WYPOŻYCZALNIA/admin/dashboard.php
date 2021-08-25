<?php
session_start();
require('../functions.php');
if(!isset($_SESSION['isLogged']) || $_SESSION['isLogged'] !== true)
{
    die("dostęp zabroniony!");
}
?>

<!doctype html>
<html lang="pl">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="shortcut icon" href="../assets/sedan-car-front.png" type="image/x-icon">
    <title>Dashboard</title>
    <link rel="stylesheet" href="../style.css">
  </head>
  <body>


    <div class="main">
        
        <h1 class="header_reservations">REZERWACJE</h1>
        
        <div class="center_panel">
            <a href="../index.php" class="btn_back_logout">POWRÓT</a>
        </div>
  
        <div class="table_reservation">
        <table class="table table-hover">
            <table class="table table-hover">
            <thead class="table bg-dark text-light">
                <tr>
                    <th scope="row">#</th>
                    <td>Nazwisko</td>
                    <td>Model</td>
                    <td>Data_wypożyczenia</td>
                    <td>Data_zwrotu</td>
                    <td><b>Koszt</b></td>
                </tr>
            </thead>
            <tbody>
            
            <?php

                $rows = generate_dashboard();

                for($i=0;$i<count($rows);$i++)
                {
                echo '<tr>';
                    echo '<th scope="row">'.($i+1).'</th>';
                    echo '<td>'.$rows[$i]['surname'].'</td>';
                    echo '<td>'.$rows[$i]['name'].' '.$rows[$i]['type'].'</td>';
                    echo '<td>'.$rows[$i]['from_date'].'</td>';
                    echo '<td>'.$rows[$i]['to_date'].'</td>';
                    echo '<td><b>'.$rows[$i]['cost'].'</b></td>';
                echo '</tr>';
                }
            ?>
            </tbody>
          </table>
        </table>
        </div>
    </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
  </body>
</html>

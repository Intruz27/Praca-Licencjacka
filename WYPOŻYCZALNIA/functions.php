<?php

require('admin/sql_connect.php');

function get_cars($type)
{
    global $mysqli;
    switch($type)
    {
        case 'avaliable':
            $sql = "SELECT id,name, photo_url, type, price, fuel, fuel_consumption, gearbox_type, engine_size, manufacture_year, number_of_doors, liftback
            FROM cars WHERE avaliable= 1 order by name asc";
            break;
        case 'all':
            $sql = "SELECT id,name, photo_url, type, price, fuel, fuel_consumption, gearbox_type, engine_size, manufacture_year, number_of_doors, liftback
            FROM cars order by name asc";
            break;
        case 'select':
            $sql = "SELECT id,name, type, price FROM cars WHERE avaliable= 1 order by name asc";
        break;
    }


    $result= $mysqli->query($sql);
    $rows = $result->fetch_all(MYSQLI_ASSOC);
    return $rows;
}


function generate_dashboard()
{
    global $mysqli;

    $sql = "SELECT cars.name,cars.type, clients.surname, reservations.cost, reservations.from_date, reservations.to_date 
    FROM reservations INNER JOIN cars ON reservations.car_id = cars.id INNER JOIN clients ON clients.id = reservations.client_id";

    $result= $mysqli->query($sql);
    $rows = $result->fetch_all(MYSQLI_ASSOC);
    return $rows;
}


function  reservation($name,$surname,$phone_number,$email_adress,$auto_id,$take_date,$back_date)
{
    global $mysqli;

    $hours= round((strtotime($back_date) - strtotime($take_date))/(60*60));

    $sql = "SELECT price,name,avaliable FROM cars WHERE id=$auto_id";

    $result = $mysqli->query($sql);
    $row = $result->fetch_row();
    $price = $row[0];
    $car_name= $row[1];
    $avaliable= $row[2];

    if($avaliable != 1)
    {
        die('Samochód zajęty!');
    }

    $cost = $hours * $price;
   
    $sql_2 = "INSERT INTO clients (`name`,`surname`,`phone_number`,`email`) VALUES (?,?,?,?)";
    
    if($statement = $mysqli->prepare($sql_2))
    {
        if($statement ->bind_param('ssss',$name,$surname,$phone_number,$email_adress))
        {
            $statement->execute();
            $client_id = $mysqli->insert_id;
            
            $sql_3 = "INSERT INTO reservations (`client_id`,`car_id`,`from_date`,`to_date`,`cost`) VALUES (?,?,?,?,?)" ;
            echo $sql_3;
            if($statement_2 = $mysqli->prepare($sql_3))
                { 
                    if($statement_2 -> bind_param('iissi',$client_id,$auto_id,$take_date,$back_date,$cost))
                    {
                        $statement_2->execute();
                        $mysqli->query("UPDATE cars SET avaliable = 0 WHERE id=$auto_id");
                        header("Location: greetings.html");
                    }
                }
        }
        else
        {
            die('Niepoprawne zapytanie'.$mysqli->err_message());
        }
    }
}
?>
<?php

if(!empty($_POST))
{

    $name = trim($_POST['name']);
    $surname = trim($_POST['surname']);
    $phone_number = trim($_POST['phone_number']);
    $email_adress = trim($_POST['email_adress']);
    $auto_id = trim($_POST['form_choose_car']);
    $take_date = trim($_POST['take_date_form']);
    $back_date = trim($_POST['back_date_form']);

    echo $name;
    echo $surname;
    echo $phone_number;
    echo $email_adress;
    echo $auto_id;
    echo $take_date;
    echo $back_date;

    foreach($_POST as $p)
    {
        if($p == '')
        {
            die('Uzupełnij pole!');
        }
    }
    require('functions.php');
    reservation($name,$surname,$phone_number,$email_adress,$auto_id,$take_date,$back_date);
}

?>
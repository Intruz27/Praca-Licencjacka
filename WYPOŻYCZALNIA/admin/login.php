<?php
    if(!empty($_POST))
    {
        session_start();
        if(isset($_SESSION['isLogged']) && $_SESSION['isLogged'] === true)/*=== - sprawdza czy wartosć jest równa i czy typ jest równy*/
        {
            header("Location: dashboard.php");
            
        }
        require('sql_connect.php');
        

        $login = trim($_POST['login']);
        $password = hash('whirlpool',trim($_POST['password']));
       
        if($login == "")
        {
            
            die("Login jest pusty!");
        }
        else if($password == "")
        {
            die("Hasło jest puste!");
        }

        $sql = "SELECT password FROM users WHERE name = ?";

        if($statement = $mysqli->prepare($sql))
        {
            if($statement->bind_param('s',$login))
            {
                $statement->execute();
                $result = $statement -> get_result();
                $row = $result->fetch_row();
                $user_password = $row[0];

                if($user_password == $password)
                {
                    session_start();
                    $_SESSION['isLogged'] = true;
                    header("Location: dashboard.php");
                }
                else
                {
                    die("Nipeoprawne hasło!");
                }
            }
            $mysqli->close();
        }
        else
        {
            die("zapytanie niepoprawne!");
        }
    }
    else
    {
        die('Nic nie przesłano!');
    }
?>
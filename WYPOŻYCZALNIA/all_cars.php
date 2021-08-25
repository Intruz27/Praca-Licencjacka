<?php
require('functions.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FLOTA</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bitter:wght@500&family=Dosis:wght@300&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="style.css">
    <script type="text/JavaScript" src="JS/myScript.js"></script>
    <link rel="stylesheet" href="fontello/fontello.css">
</head>
<body>
    
        
        <div class="cars_container">

            <ul class="navbar">
                <li> <a href=#></a> TravelWithMe!</a></li>
                <li> <a href="index.html"> Zarezerwuj samochód</a></li>
                <li><a href="long_term_reservation.html">Wynajem długoterminowy</a></li>
                <li><a href="companies_offer.html">Oferta dla firm</a></li>
                <li><a href="all_cars.php">Flota</a></li>
                <li><a href="about.html">O nas</a></li>
                <li><a href="insurance.html">Wynajem z OC</a></li>
                <li><a href="contact.html">Kontakt</a></li>
            </ul>


            <div class="find_car">
                <h4 class="find_car_title">Znajdź samochód</h4>
    
                <div class="find_car_checkbox">
    
                    <label class="car_type_label"><input type="checkbox" value="KABRIOLET" id="KABRIOLET" onclick="select_liftback(KABRIOLET)">KABRIOLET</label>  
                    <label class="car_type_label"><input type="checkbox" value="HATCHBACK" id="HATCHBACK" onclick="select_liftback(HATCHBACK)">HATCHBACK </label>
                    <label class="car_type_label"><input type="checkbox" value="SEDAN" id="SEDAN" onclick="select_liftback(SEDAN)">SEDAN</label>
                    <label class="car_type_label"><input type="checkbox" value="KOMBI" id="KOMBI" onclick="select_liftback(KOMBI)">KOMBI</label>
                    <label class="car_type_label"><input type="checkbox" value="SUV" id="SUV" onclick="select_liftback(SUV)">SUV</label>
                    <label class="car_type_label"><input type="checkbox" value="COUPE" id="COUPE" onclick="select_liftback(COUPE)">COUPE</label>
                    <label class="car_type_label"><input type="checkbox" value="LIMUZYNA" id="LIMUZYNA" onclick="select_liftback(LIMUZYNA)">LIMUZYNA</label>
                    <label class="car_type_label"><input type="checkbox" value="INNE" id="INNE" onclick="select_liftback(INNE)">INNE</label>
    
    
                </div>
            </div>
    
        

        <div class="cards_continer">

            <?php
            $rows = get_cars('all');

            foreach($rows as $r)
            {
                echo '<div class="card_data">';
                echo '<div class="card_image">';
                echo ' <img src="assets/'.$r['photo_url'].'" class="card_image_properties" alt="'.$r['name']. ' ' .$r['type'].'">';
                echo '</div>';
                echo ' <div class="card_txt">';
                echo '<h3 class="car_name">'.$r['name']. ' ' .$r['type'].'</h3>';
                echo '</div>';
                echo ' <div class="card_info">';
                echo ' <div class="icons_container">';
                echo '<span title="RODZAJ PALIWA" class="simple_field"><i class="demo-icon icon-droplet icons_color"></i>'.$r['fuel'].'</span> ';

                echo '<span title="SPALANIE" class="simple_field""><i class="demo-icon icon-fuel icons_color"></i>'.$r['fuel_consumption'].'l/100km</span> ';
                echo '<span title="RODZAJ SKRZYNI" class="simple_field"><i class="demo-icon icon-flow-tree icons_color"></i>'.$r['gearbox_type'].'</span>    ';
                echo '<span title="POJEMNOŚĆ SILNIKA" class="simple_field"><i class="demo-icon icon-gauge icons_color"></i>SILNIK: '.$r['engine_size'].'</span> ';
                echo '<span title="CENA" class="simple_field"><i class="demo-icon icon-database icons_color"></i>'.$r['price'].' zł/h</span> ';
                echo '<span title="RODZAJ NADWOZIA" class="simple_field"><i class="demo-icon icon-cab icons_color"></i>'.$r['liftback'].'</span> ';

                echo '</div>';
                echo '</div>';
                echo '</div>';
            }
        
        ?>
        </div>
    </div>


    <footer id="footer">

        <div class="contact-container">
            <h2 class="footer_headers">Kontakt</h2>
            <h3 class="contact_txt">
                <b>Ulica:</b> Generała Tadeusza Kutrzeby 521D</br>
                <b>Miasto:</b> Łódź</br>
                <b>Kod pocztowy:</b> 91-012 </br>
                <b>Telefon:</b> 123-456-789 </br>
                <b>E-mail:</b> test123@gmail.com </br>

        </div>

        <div class="menu-oferta-container">
            <h2 class="footer_headers">Menu</h2>
            <ul class="menu-oferta">
                <li><a href="index.html">Zarezerwuj samochód</a></li>
                <li><a href="long_term_reservation.html">Wynajem długoterminowy</a></li>
                <li><a href="insurance.html">Wynajem z OC sprawcy</a></li>
                <li><a href="companies_offer.html">Oferta dla firm</a></li>
            </ul>
        </div>

        <div class="menu-linki-container">
            <h2 class="footer_headers">Info</h2>
            <ul class="menu-linki">
                <li> <a href="about.html">O nas</a></li>
                <li><a href="all_cars.html">Flota</a></li>
                <li><a href="#">Punkty wynajmu</a></li>
                <li><a href="#">FAQ</a></li>

            </ul>
        </div>

        <div class="socials">
            <h2 class="footer_header_socials">Socials</h2>
            <div class="fb">
                <a href="https://www.facebook.com/"><i class="demo-icon icon-facebook white"></i></a>
            </div>

            <div class="yt">
                <a href="https://www.youtube.com/"><i class="demo-icon icon-youtube white"></i></a>
            </div>

            <div class="tw">
                <a href="https://twitter.com/?lang=pl"><i class="demo-icon icon-twitter-circled white"></i></a>
            </div>

            <div class="insta">
                <a href="https://www.instagram.com/"><i class="demo-icon icon-instagram white"></i></a>
            </div>

            <div class="link">
                <a href="https://www.linkedin.com/feed/"><i class="demo-icon icon-linkedin-squared white"></i></a>
            </div>

        </div>
            
            
        

    </footer>

</body>
</html>
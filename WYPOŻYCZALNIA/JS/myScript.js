

function scroll()
{
    if(document.body.scrollTop > 30 || document.documentElement.scrollTop > 30)
    {
        document.getElementById("button_UP").style.display = "block";
    }
    else
    {
        document.getElementById("button_UP").style.display = "none";
    }
}

function smoothScroll(element)
{
    document.querySelector(element).scrollIntoView({behavior: 'smooth'});
}


function reserve(auto)
{
    var select = document.getElementById('auto');
    
  var options_selected = select.querySelectorAll('option[selected]');

  options_selected.forEach(function(option)
  {
      option.removeAttribute("selected");
  });
    
    var option = select.querySelector('option[value="'+auto+'"]');
    option.setAttribute("selected","selected");
    smoothScroll('#reservation');
}



function select_liftback(data) {

    var els = document.getElementsByClassName("simple_field");
    var card = document.getElementsByClassName("card_data");

  
        if (data.checked == true) 
        {
            console.log(data);
            Array.from(els).forEach((el) => {
                if (el.title == "RODZAJ NADWOZIA" && el.textContent == data.value) {
                    var sciezka1 = ((el.parentNode).parentNode).parentNode;
                    sciezka1.style.display = "inline-block";
                }
    
                else {
    
                    var sciezka2 = ((el.parentNode).parentNode).parentNode;
                    sciezka2.style.display = "none";
                    console.log(((el.parentNode).parentNode).parentNode);
                }
    
            });
    
        }
        else {
            Array.from(card).forEach((cd) => {
                cd.style.display = "inline-block";
            });
        }

}



function calculate(price) {
    var result = document.getElementById('amount');
    result.innerHTML = '';
    var days = document.getElementById('dni').value;
    var hours = document.getElementById('godziny').value;
    var cost = (days * 24 * price) + (hours * price);
    result.innerHTML = cost;

}

function calculate_price(price) {
    document.getElementById('dni').addEventListener('change', function () {
        calculate(price)
    })
    document.getElementById('godziny').addEventListener('change', function () {
        calculate(price);
    })
}

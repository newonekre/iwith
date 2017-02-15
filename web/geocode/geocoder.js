/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function sayHello(){
    alert("Hello");
}

function geocoder(){
    var urlPath = 'https://maps.googleapis.com/maps/api/geocode/json?address=' 
            + $("#address").val();
    
    $.ajax({
        url: urlPath        
    }).done(doneHandler);
    
}

function doneHandler(result){
    alert(result.results[0].formatted_address);
    alert(result.results[0].geometry.location.lat + "," + result.results[0].geometry.location.lng);
}


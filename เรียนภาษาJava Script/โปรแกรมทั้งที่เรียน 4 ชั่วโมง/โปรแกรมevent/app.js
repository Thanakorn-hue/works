function toCelsius(fahrenheit) {
    let value = (fahrenheit - 32) * 5 / 9
    return fahrenheit + "°F.  เป็น  " + value.toFixed(2) + "°C.";
}

function display(elementID, value){
    document.getElementById(elementID).innerHTML = value 
}

function toFahrenheit(celsius) {
    let value = (celsius * 9/5) +32
    return celsius + "°C.  เป็น  " + value.toFixed(2) + "°F.";
}

function toCelsiusProgram(value){
        alert(toCelsius(value))
}

function toFahrenheitProgram(value){
        alert(toFahrenheit(value))
}
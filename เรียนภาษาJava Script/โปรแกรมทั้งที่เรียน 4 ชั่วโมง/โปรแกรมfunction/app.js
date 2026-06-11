function toCelsius() {
    let fahrenheit = prompt("Enter the temperature in Fahrenheit:");
    let value = (fahrenheit - 32) * 5 / 9
    document.getElementById("f-line").innerHTML = fahrenheit + "°F is equal to " + value.toFixed(2) + "°C.";
}
function toFahrenheit() {
    let Celsius = prompt("Enter the temperature in Celsius:");
    let value = (Celsius * 9/5) +32
    document.getElementById("c-line").innerHTML = Celsius + "°C is equal to " + value.toFixed(2) + "°F.";
}

function sayHello(){
    return "Hello, World!"
}

function sleep(username){
    return "Good night, " + username + "!"
}

toCelsius()
toFahrenheit()
alert(sayHello())
alert(sleep(prompt("What is your name?")))
 
//เอ๋อครับ
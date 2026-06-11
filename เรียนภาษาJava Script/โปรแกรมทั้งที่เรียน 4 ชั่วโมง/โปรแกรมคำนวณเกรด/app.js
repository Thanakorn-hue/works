let score = prompt("กรอกคะแนนของคุณ")
if(score >= 80){
    document.getElementById("result").innerHTML = "เกรด 4"
} else if(score >= 75){
    document.getElementById("result").innerHTML = "เกรด 3.5"
} else if(score >= 70){
    document.getElementById("result").innerHTML = "เกรด 3"
} else if(score >= 65){
    document.getElementById("result").innerHTML = "เกรด 2.5"
} else if(score >= 60){
    document.getElementById("result").innerHTML = "เกรด 2"
} else if(score >= 55){
    document.getElementById("result").innerHTML = "เกรด 1.5"
} else if(score >= 50){
    document.getElementById("result").innerHTML = "เกรด 1"
} else {
    document.getElementById("result").innerHTML = "เกรด 0"
}
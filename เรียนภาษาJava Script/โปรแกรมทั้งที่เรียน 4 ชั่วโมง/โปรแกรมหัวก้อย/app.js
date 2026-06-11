let round = prompt("คุณจะเล่นทั้งหดกี่รอบ")
for (var i = 1; i <= round; i++) {
    var answer = prompt("คุณจะเลือกอะไร? หัว หรือ ก้อย พิมมาได้เลย")
    var random_answer = ""
    if (Math.floor(Math.random()* 11) <= 5) {
        random_answer = "หัว"
    } 
    else {
        random_answer = "ก้อย"
    }
    if (answer == random_answer) {
        alert("คุณชนะ")
    }
    else {
        alert("คุณแพ้")
    }
    document.getElementById("game-list").innerHTML += "รอบที่ " + i + " คุณเลือก " + answer + " " + "ออก " + random_answer + "<br>"
}

let lotto_num = prompt("กรอกเลขที่ต้องการซื้อ :")
let random_num = Math.floor(Math.random()* 100)
document.getElementById("Lotto_text").innerHTML = lotto_num;
document.getElementById("random").innerHTML = random_num;
if (lotto_num == random_num) {
    document.getElementById("result").innerHTML = "ยินดีด้วยคุณถูกรางวัล!😍"
} else {
    document.getElementById("result").innerHTML = "เสียใจด้วยคุณไม่ถูกรางวัล!😭"
}
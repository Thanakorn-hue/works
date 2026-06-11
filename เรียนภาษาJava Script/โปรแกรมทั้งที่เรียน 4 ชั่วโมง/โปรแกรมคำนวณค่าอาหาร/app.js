let qrt = parseInt(prompt("จำนวนสินค้า"))
let sum = 0
for (var i = 1; i <= qrt; i++) {
    let item_price = parseInt(prompt("ราคาสินค้าชินที่" + i))
    sum = sum + item_price
    document.getElementById("price-list").innerHTML += "รายการสินค้าที่" + i + " " + item_price + "<br>"
}
document.getElementById("result").innerHTML = "รวมราคาสินค้าทั้งหมด " + sum + " บาท"
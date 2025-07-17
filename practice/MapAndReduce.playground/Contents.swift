import UIKit

let prices = [8.50, 12.00, 14.25]
let priceswithTax = prices.map{ $0 * 1.16}
    print(priceswithTax)

//let pricesWithTax = prices.map{String(format: "%.2f", $0 * 1.16)}
    print(priceswithTax)



let numbers = [1, 2, 3,]
let doubled = numbers.map {$0 * 2}
print(numbers)
print(doubled)

let desserts = ["Cake", "Ice Cream", "Pie"]
let emojiMenu = desserts.map{ "🍰\($0)"}
print(emojiMenu)


/*
 |------    Reduce ------|
 */
let carPrices = [22000, 25000, 27000,]
let total = carPrices.reduce(0){$0 + $1}
print(total)
print(carPrices)

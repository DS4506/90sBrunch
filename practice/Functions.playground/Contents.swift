import UIKit

func greet(person:String)->String{
    let greeting = "Hello, \(person)!"
    return greeting
}
// call the function
let message = greet(person: "tasha")
print(message)

func great2(person: String, formally: Bool = false)->String{
    if formally{
        return "Greatings, \(person)."
    }else{
        return "Hi, \(person)"
    }
}

print(great2(person: "someone"))
print(great2(person: "Dr. Doom", formally: true))

func calculateTotal(price: Double, quantity: Int)->Double{
    return price * Double(quantity)
    
}

let total = calculateTotal(price: 99.9, quantity: 2)
print(total)

func deliveryTime(minutes:Int) -> String{
    return "Ready in \(minutes) minutes"
}
print(deliveryTime(minutes:20))
print(deliveryTime(minutes: 30))

func total(price: Double, tax: Double) -> String{
    let taxAmount = price * tax/100
    let totalPrice = price + taxAmount
    return String(format: "%.2f", totalPrice)
}

let cost = total(price: 100, tax: 7)
print(cost)

great(person:"Dave")

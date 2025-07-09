import UIKit

func great(person String) ->String
    let greating = "Hello, \(person)!"
    return greating
}
// call the function
let message = great(person: "tasha")
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

func calculateArea(width: Double, quantity: Int)->Double{
    return price * Double(quantity)
    
}

let total = calculateArea(price: 99.9, quantity: 2)
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

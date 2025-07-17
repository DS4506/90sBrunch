import UIKit

func linebreak() {
    print("----------")
}

var dishes = ["Pasta", "Pizza", "Sushi", "Tacos"]
print(dishes[0])
print(dishes.count) // 3


var prices = [10.99, 15.99, 25.99, 10.99]
let total = (prices[0] + prices[1])
print(String(format: "%.2f", total))

let desserts = ["Ice Cream", "Cake", "Cheesecake"]
for dessert in desserts {
    print(dessert)
}
// forEach
/*
 forEach { element in
 //do something with element
 }
 */
desserts.forEach{ dessert in
    print(dessert)
    
    
}

linebreak()

let drinks = ["Coca-Cola", "Tea", " Sparkle water"]

for drink in drinks {
    print("This is my drink: \(drink)")
}

drinks.forEach{ drink in
    print(drink)
}

linebreak()


let calories = [150, 80, 101]
for calorie in calories {
    if calorie > 100 {
        print("High calorie \(calorie)")
    }
}
        
calories.forEach{ calorie in
    if calorie > 100 {
        print("High calorie \(calorie)")
    }
}

linebreak()

let meals = ["Sandwhich", "Salad", "Burger"]
 for meal in meals {
    if meal.contains("a") {
         print("Meal with 'a' \(meal)")
     }
}

meals.forEach {meal in
    if meal.contains("a") {
        print("Meal with 'a' \(meal)")
        
    }
}


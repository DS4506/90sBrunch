import UIKit

// IF- ELSE IF- ELSE

/*
 |------ SYNTAX------ |
 
 if condition1{
    this block runs if condition is true
 } else if condition2 {
    this block run if condition1 is false and condition2 is true
 } else {
 this block runs if none of the above conditions are true
 }
 */


// |----- Example 1 ----- |
var  waterTemperature: Int = 101

if waterTemperature >= 100{
        print("The water is boiling")
    } else {
        print("The water is not boiling")
        
    }

// |------ Example ------ |
var position = 1

if position == 1 {
    print( "🥇 You are first")
} else if position == 2 {
    print("You are second")
} else if position == 3 {
    print("You are third")
} else {
    print("You finished in position \(position). keep training!")
}
  // |------ Example ------ |
var temperature = 70

if temperature >= 68 && temperature <= 75 {
    print(" The temperature is just right")
} else {
    print( "The temperature is  too hot or cold")
}
    
// |------  Example 4 ------ |
var mainPower:Bool = false
var batteryPower:Bool = true

if mainPower == true || batteryPower == true {
    print("I can use my phone")
} else{
    print("You better get a charger")
}

/*
// | ----- Example 5 ---- |
 */

var vip:Bool = true
var genAdmin:Bool = false

if vip == true  || genAdmin == false{
    print("You're a baller now")
}else{
    print("You didnt make the cut")
}

/*
 |------ Example 6 -----|
 */

var isVip:Bool = true

if isVip == true {
    print("You are Vip")
} else{
    print("You are not VIP")
}


var greeting = "Hello, playground"
print("hello world")

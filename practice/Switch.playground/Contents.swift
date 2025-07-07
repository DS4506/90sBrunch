import UIKit


// SWITCH

/*
 |------ SYNTAX ------ |
 switch value {
 case pattern 1:
 code to run if value matches patteren1
 case pattern2
        Code to run if value macthes pattern2
    default:
        Code to run if no cases match
 }
 
 */

 let position = 32

switch position {
case 1:
    print("You are first")
    
case 2:
    print("You are second")
    
case 3:
    print("You are third")
    
default:
    print("You placed \(position)")
}

// |------ Example 2 ----- |
let grade = "C"

switch grade {
case"A", "A+":
    print("Oustanding")
    
case "B", "B+":
    print("Good Job")
    
case "C", "C+":
    print("Average")
    
default:
    print("Get back to work")
    }


// |------ Example 3 ------ |
// using range
let score = 99

switch score {
    case 90...100:
    print( "Grade A")
    
    case 80..<90:
    print("Grade B")
    
case 70..<80:
    print("Grade C")
    
default:
    print("Grade F")
    
}


//
//  Validations.swift
//  90sBrunch
//
//  Created by Willie Earl on 7/7/25.
//

import Foundation

struct Validations {
    static func isValidName(_ name: String)->Bool{
        return name.count > 2
        
    }
    
    static func isValidGuestCount(_ guest: Int)->Bool{
        return guest > 0
        
    }
}

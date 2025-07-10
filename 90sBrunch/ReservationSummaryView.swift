//
//  ReservationSummaryView.swift
//  90sBrunch
//
//  Created by Willie Earl on 7/7/25.
//

import SwiftUI

struct ReservationSummaryView: View {
    let name: String
    let date: Date
    let guestCount: Int
    let allergy: String
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Thank you \(name),your rservations is confirmed for\(guestCount) people.")
                .font(.headline)
                .multilineTextAlignment(.center)
            
            if !allergy.isEmpty {
                Text("Note: We will accommodate the following allergies: \(allergy)")
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
            }
            Text("Name: \(name)")
            Text("Date: \(date, style: .date)")
            Text("GuestCount: \(guestCount)")
            Text("Allergies: \(allergy)")
        }
    }
    func formattedDate(date: Date)-> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

//#Preview {
    //ReservationSummaryView()
//}

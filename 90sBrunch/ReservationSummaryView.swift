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
    let guests: Int
    let allergy: String
    var body: some View {
        VStack (alignment: .leading) {
            Text("Reservation Summary")
                .font(.title)
            Text("Name: \(name)")
            Text("Date: \(date, style: .date)")
            Text("Guests: \(guests)")
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

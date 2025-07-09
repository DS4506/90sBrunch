//
//  Reservationform.swift
//  90sBrunch
//
//  Created by Willie Earl on 7/5/25.
//

import SwiftUI

struct ReservationForm: View {
    @State private var userName: String = ""
    @State private var guestCount: Int = 0
    @State private var showSummary: Bool = false
    @State private var reservationDate = Date()
    @State private var allergyNotes = ""

    var body: some View {
        NavigationStack{
            Image("littleLemonLogo")
            Form {
                Section(header: Text("Reservation Details")) {
                    TextField("Enter your name", text: $userName)
                    if !Validations.isValidName(userName){
                        Text("Please insert your name")
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    
                }
                
                Stepper("Guests: \(guestCount)", value: $guestCount, in: 0...10)
                
                if guestCount > 5 {
                    Text("For large parties, we will contact you")
                        .foregroundColor(.blue)
                        .font(.caption)
                }
                DatePicker("Date", selection: $reservationDate, displayedComponents: [.date, .hourAndMinute])
                
                TextField("Any allergies?", text: $allergyNotes)
                
                Button("Confirm Reservation"){
                    if !userName.isEmpty {
                        showSummary = true
                    }
                    
                }
                .disabled(userName.isEmpty)
                .navigationDestination(isPresented: $showSummary){
                    ReservationSummaryView(
                        name: userName,
                        date: reservationDate,
                        guests: guestCount,
                        allergy: allergyNotes
                        
                    )
            }
        }
       
        }
        
        }
    }


#Preview {
    ReservationForm()
}




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
    @State private var showConfirmation: Bool = false

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Reservation Details")) {
                    TextField("Enter your name", text: $userName)
                        .textFieldStyle(.roundedBorder)

                    if userName.isEmpty {
                        Text("Please enter your name")
                            .foregroundColor(.red)
                            .font(.caption)
                    }

                    Stepper("Guests: \(guestCount)", value: $guestCount, in: 0...10)

                    if guestCount > 5 {
                        Text("For large parties, we will contact you")
                            .foregroundColor(.orange)
                            .font(.caption)
                    }
                }

                Section {
                    Button("Confirm Reservation") {
                        showConfirmation = true
                    }
                    .disabled(userName.isEmpty)
                }
            }
            .navigationTitle("Book a table")
            .alert(isPresented: $showConfirmation) {
                Alert(title: Text("Reservation Confirmed"),
                      message: Text("Thank you, \(userName)!"),
                      dismissButton: .default(Text("OK")))
            }
        }
    }
}

#Preview {
    ReservationForm()
}




//
//  AboutView.swift
//  90sBrunch
//
//  Created by Willie Earl on 6/30/25.
//

import SwiftUI

struct AboutView: View {
    @State private var orders = 10
    @State private var userName = "GeniusDave"
    @State private var reservations = 0
    
    var body: some View {
        VStack{
            Text("Welcome \(userName) to 90s Brunch")
                .font(.title)
                .padding()
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("You're order \(orders) times")
            Button("Place Order"){
                orders += 1
            }
            Divider()
            Spacer()
            Button("reset"){
                orders = 0
        }
            TextField(" Enter your name",text:$userName)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button("Add people to the reservations"){ reservations += 1}
            Text("Hi \(userName), your reservation number is \(orders) Thank you for your patiences")
                .font(.caption)
                .padding()
            Text(String(repeating: "🍋", count: reservations))
            Stepper("Guests: \(reservations)", value: $reservations, in: 1...10)
        }
        .padding()
        .navigationTitle("About us")
    }
}

#Preview {
    AboutView()
}

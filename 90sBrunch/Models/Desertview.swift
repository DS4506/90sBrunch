//
//  Desertview.swift
//  90sBrunch
//
//  Created by Willie Earl on 7/14/25.
//

import SwiftUI

struct Desertview: View {
    let desertMenuItems = [
        DesertItem(name:"Doughnut", description: "glazed", price: 3.99),
        DesertItem(name: "Cheesecake", description: "tasty", price: 7.99),
        DesertItem(name:"Chocolatecake", description: "sweet", price: 8.99),
    ]
        
    var body: some View {
        NavigationView {
            List(desertMenuItems) { desert in
                HStack {
                    Text(desert.name)
                        .font(.title)
                    
                    Spacer()
                    
                    Text(String(format: "%.2f", desert.price))
                        .foregroundColor(.gray)
                }
                .padding()
            }
            .navigationTitle("Desert")
        }
    }
}

#Preview {
    Desertview()
}

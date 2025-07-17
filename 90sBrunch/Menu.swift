//
//  Menu.swift
//  90sBrunch
//
//  Created by Willie Earl on 7/9/25.
//

import SwiftUI

struct MenuView: View {
    @State private var showMessage = false
    @State private var showPremiumOnly: Bool = false
    @State private var showDeserts: Bool = false
    // Use the struct
    
    let menuItems = [
        MenuItem(name:"Wings",description:"Sweet and spicy",price: 12.99),
        MenuItem(name:"Nachos",description: "Chessy",price: 8.99),
        MenuItem(name:"steak",description: "Juicy",price: 19.99),
        MenuItem(name:"Grits",description: "Thick and buttery",price: 7.99),
        MenuItem(name:"Pancakes",description: "Golden brown",price: 5.99),
        
    ]
    // computed varibles/properties
    
    var sortedMenuItems:[MenuItem] {
        menuItems.sorted { $0.name < $1.name }
    }
    
    var filteredMenu: [MenuItem] {
        showPremiumOnly ? menuItems.filter { $0.price < 10 } : menuItems
    }
    
    var averagePrice: Double {
        let total = filteredMenu.map{$0.price}.reduce(0, +)
        return total / Double(filteredMenu.count)
        
    }
        
            var body: some View {
        VStack{
                HStack{
                    Image(systemName: "fork.knife")
                        .foregroundColor(.orange)
                        .font(.system(size: 32))
                    Text("Tody's Menu")
                        .font(.largeTitle)
            
        }
            .padding()
            
            Text("Average price: $\(averagePrice, specifier: "%.2f")")
                .font(.footnote)
                
            
                VStack(spacing: 20){
                                Toggle("Show an special text",isOn: $showMessage)
                                    .padding()
                                if showMessage {
                                    Text("You unlocked a surprise!")
                                        .font(.title3)
                                        .foregroundColor(.green)
                                   
                                }
                            }
                           
                           Button("View Deserts"){
                               showDeserts.toggle()
                           }
                            .padding()
                            .background(.green.opacity(0.4))
                            .cornerRadius(12)
            
                            .sheet(isPresented: $showDeserts){
                                Desertview()
                            }
                           
                           
                           
                        }
                    }
                }

#Preview {
    
MenuView()
    
}

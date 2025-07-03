//
//  ContentView.swift
//  90sBrunch
//
//  Created by Willie Earl on 6/30/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            VStack {
                Image("littleLemonLogo")
                Image(systemName: "pencil")
                    .imageScale(.large)
                    .foregroundStyle(.green)
                
                Text("Hello, cohort 1!")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                NavigationLink(destination: AboutView()) { Text("Go to About us")
            }
        }
            .padding()
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}

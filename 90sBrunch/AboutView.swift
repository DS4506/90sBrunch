//
//  AboutView.swift
//  90sBrunch
//
//  Created by Willie Earl on 6/30/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack{
            Text("Welcome to 90s Brunch")
                .font(.title)
                .padding()
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
        }
        .padding()
        .navigationTitle("About us")
    }
}

#Preview {
    AboutView()
}

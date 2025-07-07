//
//  LoginView.swift
//  90sBrunch
//
//  Created by Willie Earl on 7/5/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn: Bool // mandatory declare type
    @Binding var userName: String
    
    var body: some View {
        NavigationStack{
            VStack{
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
//                TextField("Enter your name:
//            ", text:$userName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                          
                    Button("Log In"){
//                    if userName == "Dave"{
                        isLoggedIn = true
//                }
                
                }
            }
        }
        
    }
}

//#Preview {
    // LoginView()


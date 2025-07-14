//
//  PremiumBadge.swift
//  90sBrunch
//
//  Created by Willie Earl on 7/14/25.
//

//
//  PremiumBadge.swift
//  LemonRestaurant
//
//  Created by Samantha Jimenez on 12/07/25.
//

import SwiftUI

struct PremiumBadge: View {
   
    var body: some View {
        HStack{
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Text("Premium")
                .font(.caption)
        }
        .font(.caption)
        .foregroundColor(.orange)
        .padding(6)
        .background(Color.orange.opacity(0.1))
        .cornerRadius(6)
    }
}

#Preview {
    PremiumBadge()
}

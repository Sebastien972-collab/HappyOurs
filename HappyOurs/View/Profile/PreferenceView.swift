//
//  PreferenceView.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 04/06/2025.
//

import SwiftUI

/// Preference Row bottom ProfileView
struct PreferenceView: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image(imageName)
                    .resizable()
                    .padding(5)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.darkYellow200, lineWidth: 0.5)
                    )
                Text("J'adore les \(text)")
                    .padding(.leading, 20)
            }
        }
        .padding(.top, 20)
        .padding(.horizontal, 15)    }
}

#Preview {
    PreferenceView(imageName: Cocktail.cocktailDb.first!.imageName, text: Cocktail.cocktailDb.first!.name)
}

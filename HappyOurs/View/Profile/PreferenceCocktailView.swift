//
//  PreferenceView.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 04/06/2025.
//

import SwiftUI

/// Preference Row bottom ProfileView
struct PreferenceCocktailView: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                //                ZStack {
                //                    Circle()
                //                    .frame(width: 55, height: 55)
                //                    .background(Color.white)
                //
                //                    Image(imageName)
                //                        .resizable()
                //                        .frame(width: 50, height: 50)
                //                        .clipShape(Circle())
                //                        .aspectRatio(contentMode: .fit)
                //                        .background(Color.white)
                //
                //
                //
                //                }
                ZStack{
                    Color.white
                    Image(imageName)
                        .resizable()
                        .frame(width: 25, height: 50)
                        .aspectRatio(contentMode: .fit)
                    
                }
                .clipShape(Circle())
                .overlay(Circle()
                    .stroke(Color.darkYellow200, lineWidth: 0.5))
                .frame(width: 60, height: 60)
                
                
                Text((text))
                    .padding(.leading, 20)
            }
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 15)
    }
}

#Preview {
    PreferenceCocktailView(imageName: "event-1", text: Cocktail.cocktailDb.first!.name)
}

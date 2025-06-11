//
//  ImageCocktailEvent.swift
//  HappyOurs
//
//  Created by Dembo on 06/06/2025.
//

import SwiftUI

struct ImageCocktailEvent: View {
    var body: some View {
        ZStack{
            Image(.cocktail1)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 25, height: 50)
            Circle()
                .stroke(Color.darkYellow, lineWidth: 0.5)
                .frame(width: 60, height: 60)
        }
        
        
    }
}

#Preview {
    ImageCocktailEvent()
    
}

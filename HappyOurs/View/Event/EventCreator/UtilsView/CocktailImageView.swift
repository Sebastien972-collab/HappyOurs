//
//  CocktailImageView.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 02/06/2025.
//

import SwiftUI

struct CocktailImageView: View {
    var cocktail: Cocktail
    var body: some View {
        Image(cocktail.imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 40, height: 40)
            .background {
                Circle()
                    .fill(Color.newBeige)
                    .frame(width: 80, height: 80)
                    .overlay {
                        Circle()
                            .stroke(Color.darkYellow200, lineWidth: 1)
                    }
                    
            }
    }
}

#Preview {
    CocktailImageView(cocktail: .preview)
}

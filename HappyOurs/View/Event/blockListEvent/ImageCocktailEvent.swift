//
//  ImageCocktailEvent.swift
//  HappyOurs
//
//  Created by Dembo on 06/06/2025.
//

import SwiftUI

struct ImageCocktailEvent: View {
    
    let event : Event
    
    var body: some View {
        ZStack{
            Color.white
//            Circle()
//                .stroke(Color.darkYellow, lineWidth: 0.5)
//                .frame(width: 60, height: 60)
            Image(event.bestCocktail.imageName)
                .resizable()
                .frame(width: 25, height: 50)
                .aspectRatio(contentMode: .fill)
            
        }
        .clipShape(Circle())
        .overlay(Circle()
            .stroke(Color.darkYellow200, lineWidth: 0.5))
        .frame(width: 60, height: 60)

        
        
        
    }
}

#Preview {
    ImageCocktailEvent(event: .defaultEvent)
        .frame(width:150, height: 150)
        .background(Color.black)
    
}

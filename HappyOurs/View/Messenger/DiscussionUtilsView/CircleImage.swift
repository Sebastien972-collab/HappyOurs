//
//  CircleImage.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 30/05/2025.
//

import SwiftUI
import FestivityUIKit
struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(Color.darkYellow, lineWidth: 3)
                    
            }
            
    }
}

#Preview {
    ZStack {
        Color.coffe_brown.ignoresSafeArea()
        CircleImage(image: Image("carolineImage"))
    }
}

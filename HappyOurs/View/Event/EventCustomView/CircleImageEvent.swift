//
//  CircleImageEvent.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 12/06/2025.
//

import SwiftUI
import FestivityUIKit

struct CircleImageEvent: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .frame(maxWidth: 80, maxHeight: 80)
            .clipShape(Circle())
            
    }
}

#Preview {
    ZStack {
        Color.coffe_brown.ignoresSafeArea()
        CircleImageEvent(image: Image("Caroline"))
    }
}

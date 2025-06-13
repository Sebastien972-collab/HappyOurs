//
//  ImageEventCarouselView.swift
//  HappyOurs
//
//  Created by Dembo on 04/06/2025.
//

import SwiftUI

struct ImageEventCarouselView: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
//            .renderingMode(.original)
            .aspectRatio(contentMode: .fill)
            .frame(width: 160, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    ImageEventCarouselView(imageName: "event-1")
}

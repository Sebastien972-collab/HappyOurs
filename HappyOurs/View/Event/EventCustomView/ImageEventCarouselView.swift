//
//  ImageEventCarouselView.swift
//  HappyOurs
//
//  Created by Dembo on 04/06/2025.
//

import SwiftUI

struct ImageEventCarouselView: View {
    var imagaName: String
    var body: some View {
        Image(imagaName)
            .resizable()
            .renderingMode(.original)
            .frame(width: 160, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    ImageEventCarouselView(imagaName: "event-1")
}

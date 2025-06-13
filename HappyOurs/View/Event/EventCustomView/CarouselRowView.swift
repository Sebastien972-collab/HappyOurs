//
//  CarouselRowView.swift
//  HappyOurs
//
//  Created by Dembo on 04/06/2025.
//

import SwiftUI

struct CarouselRowView: View {
    var event: Event
    
    var body: some View {
        VStack {
            ImageEventCarouselView(imageName: event.imageEventName ?? "event-2")
            Text(event.name)
                .font(.system(size: 14))
                .bold()
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    NavigationStack {
        CarouselRowView(event: .defaultEvent)
    }
}

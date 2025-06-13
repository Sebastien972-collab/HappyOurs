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
        VStack(alignment: .leading) {
            ImageEventCarouselView(imagaName: event.imageEventName ?? "event-1")
            Text(event.name)
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

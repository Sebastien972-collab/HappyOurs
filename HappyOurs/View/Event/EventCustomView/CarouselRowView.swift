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
            Text("Soirée à l'opéra")
                .bold()
        }
    }
}

#Preview {
    CarouselRowView(event: .defaultEvent)
}

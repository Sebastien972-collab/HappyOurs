//
//  Carouselle.swift
//  HappyOurs
//
//  Created by Dembo on 04/06/2025.
//

import SwiftUI

struct Carrousel: View {
    @Binding var events: [Event]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Tes prochaines sorties")
                .font(.title2)
                .bold()
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(events) { event in
                        NavigationLink {
                            EventDetailsView(event: $events[events.firstIndex(where: { $0.id == event.id })!])
                        } label: {
                            CarouselRowView(event: event)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
        .padding(.top, 10)
    }
}


#Preview {
    NavigationStack {
        Carrousel(events: .constant([.defaultEvent, .defaultEvent, .defaultEvent]))
    }
}

//
//  EventDetailsView.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 05/06/2025.
//

import SwiftUI

struct EventDetailsView: View {
    
    @Binding var event: Event
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Image(event.imageEventName ?? "event-1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: 400)
                        
                    Text(event.name)
                        .bold()
                        .font(.title)
                        .padding()
                    
                    HStack {
                        Image(systemName: "calendar")
                        Text(event.dateFormatted.capitalized)
                            .fontWeight(.medium)
                            .font(.title2)
                            
                    }
                    .padding(.horizontal)
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                        Text(event.address)
                            .fontWeight(.medium)
                            .font(.title3)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                            
                    }
                    .padding(.horizontal)
                    Spacer()
                }
            }
            .ignoresSafeArea(edges: .vertical)
        }
    }
}

#Preview {
    EventDetailsView(event: .constant(.defaultEvent))
}

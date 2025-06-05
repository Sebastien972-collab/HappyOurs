//
//  Carouselle.swift
//  HappyOurs
//
//  Created by Dembo on 04/06/2025.
//

import SwiftUI

struct Carouselle: View {
    let events: [Event]
    var body: some View {
        VStack{
            Text("Tes prochaines sorties")
                .frame(maxWidth:.infinity, alignment: .leading)
                .font(.title2)
                .bold()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                   ForEach(events) { event in
                        CarouselRowView(event: event)
                    }
                }
        }
        
            
        }
        .padding()
    }
}

#Preview {
    Carouselle(events: [.defaultEvent, .defaultEvent, .defaultEvent])
}

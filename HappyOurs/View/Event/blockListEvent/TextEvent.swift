//
//  TextEvent.swift
//  HappyOurs
//
//  Created by Dembo on 05/06/2025.
//

import SwiftUI

struct TextEvent: View {
    let event: Event
    var body: some View {
       
            
            VStack (alignment: .leading) {
                Text(event.name)
                    .font(.system(size: 16))
                    .bold()
                    .lineLimit(1)
                Text(event.dateFormatted)
                    .font(.system(size: 10))
                    .font(.callout)
                Text(event.address)
                    .font(.system(size: 10))
                    .truncationMode(.tail)
                    .lineLimit(1)
                
            }
            .foregroundStyle(.black)
    }
}

#Preview {
    TextEvent(event: .defaultEvent)
}

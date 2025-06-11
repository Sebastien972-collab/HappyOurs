//
//  EventCuriousView.swift
//  HappyOurs
//
//  Created by Dembo on 10/06/2025.
//

import SwiftUI

struct EventBusinessView: View {
    var body: some View {
        VStack{
            Text("Mes événements")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth:.infinity, alignment: .leading)
            
            VStack{
                EventCard(event: .defaultEvent)
                CustomDivider()
                EventCard(event: .defaultEvent)
                CustomDivider()
                EventCard(event: .defaultEvent)
                
            }
            .padding(5)
            .background(Color.newBeige)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
            
            
            
        }
        .padding(.horizontal,15)
    }
}

#Preview {
    EventBusinessView()
}

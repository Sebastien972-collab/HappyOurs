//
//  BubblesView.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 03/06/2025.
//

import SwiftUI

struct BubblesView: View {
    let typesOfEvent: [Event.TypeOfEvent] = [
        .club, .concert, .festival, .degustation, .openAir, .classic ]
    
    let columns = [
        GridItem(.adaptive(minimum: 120, maximum: .infinity), spacing: 5)]

    @Binding var currentType: Event.TypeOfEvent
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Type de l'évènement")
                .bold()
                .padding(.bottom)
            LazyVGrid(columns: columns, alignment: .leading, spacing: 10) {
                ForEach(typesOfEvent, id: \.self) { type in
                    TypeOfEventBubble(typeOfEvent: type, currentType: $currentType)
                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
}

#Preview {
    BubblesView(currentType: .constant(.club))
}

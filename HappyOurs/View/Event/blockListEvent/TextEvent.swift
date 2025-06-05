//
//  TextEvent.swift
//  HappyOurs
//
//  Created by Dembo on 05/06/2025.
//

import SwiftUI

struct TextEvent: View {
    var body: some View {
        VStack {
            
            VStack (alignment: .leading) {
                Text("Concert de Jazz")
                    .font(.title3)
                    .bold()
                Text("Mardi 5 juin à 20h30")
                    .font(.callout)
                Text("Salle Pleyel")
                    .font(.callout)
            }
            .frame(maxWidth:.infinity, alignment: .leading)
            .background(Color.yellow)
            .padding(.leading,10)
            HStack {
        
                Text("TextEvent")
            }
        }
    }
}

#Preview {
    TextEvent()
}

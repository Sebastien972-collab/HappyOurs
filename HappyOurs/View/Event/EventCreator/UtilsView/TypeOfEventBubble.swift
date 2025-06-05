//
//  TypeOfEventBubble.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 02/06/2025.
//

import SwiftUI

struct TypeOfEventBubble: View {
    let typeOfEvent: Event.TypeOfEvent
    @Binding var currentType: Event.TypeOfEvent
    var body: some View {
        Button {
            currentType = typeOfEvent
        } label: {
            VStack(alignment: .leading) {
                Text(typeOfEvent.rawValue)
                    .lineLimit(1)
                    .minimumScaleFactor(0.7)
                    .truncationMode(.tail)
                    .foregroundStyle(Color.black)
                    .padding(6)
                    .background {
                        Capsule()
                            .fill(typeOfEvent ==  currentType ? Color.darkYellow200 : Color.newBeige )
                            .overlay {
                                Capsule()
                                    .stroke(Color.darkYellow200, lineWidth: 1)
                                    .frame(maxWidth: .infinity)
                                
                            }
                    }
            }
            
        }
    }
}

#Preview {
    TypeOfEventBubble(typeOfEvent: .club, currentType: .constant(.club))
    
}

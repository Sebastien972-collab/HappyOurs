//
//  ParticopantBubbleList.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 11/06/2025.
//

import SwiftUI

struct ParticopantBubbleList: View {
    let participants: [User]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                if !participants.isEmpty {
                    ForEach(participants) { participant in
                        if let imageName = participant.currentImageName {
                            CircleImage(image: Image(imageName))
                                .frame(width: 40, height: 40)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ParticopantBubbleList(participants: DatabaseParticipants.participantData)
}

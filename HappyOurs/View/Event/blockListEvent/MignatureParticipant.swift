//
//  MignatureParticipant.swift
//  HappyOurs
//
//  Created by Dembo on 05/06/2025.
//

import SwiftUI


struct MignatureParticipant: View {
    var body: some View {
        HStack {
            ZStack {
                ForEach(0..<3, id: \.self) { index in
                    Image(.caroline)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 15, height: 15)
                        .clipShape(Circle())
                        .offset(x: CGFloat(index) * 13)
                }
            }
           .padding(.trailing, 25)
            Text("3 participants")
                .font(.system(size: 10))

            
        }
    }
}

#Preview {
    MignatureParticipant()
}
